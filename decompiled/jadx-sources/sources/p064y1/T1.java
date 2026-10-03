package p064y1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class T1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6138a;
    public final boolean b;

    public T1(String str, boolean z2) {
        this.f6138a = str;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof T1)) {
            return false;
        }
        T1 t2 = (T1) obj;
        return Intrinsics.areEqual(this.f6138a, t2.f6138a) && this.b == t2.b;
    }

    public final int hashCode() {
        String str = this.f6138a;
        return Boolean.hashCode(this.b) + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "SplashIconBinding(iconPath=" + this.f6138a + ", usesFallback=" + this.b + ")";
    }
}
