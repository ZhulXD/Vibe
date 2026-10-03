package I1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1179a;

    public f(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f1179a = value;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && Intrinsics.areEqual(this.f1179a, ((f) obj).f1179a);
    }

    public final int hashCode() {
        return this.f1179a.hashCode();
    }

    public final String toString() {
        return E.b.m("JsonNumber(value=", this.f1179a, ")");
    }
}
