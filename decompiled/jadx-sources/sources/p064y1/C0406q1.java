package p064y1;

import E.b;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.q1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0406q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6330a;
    public final byte[] b;

    public C0406q1(String mimeType, byte[] bytes) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.f6330a = mimeType;
        this.b = bytes;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0406q1)) {
            return false;
        }
        C0406q1 c0406q1 = (C0406q1) obj;
        return Intrinsics.areEqual(this.f6330a, c0406q1.f6330a) && Intrinsics.areEqual(this.b, c0406q1.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (this.f6330a.hashCode() * 31);
    }

    public final String toString() {
        return b.n("InterceptedGameAsset(mimeType=", this.f6330a, ", bytes=", Arrays.toString(this.b), ")");
    }
}
