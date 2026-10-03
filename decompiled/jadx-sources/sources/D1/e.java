package D1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f813a;
    public final boolean b;

    public e(j session, boolean z2) {
        Intrinsics.checkNotNullParameter(session, "session");
        this.f813a = session;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.areEqual(this.f813a, eVar.f813a) && this.b == eVar.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.f813a.hashCode() * 31);
    }

    public final String toString() {
        return "Attachment(session=" + this.f813a + ", startedByUs=" + this.b + ")";
    }
}
