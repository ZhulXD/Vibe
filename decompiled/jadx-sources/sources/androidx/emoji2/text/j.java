package androidx.emoji2.text;

import A1.C0013d;
import android.os.Handler;
import android.os.Looper;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f2875j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile j f2876k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f2877a;
    public final p041q.f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f2878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f2879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f f2880e;
    public final i f;
    public final Y0.e g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2881h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d f2882i;

    public j(r rVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f2877a = reentrantReadWriteLock;
        this.f2878c = 3;
        i iVar = (i) rVar.b;
        this.f = iVar;
        int i3 = rVar.f1635a;
        this.f2881h = i3;
        this.f2882i = (d) rVar.f1636c;
        this.f2879d = new Handler(Looper.getMainLooper());
        this.b = new p041q.f(0);
        this.g = new Y0.e(18);
        f fVar = new f(this);
        this.f2880e = fVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i3 == 0) {
            try {
                this.f2878c = 0;
            } catch (Throwable th) {
                this.f2877a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                iVar.a(new e(fVar));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static j a() {
        j jVar;
        synchronized (f2875j) {
            jVar = f2876k;
            Preconditions.checkState(jVar != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return jVar;
    }

    public final int b() {
        this.f2877a.readLock().lock();
        try {
            return this.f2878c;
        } finally {
            this.f2877a.readLock().unlock();
        }
    }

    public final void c() {
        Preconditions.checkState(this.f2881h == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (b() == 1) {
            return;
        }
        this.f2877a.writeLock().lock();
        try {
            if (this.f2878c == 0) {
                this.f2877a.writeLock().unlock();
                return;
            }
            this.f2878c = 0;
            this.f2877a.writeLock().unlock();
            f fVar = this.f2880e;
            j jVar = fVar.f2873a;
            try {
                jVar.f.a(new e(fVar));
            } catch (Throwable th) {
                jVar.d(th);
            }
        } catch (Throwable th2) {
            this.f2877a.writeLock().unlock();
            throw th2;
        }
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f2877a.writeLock().lock();
        try {
            this.f2878c = 2;
            arrayList.addAll(this.b);
            this.b.clear();
            this.f2877a.writeLock().unlock();
            this.f2879d.post(new T0.a(arrayList, this.f2878c, th));
        } catch (Throwable th2) {
            this.f2877a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00b0 A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:30:0x006b, B:33:0x0070, B:35:0x0074, B:37:0x0081, B:44:0x00a0, B:46:0x00aa, B:48:0x00ad, B:50:0x00b0, B:52:0x00c0, B:53:0x00c3), top: B:86:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c0 A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:30:0x006b, B:33:0x0070, B:35:0x0074, B:37:0x0081, B:44:0x00a0, B:46:0x00aa, B:48:0x00ad, B:50:0x00b0, B:52:0x00c0, B:53:0x00c3), top: B:86:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:83:0x0116  */
    /* JADX WARN: Code duplicated, block: B:95:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    public final CharSequence e(CharSequence charSequence, int i3, int i4) throws Throwable {
        Throwable th;
        CharSequence charSequence2;
        int i5;
        int i6;
        w[] wVarArr;
        int spanStart;
        Preconditions.checkState(b() == 1, "Not initialized yet");
        Preconditions.checkArgumentNonnegative(i3, "start cannot be negative");
        Preconditions.checkArgumentNonnegative(i4, "end cannot be negative");
        Preconditions.checkArgumentNonnegative(IntCompanionObject.MAX_VALUE, "maxEmojiCount cannot be negative");
        Preconditions.checkArgument(i3 <= i4, "start should be <= than end");
        y yVar = null;
        if (charSequence == null) {
            return null;
        }
        Preconditions.checkArgument(i3 <= charSequence.length(), "start should be < than charSequence length");
        Preconditions.checkArgument(i4 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i3 == i4) {
            return charSequence;
        }
        F.b bVar = this.f2880e.b;
        bVar.getClass();
        boolean z2 = charSequence instanceof u;
        if (z2) {
            ((u) charSequence).a();
        }
        if (z2) {
            yVar = new y((Spannable) charSequence);
            if (yVar != null) {
                for (w wVar : wVarArr) {
                    spanStart = yVar.f2904c.getSpanStart(wVar);
                    int spanEnd = yVar.f2904c.getSpanEnd(wVar);
                    if (spanStart != i4) {
                        yVar.removeSpan(wVar);
                    }
                    i3 = Math.min(spanStart, i3);
                    i4 = Math.max(spanEnd, i4);
                }
            }
            i5 = i3;
            i6 = i4;
            if (i5 != i6) {
                charSequence2 = charSequence;
                if (!z2) {
                    return charSequence2;
                }
            } else {
                charSequence2 = charSequence;
                if (!z2) {
                    return charSequence2;
                }
            }
            ((u) charSequence2).b();
            return charSequence2;
        }
        try {
            if (charSequence instanceof Spannable) {
                try {
                    yVar = new y((Spannable) charSequence);
                } catch (Throwable th2) {
                    th = th2;
                    charSequence2 = charSequence;
                    th = th;
                    if (!z2) {
                        throw th;
                    }
                    ((u) charSequence2).b();
                    throw th;
                }
            } else if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i3 - 1, i4 + 1, w.class) <= i4) {
                yVar = new y();
                yVar.b = false;
                yVar.f2904c = new SpannableString(charSequence);
            }
            if (yVar != null && (wVarArr = (w[]) yVar.f2904c.getSpans(i3, i4, w.class)) != null && wVarArr.length > 0) {
                while (i < r5) {
                    spanStart = yVar.f2904c.getSpanStart(wVar);
                    int spanEnd2 = yVar.f2904c.getSpanEnd(wVar);
                    if (spanStart != i4) {
                        yVar.removeSpan(wVar);
                    }
                    i3 = Math.min(spanStart, i3);
                    i4 = Math.max(spanEnd2, i4);
                }
            }
            i5 = i3;
            i6 = i4;
            if (i5 != i6 || i5 >= charSequence.length()) {
                charSequence2 = charSequence;
                if (!z2) {
                    return charSequence2;
                }
            } else {
                try {
                    charSequence2 = charSequence;
                    try {
                        y yVar2 = (y) bVar.k(charSequence2, i5, i6, IntCompanionObject.MAX_VALUE, false, new C0013d(11, yVar, (Y0.e) bVar.f943c));
                        if (yVar2 != null) {
                            Spannable spannable = yVar2.f2904c;
                            if (z2) {
                                ((u) charSequence2).b();
                            }
                            return spannable;
                        }
                        if (!z2) {
                            return charSequence2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        th = th;
                        if (!z2) {
                            throw th;
                        }
                        ((u) charSequence2).b();
                        throw th;
                    }
                } catch (Throwable th4) {
                    charSequence2 = charSequence;
                    th = th4;
                }
            }
            ((u) charSequence2).b();
            return charSequence2;
        } catch (Throwable th5) {
            th = th5;
            charSequence2 = charSequence;
        }
        if (!z2) {
            throw th;
        }
        ((u) charSequence2).b();
        throw th;
    }

    public final void f(h hVar) {
        Preconditions.checkNotNull(hVar, "initCallback cannot be null");
        this.f2877a.writeLock().lock();
        try {
            if (this.f2878c == 1 || this.f2878c == 2) {
                this.f2879d.post(new T0.a(Arrays.asList((h) Preconditions.checkNotNull(hVar, "initCallback cannot be null")), this.f2878c, (Throwable) null));
            } else {
                this.b.add(hVar);
            }
        } finally {
            this.f2877a.writeLock().unlock();
        }
    }
}
