package G1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f1038a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f1039c;

    public r(o group, int i3, List definitions) {
        Intrinsics.checkNotNullParameter(group, "group");
        Intrinsics.checkNotNullParameter(definitions, "definitions");
        this.f1038a = group;
        this.b = i3;
        this.f1039c = definitions;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f1038a == rVar.f1038a && this.b == rVar.b && Intrinsics.areEqual(this.f1039c, rVar.f1039c);
    }

    public final int hashCode() {
        return this.f1039c.hashCode() + E.b.a(this.b, this.f1038a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "RuntimeUtilitySection(group=" + this.f1038a + ", titleResId=" + this.b + ", definitions=" + this.f1039c + ")";
    }
}
