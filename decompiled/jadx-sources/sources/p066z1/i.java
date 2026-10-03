package p066z1;

import E.b;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f6443a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6444c;

    public i(j step, String thread, long j2) {
        Intrinsics.checkNotNullParameter(step, "step");
        Intrinsics.checkNotNullParameter(thread, "thread");
        this.f6443a = step;
        this.b = thread;
        this.f6444c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f6443a == iVar.f6443a && Intrinsics.areEqual(this.b, iVar.b) && this.f6444c == iVar.f6444c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f6444c) + b.d(this.b, this.f6443a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "Mark(step=" + this.f6443a + ", thread=" + this.b + ", atMillis=" + this.f6444c + ")";
    }
}
