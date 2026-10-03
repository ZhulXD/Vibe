package p064y1;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class H1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f6082a;
    public final ArrayList b;

    public H1(ArrayList parked, ArrayList restored) {
        Intrinsics.checkNotNullParameter(parked, "parked");
        Intrinsics.checkNotNullParameter(restored, "restored");
        this.f6082a = parked;
        this.b = restored;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof H1)) {
            return false;
        }
        H1 h2 = (H1) obj;
        return Intrinsics.areEqual(this.f6082a, h2.f6082a) && Intrinsics.areEqual(this.b, h2.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f6082a.hashCode() * 31);
    }

    public final String toString() {
        return "Report(parked=" + this.f6082a + ", restored=" + this.b + ")";
    }
}
