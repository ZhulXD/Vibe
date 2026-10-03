package N1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f1472a;
    public final j b;

    public s(k state, j decision) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(decision, "decision");
        this.f1472a = state;
        this.b = decision;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return Intrinsics.areEqual(this.f1472a, sVar.f1472a) && this.b == sVar.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f1472a.hashCode() * 31);
    }

    public final String toString() {
        return "OtaTransition(state=" + this.f1472a + ", decision=" + this.b + ")";
    }
}
