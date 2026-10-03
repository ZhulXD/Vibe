package N1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f1492a;

    public u(List errors) {
        Intrinsics.checkNotNullParameter(errors, "errors");
        this.f1492a = errors;
    }

    public final List a() {
        return this.f1492a;
    }

    public final boolean b() {
        return this.f1492a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u) && Intrinsics.areEqual(this.f1492a, ((u) obj).f1492a);
    }

    public final int hashCode() {
        return this.f1492a.hashCode();
    }

    public final String toString() {
        return "OtaValidationResult(errors=" + this.f1492a + ")";
    }
}
