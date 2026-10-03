package C1;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f569a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f571d;

    public c2(String name, String description, boolean z2, LinkedHashMap parameters) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.f569a = name;
        this.b = description;
        this.f570c = z2;
        this.f571d = parameters;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c2)) {
            return false;
        }
        c2 c2Var = (c2) obj;
        return Intrinsics.areEqual(this.f569a, c2Var.f569a) && Intrinsics.areEqual(this.b, c2Var.b) && this.f570c == c2Var.f570c && Intrinsics.areEqual(this.f571d, c2Var.f571d);
    }

    public final int hashCode() {
        return this.f571d.hashCode() + E.b.b(E.b.d(this.b, this.f569a.hashCode() * 31, 31), 31, this.f570c);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("PluginManagerRowState(name=", this.f569a, ", description=", this.b, ", enabled=");
        sbJ.append(this.f570c);
        sbJ.append(", parameters=");
        sbJ.append(this.f571d);
        sbJ.append(")");
        return sbJ.toString();
    }
}
