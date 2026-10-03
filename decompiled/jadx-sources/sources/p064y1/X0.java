package p064y1;

import E.b;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class X0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f6156a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6157c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6158d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6159e;
    public final boolean f;

    public X0(List path, String value, boolean z2, String str, String str2, boolean z3) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f6156a = path;
        this.b = value;
        this.f6157c = z2;
        this.f6158d = str;
        this.f6159e = str2;
        this.f = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X0)) {
            return false;
        }
        X0 x2 = (X0) obj;
        return Intrinsics.areEqual(this.f6156a, x2.f6156a) && Intrinsics.areEqual(this.b, x2.b) && this.f6157c == x2.f6157c && Intrinsics.areEqual(this.f6158d, x2.f6158d) && Intrinsics.areEqual(this.f6159e, x2.f6159e) && this.f == x2.f;
    }

    public final int hashCode() {
        int iB = b.b(b.d(this.b, this.f6156a.hashCode() * 31, 31), 31, this.f6157c);
        String str = this.f6158d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f6159e;
        return Boolean.hashCode(this.f) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Field(path=" + this.f6156a + ", value=" + this.b + ", isBoolean=" + this.f6157c + ", min=" + this.f6158d + ", max=" + this.f6159e + ", isString=" + this.f + ")";
    }
}
