package D1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f818a;
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f821e;
    public final boolean f;

    public h(g phase, List steps, int i3, String status, Integer num, boolean z2) {
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(steps, "steps");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f818a = phase;
        this.b = steps;
        this.f819c = i3;
        this.f820d = status;
        this.f821e = num;
        this.f = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f818a == hVar.f818a && Intrinsics.areEqual(this.b, hVar.b) && this.f819c == hVar.f819c && Intrinsics.areEqual(this.f820d, hVar.f820d) && Intrinsics.areEqual(this.f821e, hVar.f821e) && this.f == hVar.f;
    }

    public final int hashCode() {
        int iD = E.b.d(this.f820d, E.b.a(this.f819c, (this.b.hashCode() + (this.f818a.hashCode() * 31)) * 31, 31), 31);
        Integer num = this.f821e;
        return Boolean.hashCode(this.f) + ((iD + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        return "Snapshot(phase=" + this.f818a + ", steps=" + this.b + ", progress=" + this.f819c + ", status=" + this.f820d + ", gameId=" + this.f821e + ", cancelled=" + this.f + ")";
    }
}
