package Y0;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f2380a;
    public final float b;

    public b(float f, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f2380a;
            f += ((b) cVar).b;
        }
        this.f2380a = cVar;
        this.b = f;
    }

    @Override // Y0.c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f2380a.a(rectF) + this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2380a.equals(bVar.f2380a) && this.b == bVar.b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2380a, Float.valueOf(this.b)});
    }
}
