package B0;

import android.animation.TimeInterpolator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f295a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TimeInterpolator f296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f298e;

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f296c;
        return timeInterpolator != null ? timeInterpolator : a.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f295a == cVar.f295a && this.b == cVar.b && this.f297d == cVar.f297d && this.f298e == cVar.f298e) {
            return a().getClass().equals(cVar.a().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j2 = this.f295a;
        long j3 = this.b;
        return ((((a().getClass().hashCode() + (((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31)) * 31) + this.f297d) * 31) + this.f298e;
    }

    public final String toString() {
        return "\n" + c.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f295a + " duration: " + this.b + " interpolator: " + a().getClass() + " repeatCount: " + this.f297d + " repeatMode: " + this.f298e + "}\n";
    }
}
