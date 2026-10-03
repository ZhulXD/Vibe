package p064y1;

import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class I1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6088a;
    public final LinkedHashSet b;

    public I1(String str, LinkedHashSet parkable) {
        Intrinsics.checkNotNullParameter(parkable, "parkable");
        this.f6088a = str;
        this.b = parkable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I1)) {
            return false;
        }
        I1 i3 = (I1) obj;
        return Intrinsics.areEqual(this.f6088a, i3.f6088a) && Intrinsics.areEqual(this.b, i3.b);
    }

    public final int hashCode() {
        String str = this.f6088a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "State(language=" + this.f6088a + ", parkable=" + this.b + ")";
    }
}
