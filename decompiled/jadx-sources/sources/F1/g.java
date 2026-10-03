package F1;

import android.graphics.RectF;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f983a;
    public final RectF b;

    public g(f key, RectF rect) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.f983a = key;
        this.b = rect;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Intrinsics.areEqual(this.f983a, gVar.f983a) && Intrinsics.areEqual(this.b, gVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f983a.hashCode() * 31);
    }

    public final String toString() {
        return "KeyRect(key=" + this.f983a + ", rect=" + this.b + ")";
    }
}
