package T1;

import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f2219a;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f2220c;

    public j(File file, ArrayList entries, Integer num) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.f2219a = file;
        this.b = entries;
        this.f2220c = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return Intrinsics.areEqual(this.f2219a, jVar.f2219a) && Intrinsics.areEqual(this.b, jVar.b) && Intrinsics.areEqual(this.f2220c, jVar.f2220c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.f2219a.hashCode() * 31)) * 31;
        Integer num = this.f2220c;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "Xp3Index(file=" + this.f2219a + ", entries=" + this.b + ", autoKey=" + this.f2220c + ")";
    }
}
