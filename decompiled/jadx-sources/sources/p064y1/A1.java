package p064y1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6031a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6033d;

    public A1(long j2, String str, String str2, boolean z2) {
        this.f6031a = j2;
        this.b = str;
        this.f6032c = str2;
        this.f6033d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A1)) {
            return false;
        }
        A1 a3 = (A1) obj;
        return this.f6031a == a3.f6031a && Intrinsics.areEqual(this.b, a3.b) && Intrinsics.areEqual(this.f6032c, a3.f6032c) && this.f6033d == a3.f6033d;
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.f6031a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f6032c;
        return Boolean.hashCode(this.f6033d) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Failure(startedAt=" + this.f6031a + ", detail=" + this.b + ", scriptVersion=" + this.f6032c + ", stoppedByMinHub=" + this.f6033d + ")";
    }
}
