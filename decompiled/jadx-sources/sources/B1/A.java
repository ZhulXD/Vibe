package B1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f299a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f300c;

    public A(String id, String str, String str2) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.f299a = id;
        this.b = str;
        this.f300c = str2;
    }

    public static A a(A a3, String str, String str2, int i3) {
        String id = a3.f299a;
        if ((i3 & 2) != 0) {
            str = a3.b;
        }
        if ((i3 & 4) != 0) {
            str2 = a3.f300c;
        }
        Intrinsics.checkNotNullParameter(id, "id");
        return new A(id, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A)) {
            return false;
        }
        A a3 = (A) obj;
        return Intrinsics.areEqual(this.f299a, a3.f299a) && Intrinsics.areEqual(this.b, a3.b) && Intrinsics.areEqual(this.f300c, a3.f300c);
    }

    public final int hashCode() {
        int iHashCode = this.f299a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f300c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return kotlin.collections.unsigned.a.i(kotlin.collections.unsigned.a.j("PhysicalGamepadMappingRow(id=", this.f299a, ", keyboardKey=", this.b, ", inputId="), this.f300c, ")");
    }
}
