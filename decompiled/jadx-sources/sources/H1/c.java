package H1;

import K1.g;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1095a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g f1097d;

    public c(String descriptorId, String source, int i3, g phase) {
        Intrinsics.checkNotNullParameter(descriptorId, "descriptorId");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(phase, "phase");
        this.f1095a = descriptorId;
        this.b = source;
        this.f1096c = i3;
        this.f1097d = phase;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(this.f1095a, cVar.f1095a) && Intrinsics.areEqual(this.b, cVar.b) && this.f1096c == cVar.f1096c && this.f1097d == cVar.f1097d;
    }

    public final int hashCode() {
        return this.f1097d.hashCode() + E.b.a(this.f1096c, E.b.d(this.b, this.f1095a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("DryRunSourceMapping(descriptorId=", this.f1095a, ", source=", this.b, ", line=");
        sbJ.append(this.f1096c);
        sbJ.append(", phase=");
        sbJ.append(this.f1097d);
        sbJ.append(")");
        return sbJ.toString();
    }
}
