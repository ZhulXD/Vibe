package B1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f302a;
    public final String b;

    public C(String value, String label) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(label, "label");
        this.f302a = value;
        this.b = label;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c3 = (C) obj;
        return Intrinsics.areEqual(this.f302a, c3.f302a) && Intrinsics.areEqual(this.b, c3.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f302a.hashCode() * 31);
    }

    public final String toString() {
        return E.b.n("PhysicalKeyboardOption(value=", this.f302a, ", label=", this.b, ")");
    }
}
