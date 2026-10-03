package p064y1;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class J1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f6093a;
    public final boolean b;

    public J1(File file, boolean z2) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.f6093a = file;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof J1)) {
            return false;
        }
        J1 j2 = (J1) obj;
        return Intrinsics.areEqual(this.f6093a, j2.f6093a) && this.b == j2.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.f6093a.hashCode() * 31);
    }

    public final String toString() {
        return "ResolvedGameAsset(file=" + this.f6093a + ", requiresDecryption=" + this.b + ")";
    }
}
