package p064y1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f6166a;
    public final List b;

    public Z0(List byValue, List byName) {
        Intrinsics.checkNotNullParameter(byValue, "byValue");
        Intrinsics.checkNotNullParameter(byName, "byName");
        this.f6166a = byValue;
        this.b = byName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Z0)) {
            return false;
        }
        Z0 z2 = (Z0) obj;
        return Intrinsics.areEqual(this.f6166a, z2.f6166a) && Intrinsics.areEqual(this.b, z2.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f6166a.hashCode() * 31);
    }

    public final String toString() {
        return "Hits(byValue=" + this.f6166a + ", byName=" + this.b + ")";
    }
}
