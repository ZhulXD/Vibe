package S1;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f2056a;
    public final File b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f2057c;

    public b(File rootDir, File indexFile, File file) {
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        Intrinsics.checkNotNullParameter(indexFile, "indexFile");
        this.f2056a = rootDir;
        this.b = indexFile;
        this.f2057c = file;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.f2056a, bVar.f2056a) && Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.f2057c, bVar.f2057c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.f2056a.hashCode() * 31)) * 31;
        File file = this.f2057c;
        return iHashCode + (file == null ? 0 : file.hashCode());
    }

    public final String toString() {
        return "GameEntry(rootDir=" + this.f2056a + ", indexFile=" + this.b + ", configFile=" + this.f2057c + ")";
    }
}
