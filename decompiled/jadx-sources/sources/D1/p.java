package D1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f851a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o f853d;

    public p(List candidates, boolean z2, boolean z3, o hint) {
        Intrinsics.checkNotNullParameter(candidates, "candidates");
        Intrinsics.checkNotNullParameter(hint, "hint");
        this.f851a = candidates;
        this.b = z2;
        this.f852c = z3;
        this.f853d = hint;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return Intrinsics.areEqual(this.f851a, pVar.f851a) && this.b == pVar.b && this.f852c == pVar.f852c && this.f853d == pVar.f853d;
    }

    public final int hashCode() {
        return this.f853d.hashCode() + E.b.b(E.b.b(this.f851a.hashCode() * 31, 31, this.b), 31, this.f852c);
    }

    public final String toString() {
        return "LaunchScanResult(candidates=" + this.f851a + ", packedKiri=" + this.b + ", packedVxAce=" + this.f852c + ", hint=" + this.f853d + ")";
    }
}
