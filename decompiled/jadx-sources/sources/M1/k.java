package M1;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1381a;
    public final j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f1382c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1383d;

    public k(boolean z2, j failure, List missingLibraries, boolean z3) {
        Intrinsics.checkNotNullParameter(failure, "failure");
        Intrinsics.checkNotNullParameter(missingLibraries, "missingLibraries");
        this.f1381a = z2;
        this.b = failure;
        this.f1382c = missingLibraries;
        this.f1383d = z3;
    }

    public static k a(k kVar, boolean z2, int i3) {
        boolean z3 = (i3 & 1) != 0 ? kVar.f1381a : true;
        j failure = kVar.b;
        List missingLibraries = kVar.f1382c;
        Intrinsics.checkNotNullParameter(failure, "failure");
        Intrinsics.checkNotNullParameter(missingLibraries, "missingLibraries");
        return new k(z3, failure, missingLibraries, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f1381a == kVar.f1381a && this.b == kVar.b && Intrinsics.areEqual(this.f1382c, kVar.f1382c) && this.f1383d == kVar.f1383d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f1383d) + ((this.f1382c.hashCode() + ((this.b.hashCode() + (Boolean.hashCode(this.f1381a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RenPyValidationResult(valid=" + this.f1381a + ", failure=" + this.b + ", missingLibraries=" + this.f1382c + ", verified=" + this.f1383d + ")";
    }

    public /* synthetic */ k(boolean z2, j jVar, boolean z3, int i3) {
        this(z2, (i3 & 2) != 0 ? j.b : jVar, CollectionsKt.emptyList(), (i3 & 8) != 0 ? false : z3);
    }
}
