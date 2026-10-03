package p064y1;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class S0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Fragment f6133a;
    public final Q0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f6134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Class f6135d;

    public S0(Fragment fragment, Q0 classLoader, Class godotLib, Class renderViewClass) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(godotLib, "godotLib");
        Intrinsics.checkNotNullParameter(renderViewClass, "renderViewClass");
        this.f6133a = fragment;
        this.b = classLoader;
        this.f6134c = godotLib;
        this.f6135d = renderViewClass;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof S0)) {
            return false;
        }
        S0 s0 = (S0) obj;
        return Intrinsics.areEqual(this.f6133a, s0.f6133a) && Intrinsics.areEqual(this.b, s0.b) && Intrinsics.areEqual(this.f6134c, s0.f6134c) && Intrinsics.areEqual(this.f6135d, s0.f6135d);
    }

    public final int hashCode() {
        return this.f6135d.hashCode() + ((this.f6134c.hashCode() + ((this.b.hashCode() + (this.f6133a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Session(fragment=" + this.f6133a + ", classLoader=" + this.b + ", godotLib=" + this.f6134c + ", renderViewClass=" + this.f6135d + ")";
    }
}
