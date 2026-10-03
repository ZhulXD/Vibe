package org.godotengine.godot.vulkan;

import android.util.Log;
import android.view.Surface;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\b\u0000\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u001f\u001a\u00020 H\u0002J\u000e\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\nJ\u0006\u0010#\u001a\u00020 J\u000e\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020 J\u0006\u0010'\u001a\u00020 J\u0006\u0010(\u001a\u00020 J\u0016\u0010)\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010*\u001a\u00020 J\b\u0010+\u001a\u00020 H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006-"}, d2 = {"Lorg/godotengine/godot/vulkan/VkThread;", "Ljava/lang/Thread;", "vkSurfaceView", "Lorg/godotengine/godot/vulkan/VkSurfaceView;", "vkRenderer", "Lorg/godotengine/godot/vulkan/VkRenderer;", "<init>", "(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V", "eventQueue", "Ljava/util/ArrayList;", "Ljava/lang/Runnable;", "Lkotlin/collections/ArrayList;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "lockCondition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "shouldExit", "", "exited", "rendererInitialized", "rendererResumed", "resumed", "surfaceChanged", "hasSurface", GodotService.KEY_WIDTH, "", GodotService.KEY_HEIGHT, "readyToDraw", "getReadyToDraw", "()Z", "threadExiting", "", "queueEvent", NotificationCompat.CATEGORY_EVENT, "requestExitAndWait", "timeInMs", "", "onResume", "onPause", "onSurfaceCreated", "onSurfaceChanged", "onSurfaceDestroyed", "run", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VkThread extends Thread {
    private static final String TAG = "VkThread";
    private final ArrayList<Runnable> eventQueue;
    private boolean exited;
    private boolean hasSurface;
    private int height;
    private final ReentrantLock lock;
    private final Condition lockCondition;
    private boolean rendererInitialized;
    private boolean rendererResumed;
    private boolean resumed;
    private boolean shouldExit;
    private boolean surfaceChanged;
    private final VkRenderer vkRenderer;
    private final VkSurfaceView vkSurfaceView;
    private int width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VkThread(VkSurfaceView vkSurfaceView, VkRenderer vkRenderer) {
        super(TAG);
        Intrinsics.checkNotNullParameter(vkSurfaceView, "vkSurfaceView");
        Intrinsics.checkNotNullParameter(vkRenderer, "vkRenderer");
        this.vkSurfaceView = vkSurfaceView;
        this.vkRenderer = vkRenderer;
        this.eventQueue = new ArrayList<>();
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.lockCondition = reentrantLock.newCondition();
    }

    private final boolean getReadyToDraw() {
        return this.hasSurface && this.resumed;
    }

    private final void threadExiting() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Log.d(TAG, "Exiting render thread");
            this.vkRenderer.onRenderThreadExiting();
            this.exited = true;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void onPause() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.resumed = false;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void onResume() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.resumed = true;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void onSurfaceChanged(int width, int height) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.hasSurface = true;
            this.surfaceChanged = true;
            this.width = width;
            this.height = height;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void onSurfaceDestroyed() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.hasSurface = false;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void queueEvent(Runnable event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.eventQueue.add(event);
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void requestExitAndWait() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.shouldExit = true;
            this.lockCondition.signalAll();
            while (!this.exited) {
                try {
                    Log.i(TAG, "Waiting on exit for " + getName());
                    this.lockCondition.await();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [T, java.lang.Object] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    try {
                        Ref.ObjectRef objectRef = new Ref.ObjectRef();
                        ReentrantLock reentrantLock = this.lock;
                        reentrantLock.lock();
                        while (true) {
                            try {
                                if (this.shouldExit) {
                                    reentrantLock.unlock();
                                    threadExiting();
                                    return;
                                }
                                if (!this.eventQueue.isEmpty()) {
                                    objectRef.element = this.eventQueue.remove(0);
                                    break;
                                }
                                if (getReadyToDraw()) {
                                    if (!this.rendererResumed) {
                                        this.rendererResumed = true;
                                        this.vkRenderer.onVkResume();
                                        if (!this.rendererInitialized) {
                                            this.rendererInitialized = true;
                                            VkRenderer vkRenderer = this.vkRenderer;
                                            Surface surface = this.vkSurfaceView.getHolder().getSurface();
                                            Intrinsics.checkNotNullExpressionValue(surface, "getSurface(...)");
                                            vkRenderer.onVkSurfaceCreated(surface);
                                        }
                                    }
                                    if (!this.surfaceChanged) {
                                        break;
                                    }
                                    VkRenderer vkRenderer2 = this.vkRenderer;
                                    Surface surface2 = this.vkSurfaceView.getHolder().getSurface();
                                    Intrinsics.checkNotNullExpressionValue(surface2, "getSurface(...)");
                                    vkRenderer2.onVkSurfaceChanged(surface2, this.width, this.height);
                                    this.surfaceChanged = false;
                                    break;
                                }
                                if (this.rendererResumed) {
                                    this.rendererResumed = false;
                                    this.vkRenderer.onVkPause();
                                }
                                this.lockCondition.await();
                            } catch (Throwable th) {
                                reentrantLock.unlock();
                                throw th;
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                        reentrantLock.unlock();
                        T t2 = objectRef.element;
                        if (t2 != 0) {
                            Runnable runnable = (Runnable) t2;
                            if (runnable != null) {
                                runnable.run();
                            }
                        } else {
                            this.vkRenderer.onVkDrawFrame();
                        }
                    } catch (IllegalStateException e2) {
                        Log.i(TAG, "IllegalStateException", e2);
                        threadExiting();
                        return;
                    }
                } catch (InterruptedException e3) {
                    Log.i(TAG, "InterruptedException", e3);
                    threadExiting();
                    return;
                }
            } catch (Throwable th2) {
                threadExiting();
                throw th2;
            }
        }
    }

    public final boolean requestExitAndWait(long timeInMs) {
        boolean z2;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.shouldExit = true;
            this.lockCondition.signalAll();
            long nanos = TimeUnit.MILLISECONDS.toNanos(timeInMs);
            while (true) {
                z2 = this.exited;
                if (z2 || nanos <= 0) {
                    break;
                }
                try {
                    Log.i(TAG, "Waiting on exit for " + getName() + " for " + nanos);
                    nanos = this.lockCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            reentrantLock.unlock();
            return z2;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void onSurfaceCreated() {
    }
}
