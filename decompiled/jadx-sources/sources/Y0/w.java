package Y0;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f2461a;
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2464e;
    public float f;
    public final ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f2465h = new ArrayList();

    public w() {
        d(0.0f, 0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f3 = this.f2464e;
        if (f3 == f) {
            return;
        }
        float f4 = ((f - f3) + 360.0f) % 360.0f;
        if (f4 > 180.0f) {
            return;
        }
        float f5 = this.f2462c;
        float f6 = this.f2463d;
        s sVar = new s(f5, f6, f5, f6);
        sVar.f = this.f2464e;
        sVar.g = f4;
        this.f2465h.add(new q(sVar));
        this.f2464e = f;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.g;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((u) arrayList.get(i3)).a(matrix, path);
        }
    }

    public final void c(float f, float f3) {
        t tVar = new t();
        tVar.b = f;
        tVar.f2458c = f3;
        this.g.add(tVar);
        r rVar = new r(tVar, this.f2462c, this.f2463d);
        float fB = rVar.b() + 270.0f;
        float fB2 = rVar.b() + 270.0f;
        a(fB);
        this.f2465h.add(rVar);
        this.f2464e = fB2;
        this.f2462c = f;
        this.f2463d = f3;
    }

    public final void d(float f, float f3, float f4, float f5) {
        this.f2461a = f;
        this.b = f3;
        this.f2462c = f;
        this.f2463d = f3;
        this.f2464e = f4;
        this.f = (f4 + f5) % 360.0f;
        this.g.clear();
        this.f2465h.clear();
    }
}
