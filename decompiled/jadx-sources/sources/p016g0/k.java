package p016g0;

import android.graphics.Bitmap;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4334a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bitmap.Config f4335c;

    public k(f fVar) {
        this.f4334a = fVar;
    }

    @Override // p016g0.i
    public final void a() {
        this.f4334a.a(this);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.b == kVar.b && n.b(this.f4335c, kVar.f4335c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i3 = this.b * 31;
        Bitmap.Config config = this.f4335c;
        return i3 + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return l.c(this.b, this.f4335c);
    }
}
