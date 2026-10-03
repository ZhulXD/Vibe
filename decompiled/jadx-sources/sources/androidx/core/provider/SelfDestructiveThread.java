package androidx.core.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SelfDestructiveThread {
    private static final int MSG_DESTRUCTION = 0;
    private static final int MSG_INVOKE_RUNNABLE = 1;
    private final int mDestructAfterMillisec;
    private Handler mHandler;
    private final int mPriority;
    private HandlerThread mThread;
    private final String mThreadName;
    private final Object mLock = new Object();
    private Handler.Callback mCallback = new Handler.Callback() { // from class: androidx.core.provider.SelfDestructiveThread.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i3 = message.what;
            if (i3 == 0) {
                SelfDestructiveThread.this.onDestruction();
                return true;
            }
            if (i3 != 1) {
                return true;
            }
            SelfDestructiveThread.this.onInvokeRunnable((Runnable) message.obj);
            return true;
        }
    };
    private int mGeneration = 0;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface ReplyCallback<T> {
        void onReply(T t2);
    }

    public SelfDestructiveThread(String str, int i3, int i4) {
        this.mThreadName = str;
        this.mPriority = i3;
        this.mDestructAfterMillisec = i4;
    }

    private void post(Runnable runnable) {
        synchronized (this.mLock) {
            try {
                if (this.mThread == null) {
                    HandlerThread handlerThread = new HandlerThread(this.mThreadName, this.mPriority);
                    this.mThread = handlerThread;
                    handlerThread.start();
                    this.mHandler = new Handler(this.mThread.getLooper(), this.mCallback);
                    this.mGeneration++;
                }
                this.mHandler.removeMessages(0);
                Handler handler = this.mHandler;
                handler.sendMessage(handler.obtainMessage(1, runnable));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getGeneration() {
        int i3;
        synchronized (this.mLock) {
            i3 = this.mGeneration;
        }
        return i3;
    }

    public boolean isRunning() {
        boolean z2;
        synchronized (this.mLock) {
            z2 = this.mThread != null;
        }
        return z2;
    }

    public void onDestruction() {
        synchronized (this.mLock) {
            try {
                if (this.mHandler.hasMessages(1)) {
                    return;
                }
                this.mThread.quit();
                this.mThread = null;
                this.mHandler = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onInvokeRunnable(Runnable runnable) {
        runnable.run();
        synchronized (this.mLock) {
            this.mHandler.removeMessages(0);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(0), this.mDestructAfterMillisec);
        }
    }

    public <T> void postAndReply(final Callable<T> callable, final ReplyCallback<T> replyCallback) {
        final Handler handlerCreate = CalleeHandler.create();
        post(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.2
            @Override // java.lang.Runnable
            public void run() {
                final Object objCall;
                try {
                    objCall = callable.call();
                } catch (Exception unused) {
                    objCall = null;
                }
                handlerCreate.post(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        replyCallback.onReply(objCall);
                    }
                });
            }
        });
    }

    public <T> T postAndWait(final Callable<T> callable, int i3) {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        post(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(callable.call());
                } catch (Exception unused) {
                }
                reentrantLock.lock();
                try {
                    atomicBoolean.set(false);
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        });
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                T t2 = (T) atomicReference.get();
                reentrantLock.unlock();
                return t2;
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i3);
            do {
                try {
                    nanos = conditionNewCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    T t3 = (T) atomicReference.get();
                    reentrantLock.unlock();
                    return t3;
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
