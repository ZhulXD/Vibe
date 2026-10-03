package F;

import A1.C0009b;
import S.B;
import S.s;
import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.Choreographer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0009b f954d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f952a = 0.0f;
    public float b = Float.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f953c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f955e = false;
    public float f = Float.MAX_VALUE;
    public float g = -3.4028235E38f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f956h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f958j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f959k = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f957i = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public g f960l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f961m = Float.MAX_VALUE;

    public f(e eVar) {
        this.f954d = new C0009b(eVar);
    }

    public final void a(float f) {
        if (this.f955e) {
            this.f961m = f;
            return;
        }
        if (this.f960l == null) {
            this.f960l = new g(f);
        }
        g gVar = this.f960l;
        double d3 = f;
        gVar.f967i = d3;
        double d4 = (float) d3;
        if (d4 > this.f) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (d4 < this.g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
        double dAbs = Math.abs(this.f957i * 0.75f);
        gVar.f964d = dAbs;
        gVar.f965e = dAbs * 62.5d;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        boolean z2 = this.f955e;
        if (z2 || z2) {
            return;
        }
        this.f955e = true;
        if (!this.f953c) {
            this.b = ((e) this.f954d.b).f951a;
        }
        float f3 = this.b;
        if (f3 > this.f || f3 < this.g) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        ThreadLocal threadLocal = c.f;
        if (threadLocal.get() == null) {
            threadLocal.set(new c());
        }
        c cVar = (c) threadLocal.get();
        ArrayList arrayList = cVar.b;
        if (arrayList.size() == 0) {
            if (cVar.f948d == null) {
                cVar.f948d = new b(cVar.f947c);
            }
            b bVar = cVar.f948d;
            ((Choreographer) bVar.f944d).postFrameCallback((a) bVar.f945e);
        }
        if (arrayList.contains(this)) {
            return;
        }
        arrayList.add(this);
    }

    public final void b(float f) {
        ArrayList arrayList;
        ((e) this.f954d.b).f951a = f;
        int i3 = 0;
        while (true) {
            arrayList = this.f959k;
            if (i3 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i3) != null) {
                s sVar = (s) arrayList.get(i3);
                float f3 = this.b;
                B b = sVar.g;
                long jMax = Math.max(-1L, Math.min(b.f2036y + 1, Math.round(f3)));
                b.F(jMax, sVar.f2003a);
                sVar.f2003a = jMax;
            }
            i3++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }
}
