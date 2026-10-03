package G1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f1013a;
    public final o b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1016e;

    public n(p id, o group, int i3, int i4, boolean z2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(group, "group");
        this.f1013a = id;
        this.b = group;
        this.f1014c = i3;
        this.f1015d = i4;
        this.f1016e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f1013a == nVar.f1013a && this.b == nVar.b && this.f1014c == nVar.f1014c && this.f1015d == nVar.f1015d && this.f1016e == nVar.f1016e;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + E.b.b(E.b.a(this.f1015d, E.b.a(this.f1014c, (this.b.hashCode() + (this.f1013a.hashCode() * 31)) * 31, 31), 31), 31, this.f1016e);
    }

    public final String toString() {
        return "RuntimeUtilityDefinition(id=" + this.f1013a + ", group=" + this.b + ", titleResId=" + this.f1014c + ", descResId=" + this.f1015d + ", defaultEnabled=" + this.f1016e + ", stable=true)";
    }
}
