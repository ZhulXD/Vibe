package B1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f309a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f311d;

    public e(String id, String name, String key, String color) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(color, "color");
        this.f309a = id;
        this.b = name;
        this.f310c = key;
        this.f311d = color;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.areEqual(this.f309a, eVar.f309a) && Intrinsics.areEqual(this.b, eVar.b) && Intrinsics.areEqual(this.f310c, eVar.f310c) && Intrinsics.areEqual(this.f311d, eVar.f311d);
    }

    public final int hashCode() {
        return this.f311d.hashCode() + E.b.d(this.f310c, E.b.d(this.b, this.f309a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("ButtonItem(id=", this.f309a, ", name=", this.b, ", key=");
        sbJ.append(this.f310c);
        sbJ.append(", color=");
        sbJ.append(this.f311d);
        sbJ.append(")");
        return sbJ.toString();
    }
}
