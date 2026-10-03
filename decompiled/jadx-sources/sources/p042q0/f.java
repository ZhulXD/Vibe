package p042q0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.e;
import com.bumptech.glide.k;
import com.bumptech.glide.n;
import java.util.ArrayList;
import p006c0.a;
import p006c0.d;
import p009d0.m;
import p014f0.l;
import p016g0.b;
import p030l0.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f5276a;
    public final Handler b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f5277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final n f5278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f5279e;
    public boolean f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k f5280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f5281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5282j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public d f5283k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Bitmap f5284l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public d f5285m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5286n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5287o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5288p;

    public f(com.bumptech.glide.b bVar, d dVar, int i3, int i4, Bitmap bitmap) {
        b bVar2 = bVar.b;
        e eVar = bVar.f3201d;
        Context baseContext = eVar.getBaseContext();
        p063y0.f.c(baseContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        n nVarC = com.bumptech.glide.b.a(baseContext).f.c(baseContext);
        Context baseContext2 = eVar.getBaseContext();
        p063y0.f.c(baseContext2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        n nVarC2 = com.bumptech.glide.b.a(baseContext2).f.c(baseContext2);
        nVarC2.getClass();
        k kVarS = new k(nVarC2.b, nVarC2, Bitmap.class, nVarC2.f3274c).a(n.f3273l).a(((p052u0.e) ((p052u0.e) ((p052u0.e) new p052u0.e().d(l.b)).q()).m()).h(i3, i4));
        this.f5277c = new ArrayList();
        this.f5278d = nVarC;
        Handler handler = new Handler(Looper.getMainLooper(), new p004b1.d(1, this));
        this.f5279e = bVar2;
        this.b = handler;
        this.f5280h = kVarS;
        this.f5276a = dVar;
        c(c.b, bitmap);
    }

    public final void a() {
        int i3;
        int i4;
        if (!this.f || this.g) {
            return;
        }
        d dVar = this.f5285m;
        if (dVar != null) {
            this.f5285m = null;
            b(dVar);
            return;
        }
        this.g = true;
        d dVar2 = this.f5276a;
        p006c0.b bVar = dVar2.f3135l;
        int i5 = bVar.f3117c;
        if (i5 <= 0 || (i4 = dVar2.f3134k) < 0) {
            i3 = 0;
        } else {
            i3 = (i4 < 0 || i4 >= i5) ? -1 : ((a) bVar.f3119e.get(i4)).f3113i;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i3);
        int i6 = (dVar2.f3134k + 1) % dVar2.f3135l.f3117c;
        dVar2.f3134k = i6;
        this.f5283k = new d(this.b, i6, jUptimeMillis);
        k kVarX = this.f5280h.a((p052u0.e) new p052u0.e().l(new p060x0.b(Double.valueOf(Math.random())))).x(dVar2);
        kVarX.w(this.f5283k, kVarX);
    }

    public final void b(d dVar) {
        this.g = false;
        boolean z2 = this.f5282j;
        Handler handler = this.b;
        if (z2) {
            handler.obtainMessage(2, dVar).sendToTarget();
            return;
        }
        if (!this.f) {
            this.f5285m = dVar;
            return;
        }
        if (dVar.f5275h != null) {
            Bitmap bitmap = this.f5284l;
            if (bitmap != null) {
                this.f5279e.f(bitmap);
                this.f5284l = null;
            }
            d dVar2 = this.f5281i;
            this.f5281i = dVar;
            ArrayList arrayList = this.f5277c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                b bVar = (b) ((e) arrayList.get(size));
                Object callback = bVar.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    bVar.stop();
                    bVar.invalidateSelf();
                } else {
                    bVar.invalidateSelf();
                    f fVar = (f) bVar.b.b;
                    d dVar3 = fVar.f5281i;
                    if ((dVar3 != null ? dVar3.f : -1) == fVar.f5276a.f3135l.f3117c - 1) {
                        bVar.g++;
                    }
                    int i3 = bVar.f5268h;
                    if (i3 != -1 && bVar.g >= i3) {
                        bVar.stop();
                    }
                }
            }
            if (dVar2 != null) {
                handler.obtainMessage(2, dVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(m mVar, Bitmap bitmap) {
        p063y0.f.c(mVar, "Argument must not be null");
        p063y0.f.c(bitmap, "Argument must not be null");
        this.f5284l = bitmap;
        this.f5280h = this.f5280h.a(new p052u0.e().n(mVar, true));
        this.f5286n = p063y0.n.c(bitmap);
        this.f5287o = bitmap.getWidth();
        this.f5288p = bitmap.getHeight();
    }
}
