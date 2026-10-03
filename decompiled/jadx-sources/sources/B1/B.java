package B1;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f301a;
    public final LinkedHashMap b;

    public B(String name, LinkedHashMap mapping) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        this.f301a = name;
        this.b = mapping;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b = (B) obj;
        return Intrinsics.areEqual(this.f301a, b.f301a) && Intrinsics.areEqual(this.b, b.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f301a.hashCode() * 31);
    }

    public final String toString() {
        return "PhysicalGamepadPreset(name=" + this.f301a + ", mapping=" + this.b + ")";
    }
}
