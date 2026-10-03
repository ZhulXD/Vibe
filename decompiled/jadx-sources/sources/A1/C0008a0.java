package A1;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.a0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0008a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f164a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z f165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o0 f166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f167e;
    public final w0 f;

    public C0008a0(int i3, long j2, Z z2, o0 o0Var, List lastAppliedRequestIds, w0 recovery) {
        Intrinsics.checkNotNullParameter(lastAppliedRequestIds, "lastAppliedRequestIds");
        Intrinsics.checkNotNullParameter(recovery, "recovery");
        this.f164a = i3;
        this.b = j2;
        this.f165c = z2;
        this.f166d = o0Var;
        this.f167e = lastAppliedRequestIds;
        this.f = recovery;
    }

    public static C0008a0 a(C0008a0 c0008a0, long j2, Z z2, o0 o0Var, w0 w0Var, int i3) {
        int i4 = (i3 & 1) != 0 ? c0008a0.f164a : 1;
        if ((i3 & 2) != 0) {
            j2 = c0008a0.b;
        }
        long j3 = j2;
        if ((i3 & 4) != 0) {
            z2 = c0008a0.f165c;
        }
        Z z3 = z2;
        if ((i3 & 8) != 0) {
            o0Var = c0008a0.f166d;
        }
        o0 o0Var2 = o0Var;
        List lastAppliedRequestIds = c0008a0.f167e;
        if ((i3 & 32) != 0) {
            w0Var = c0008a0.f;
        }
        w0 recovery = w0Var;
        c0008a0.getClass();
        Intrinsics.checkNotNullParameter(lastAppliedRequestIds, "lastAppliedRequestIds");
        Intrinsics.checkNotNullParameter(recovery, "recovery");
        return new C0008a0(i4, j3, z3, o0Var2, lastAppliedRequestIds, recovery);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0008a0)) {
            return false;
        }
        C0008a0 c0008a0 = (C0008a0) obj;
        return this.f164a == c0008a0.f164a && this.b == c0008a0.b && Intrinsics.areEqual(this.f165c, c0008a0.f165c) && Intrinsics.areEqual(this.f166d, c0008a0.f166d) && Intrinsics.areEqual(this.f167e, c0008a0.f167e) && this.f == c0008a0.f;
    }

    public final int hashCode() {
        int iC = E.b.c(this.b, Integer.hashCode(this.f164a) * 31, 31);
        Z z2 = this.f165c;
        int iHashCode = (iC + (z2 == null ? 0 : z2.hashCode())) * 31;
        o0 o0Var = this.f166d;
        return this.f.hashCode() + ((this.f167e.hashCode() + ((iHashCode + (o0Var != null ? o0Var.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "GameSessionRegistrySnapshot(schemaVersion=" + this.f164a + ", revision=" + this.b + ", activeSession=" + this.f165c + ", pendingLaunch=" + this.f166d + ", lastAppliedRequestIds=" + this.f167e + ", recovery=" + this.f + ")";
    }

    public /* synthetic */ C0008a0(Z z2, int i3) {
        this(1, 0L, (i3 & 4) != 0 ? null : z2, null, CollectionsKt.emptyList(), (i3 & 32) != 0 ? w0.b : w0.f268c);
    }
}
