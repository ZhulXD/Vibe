package N1;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f1465a;
    public final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f1466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1467d;

    public q(r state, f fVar, byte[] bArr, String str, int i3) {
        fVar = (i3 & 2) != 0 ? null : fVar;
        bArr = (i3 & 4) != 0 ? null : bArr;
        str = (i3 & 8) != 0 ? null : str;
        Intrinsics.checkNotNullParameter(state, "state");
        this.f1465a = state;
        this.b = fVar;
        this.f1466c = bArr;
        this.f1467d = str;
    }

    public final byte[] a() {
        return this.f1466c;
    }

    public final String b() {
        return this.f1467d;
    }

    public final r c() {
        return this.f1465a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return Intrinsics.areEqual(this.f1465a, qVar.f1465a) && Intrinsics.areEqual(this.b, qVar.b) && Intrinsics.areEqual(this.f1466c, qVar.f1466c) && Intrinsics.areEqual(this.f1467d, qVar.f1467d);
    }

    public final int hashCode() {
        int iHashCode = this.f1465a.hashCode() * 31;
        f fVar = this.b;
        int iHashCode2 = (iHashCode + (fVar == null ? 0 : fVar.hashCode())) * 31;
        byte[] bArr = this.f1466c;
        int iHashCode3 = (iHashCode2 + (bArr == null ? 0 : Arrays.hashCode(bArr))) * 31;
        String str = this.f1467d;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "OtaStoreReadResult(state=" + this.f1465a + ", artifact=" + this.b + ", bytes=" + Arrays.toString(this.f1466c) + ", error=" + this.f1467d + ")";
    }
}
