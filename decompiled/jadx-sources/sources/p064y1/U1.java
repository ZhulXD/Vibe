package p064y1;

import E.b;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class U1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6141a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final V1 f6143d;

    public U1(boolean z2, boolean z3, boolean z4, V1 scaleMode) {
        Intrinsics.checkNotNullParameter(scaleMode, "scaleMode");
        this.f6141a = z2;
        this.b = z3;
        this.f6142c = z4;
        this.f6143d = scaleMode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof U1)) {
            return false;
        }
        U1 u2 = (U1) obj;
        return this.f6141a == u2.f6141a && this.b == u2.b && this.f6142c == u2.f6142c && this.f6143d == u2.f6143d;
    }

    public final int hashCode() {
        return this.f6143d.hashCode() + b.b(b.b(Boolean.hashCode(this.f6141a) * 31, 31, this.b), 31, this.f6142c);
    }

    public final String toString() {
        return "SplashIconPresentation(preserveExistingInset=" + this.f6141a + ", showsFallbackIcon=" + this.b + ", usesFallbackTint=" + this.f6142c + ", scaleMode=" + this.f6143d + ")";
    }
}
