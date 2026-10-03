package X1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends Y0.e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Throwable f2369d;

    public h(Throwable th) {
        super(15);
        this.f2369d = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return Intrinsics.areEqual(this.f2369d, ((h) obj).f2369d);
        }
        return false;
    }

    public final int hashCode() {
        Throwable th = this.f2369d;
        if (th != null) {
            return th.hashCode();
        }
        return 0;
    }

    @Override // Y0.e
    public final String toString() {
        return "Closed(" + this.f2369d + ')';
    }
}
