package T1;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f2213a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2214c;

    public e(byte[] bArr, boolean z2, boolean z3) {
        this.f2213a = bArr;
        this.b = z2;
        this.f2214c = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.areEqual(this.f2213a, eVar.f2213a) && this.b == eVar.b && this.f2214c == eVar.f2214c;
    }

    public final int hashCode() {
        byte[] bArr = this.f2213a;
        return Boolean.hashCode(this.f2214c) + E.b.b((bArr == null ? 0 : Arrays.hashCode(bArr)) * 31, 31, this.b);
    }

    public final String toString() {
        return "KeySelection(key=" + Arrays.toString(this.f2213a) + ", speculative=" + this.b + ", confident=" + this.f2214c + ")";
    }
}
