package F;

import A1.C0009b;
import A1.C0021h;
import A1.u0;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.biometrics.BiometricManager;
import android.location.LocationManager;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.Editable;
import android.text.Selection;
import android.util.Log;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.biometric.G;
import androidx.biometric.q;
import androidx.biometric.r;
import androidx.core.graphics.PaintCompat;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import androidx.core.view.MotionEventCompat;
import androidx.emoji2.text.n;
import androidx.emoji2.text.o;
import androidx.emoji2.text.s;
import androidx.emoji2.text.v;
import androidx.emoji2.text.w;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.FileInputStream;
import java.lang.ref.ReferenceQueue;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.Intrinsics;
import p009d0.i;
import p011e.C0244f;
import p011e.J;
import p014f0.C0253b;
import p014f0.F;
import p014f0.ThreadFactoryC0252a;
import p014f0.z;
import p033m0.C0354d;
import p033m0.x;
import p063y0.k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements p044r0.a {
    public static b f;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f945e;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3, int i3) {
        this.b = i3;
        this.f943c = obj;
        this.f944d = obj2;
        this.f945e = obj3;
    }

    public static boolean g(Editable editable, KeyEvent keyEvent, boolean z2) {
        w[] wVarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (wVarArr = (w[]) editable.getSpans(selectionStart, selectionEnd, w.class)) != null && wVarArr.length > 0) {
                for (w wVar : wVarArr) {
                    int spanStart = editable.getSpanStart(wVar);
                    int spanEnd = editable.getSpanEnd(wVar);
                    if ((z2 && spanStart == selectionStart) || ((!z2 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // p044r0.a
    public F a(F f3, i iVar) {
        Drawable drawable = (Drawable) f3.get();
        if (drawable instanceof BitmapDrawable) {
            return ((C0244f) this.f944d).a(C0354d.b(((BitmapDrawable) drawable).getBitmap(), (p016g0.b) this.f943c), iVar);
        }
        if (drawable instanceof p042q0.b) {
            return ((p044r0.c) this.f945e).a(f3, iVar);
        }
        return null;
    }

    public synchronized void b(p009d0.f fVar, z zVar) {
        C0253b c0253b = (C0253b) ((HashMap) this.f943c).put(fVar, new C0253b(fVar, zVar, (ReferenceQueue) this.f944d));
        if (c0253b != null) {
            c0253b.f4205c = null;
            c0253b.clear();
        }
    }

    public int c() {
        C0021h c0021h = (C0021h) this.f943c;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30) {
            BiometricManager biometricManager = (BiometricManager) this.f944d;
            if (biometricManager != null) {
                return r.a(biometricManager, 255);
            }
            Log.e("BiometricManager", "Failure in canAuthenticate(). BiometricManager was null.");
            return 1;
        }
        if (!p000a.a.t(255)) {
            return -2;
        }
        Context context = c0021h.f192c;
        if (androidx.biometric.F.a(context) == null) {
            return 12;
        }
        if (p000a.a.s(255)) {
            KeyguardManager keyguardManagerA = androidx.biometric.F.a(context);
            return keyguardManagerA == null ? false : androidx.biometric.F.b(keyguardManagerA) ? 0 : 11;
        }
        if (i3 == 29) {
            BiometricManager biometricManager2 = (BiometricManager) this.f944d;
            if (biometricManager2 != null) {
                return q.a(biometricManager2);
            }
            Log.e("BiometricManager", "Failure in canAuthenticate(). BiometricManager was null.");
            return 1;
        }
        if (i3 != 28) {
            return d();
        }
        if (!((context == null || context.getPackageManager() == null || !G.a(context.getPackageManager())) ? false : true)) {
            return 12;
        }
        KeyguardManager keyguardManagerA2 = androidx.biometric.F.a(c0021h.f192c);
        if (keyguardManagerA2 == null ? false : androidx.biometric.F.b(keyguardManagerA2)) {
            return d() == 0 ? 0 : -1;
        }
        return d();
    }

    public int d() {
        FingerprintManagerCompat fingerprintManagerCompat = (FingerprintManagerCompat) this.f945e;
        if (fingerprintManagerCompat == null) {
            Log.e("BiometricManager", "Failure in canAuthenticate(). FingerprintManager was null.");
            return 1;
        }
        if (fingerprintManagerCompat.isHardwareDetected()) {
            return !fingerprintManagerCompat.hasEnrolledFingerprints() ? 11 : 0;
        }
        return 12;
    }

    public void e(C0253b c0253b) {
        F f3;
        synchronized (this) {
            ((HashMap) this.f943c).remove(c0253b.f4204a);
            if (c0253b.b && (f3 = c0253b.f4205c) != null) {
                ((p014f0.r) this.f945e).e(c0253b.f4204a, new z(f3, true, false, c0253b.f4204a, (p014f0.r) this.f945e));
            }
        }
    }

    public Bitmap f(BitmapFactory.Options options) {
        switch (this.b) {
            case 10:
                return BitmapFactory.decodeStream(new p063y0.a(p063y0.b.c((ByteBuffer) this.f943c)), null, options);
            case MotionEventCompat.AXIS_Z /* 11 */:
                x xVar = (x) ((com.bumptech.glide.load.data.i) this.f943c).f3247c;
                xVar.reset();
                return BitmapFactory.decodeStream(xVar, null, options);
            default:
                return BitmapFactory.decodeFileDescriptor(((com.bumptech.glide.load.data.i) this.f945e).e().getFileDescriptor(), null, options);
        }
    }

    public ImageHeaderParser$ImageType h() throws Throwable {
        switch (this.b) {
            case 10:
                return p000a.a.n((List) this.f944d, p063y0.b.c((ByteBuffer) this.f943c));
            case MotionEventCompat.AXIS_Z /* 11 */:
                List list = (List) this.f945e;
                x xVar = (x) ((com.bumptech.glide.load.data.i) this.f943c).f3247c;
                xVar.reset();
                return p000a.a.m(list, xVar, (p016g0.g) this.f944d);
            default:
                List list2 = (List) this.f944d;
                com.bumptech.glide.load.data.i iVar = (com.bumptech.glide.load.data.i) this.f945e;
                p016g0.g gVar = (p016g0.g) this.f943c;
                int size = list2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    p009d0.e eVar = (p009d0.e) list2.get(i3);
                    x xVar2 = null;
                    try {
                        x xVar3 = new x(new FileInputStream(iVar.e().getFileDescriptor()), gVar);
                        try {
                            ImageHeaderParser$ImageType imageHeaderParser$ImageTypeD = eVar.d(xVar3);
                            xVar3.b();
                            iVar.e();
                            if (imageHeaderParser$ImageTypeD != ImageHeaderParser$ImageType.UNKNOWN) {
                                return imageHeaderParser$ImageTypeD;
                            }
                        } catch (Throwable th) {
                            th = th;
                            xVar2 = xVar3;
                            if (xVar2 != null) {
                                xVar2.b();
                            }
                            iVar.e();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public boolean i(CharSequence charSequence, int i3, int i4, v vVar) {
        if ((vVar.f2900c & 3) == 0) {
            androidx.emoji2.text.g gVar = (androidx.emoji2.text.g) this.f945e;
            G.a aVarB = vVar.b();
            int iA = aVarB.a(8);
            if (iA != 0) {
                aVarB.b.getShort(iA + aVarB.f984a);
            }
            androidx.emoji2.text.d dVar = (androidx.emoji2.text.d) gVar;
            dVar.getClass();
            ThreadLocal threadLocal = androidx.emoji2.text.d.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i3 < i4) {
                sb.append(charSequence.charAt(i3));
                i3++;
            }
            boolean zHasGlyph = PaintCompat.hasGlyph(dVar.f2871a, sb.toString());
            int i5 = vVar.f2900c & 4;
            vVar.f2900c = zHasGlyph ? i5 | 2 : i5 | 1;
        }
        return (vVar.f2900c & 3) == 2;
    }

    public boolean j(p059x.f fVar, p053v.d dVar, boolean z2) {
        p056w.b bVar = (p056w.b) this.f944d;
        int[] iArr = dVar.f5474c0;
        int[] iArr2 = dVar.f5481l;
        bVar.f5576a = iArr[0];
        bVar.b = iArr[1];
        bVar.f5577c = dVar.l();
        bVar.f5578d = dVar.i();
        bVar.f5581i = false;
        bVar.f5582j = z2;
        boolean z3 = bVar.f5576a == 3;
        boolean z4 = bVar.b == 3;
        boolean z5 = z3 && dVar.f5456L > 0.0f;
        boolean z6 = z4 && dVar.f5456L > 0.0f;
        if (z5 && iArr2[0] == 4) {
            bVar.f5576a = 1;
        }
        if (z6 && iArr2[1] == 4) {
            bVar.b = 1;
        }
        fVar.a(dVar, bVar);
        dVar.y(bVar.f5579e);
        dVar.v(bVar.f);
        dVar.f5492w = bVar.f5580h;
        int i3 = bVar.g;
        dVar.f5460P = i3;
        dVar.f5492w = i3 > 0;
        bVar.f5582j = false;
        return bVar.f5581i;
    }

    public Object k(CharSequence charSequence, int i3, int i4, int i5, boolean z2, n nVar) {
        int i6;
        char c3;
        o oVar = new o((s) ((N1.w) this.f944d).f1494c);
        int iCodePointAt = Character.codePointAt(charSequence, i3);
        int i7 = 0;
        boolean zA = true;
        int iCharCount = i3;
        loop0: while (true) {
            i6 = iCharCount;
            while (true) {
                if (iCharCount < i4 && i7 < i5 && zA) {
                    SparseArray sparseArray = oVar.f2886c.f2895a;
                    s sVar = sparseArray == null ? null : (s) sparseArray.get(iCodePointAt);
                    if (oVar.f2885a == 2) {
                        if (sVar != null) {
                            oVar.f2886c = sVar;
                            oVar.f++;
                        } else {
                            if (iCodePointAt == 65038) {
                                oVar.a();
                            } else if (iCodePointAt != 65039) {
                                s sVar2 = oVar.f2886c;
                                if (sVar2.b != null) {
                                    if (oVar.f != 1) {
                                        oVar.f2887d = sVar2;
                                        oVar.a();
                                    } else if (oVar.b()) {
                                        oVar.f2887d = oVar.f2886c;
                                        oVar.a();
                                    } else {
                                        oVar.a();
                                    }
                                    c3 = 3;
                                } else {
                                    oVar.a();
                                }
                            }
                            c3 = 1;
                        }
                        c3 = 2;
                    } else if (sVar == null) {
                        oVar.a();
                        c3 = 1;
                    } else {
                        oVar.f2885a = 2;
                        oVar.f2886c = sVar;
                        oVar.f = 1;
                        c3 = 2;
                    }
                    oVar.f2888e = iCodePointAt;
                    if (c3 == 1) {
                        iCharCount = Character.charCount(Character.codePointAt(charSequence, i6)) + i6;
                        if (iCharCount >= i4) {
                            break;
                        }
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        break;
                    }
                    if (c3 == 2) {
                        int iCharCount2 = Character.charCount(iCodePointAt) + iCharCount;
                        if (iCharCount2 < i4) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount2);
                        }
                        iCharCount = iCharCount2;
                    } else if (c3 == 3) {
                        if (!z2 && i(charSequence, i6, iCharCount, oVar.f2887d.b)) {
                            break;
                        }
                        zA = nVar.a(charSequence, i6, iCharCount, oVar.f2887d.b);
                        i7++;
                        break;
                    }
                } else {
                    break loop0;
                }
            }
        }
        if (oVar.f2885a == 2 && oVar.f2886c.b != null && ((oVar.f > 1 || oVar.b()) && i7 < i5 && zA && (z2 || !i(charSequence, i6, iCharCount, oVar.f2886c.b)))) {
            nVar.a(charSequence, i6, iCharCount, oVar.f2886c.b);
        }
        return nVar.getResult();
    }

    public void l(p053v.e eVar, int i3, int i4) {
        int i5 = eVar.f5461Q;
        int i6 = eVar.f5462R;
        eVar.f5461Q = 0;
        eVar.f5462R = 0;
        eVar.y(i3);
        eVar.v(i4);
        if (i5 < 0) {
            eVar.f5461Q = 0;
        } else {
            eVar.f5461Q = i5;
        }
        if (i6 < 0) {
            eVar.f5462R = 0;
        } else {
            eVar.f5462R = i6;
        }
        ((p053v.e) this.f945e).E();
    }

    public b(Context context, WebView webView, List actions) {
        this.b = 14;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.f943c = context;
        this.f944d = webView;
        this.f945e = actions;
    }

    public b(int i3) {
        this.b = i3;
        switch (i3) {
            case 8:
                break;
            default:
                ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC0252a());
                this.f943c = new HashMap();
                this.f944d = new ReferenceQueue();
                executorServiceNewSingleThreadExecutor.execute(new u0(11, this));
                break;
        }
    }

    public b(FrameLayout frameLayout, Button button, Button button2, Button button3) {
        this.b = 17;
        this.f943c = button;
        this.f944d = button2;
        this.f945e = button3;
    }

    public b(S0.b bVar, View view) {
        Object dVar;
        this.b = 1;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 34) {
            dVar = new S0.f();
        } else {
            dVar = i3 >= 33 ? new S0.d() : null;
        }
        this.f943c = dVar;
        this.f944d = bVar;
        this.f945e = view;
    }

    public b(Context context, LocationManager locationManager) {
        this.b = 5;
        this.f945e = new J();
        this.f943c = context;
        this.f944d = locationManager;
    }

    private final void m() {
    }

    private final void n() {
    }

    public b(p053v.e eVar) {
        this.b = 15;
        this.f943c = new ArrayList();
        this.f944d = new p056w.b();
        this.f945e = eVar;
    }

    public b(N1.w wVar, Y0.e eVar, androidx.emoji2.text.d dVar, Set set) {
        this.b = 4;
        this.f943c = eVar;
        this.f944d = wVar;
        this.f945e = dVar;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            k(str, 0, str.length(), 1, true, new a2.w(str, 1));
        }
    }

    public b(k kVar, ArrayList arrayList, p016g0.g gVar) {
        this.b = 11;
        p063y0.f.c(gVar, "Argument must not be null");
        this.f944d = gVar;
        p063y0.f.c(arrayList, "Argument must not be null");
        this.f945e = arrayList;
        this.f943c = new com.bumptech.glide.load.data.i(kVar, gVar);
    }

    public b(C0009b c0009b) {
        this.b = 0;
        this.b = 0;
        this.f943c = c0009b;
        this.f944d = Choreographer.getInstance();
        this.f945e = new a(this);
    }

    public b(ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, p016g0.g gVar) {
        this.b = 12;
        p063y0.f.c(gVar, "Argument must not be null");
        this.f943c = gVar;
        p063y0.f.c(arrayList, "Argument must not be null");
        this.f944d = arrayList;
        this.f945e = new com.bumptech.glide.load.data.i(parcelFileDescriptor);
    }

    public b(C0021h c0021h) {
        this.b = 2;
        Context context = c0021h.f192c;
        this.f943c = c0021h;
        int i3 = Build.VERSION.SDK_INT;
        this.f944d = i3 >= 29 ? q.b(context) : null;
        this.f945e = i3 <= 29 ? FingerprintManagerCompat.from(context) : null;
    }

    public b(p014f0.r rVar, p052u0.f fVar, p014f0.v vVar) {
        this.b = 9;
        this.f945e = rVar;
        this.f944d = fVar;
        this.f943c = vVar;
    }
}
