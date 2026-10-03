package T1;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2207a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f2210e;

    public c(String fileName, long j2, int i3, long j3, ArrayList segments) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(segments, "segments");
        this.f2207a = fileName;
        this.b = j2;
        this.f2208c = i3;
        this.f2209d = j3;
        this.f2210e = segments;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(this.f2207a, cVar.f2207a) && this.b == cVar.b && this.f2208c == cVar.f2208c && this.f2209d == cVar.f2209d && Intrinsics.areEqual(this.f2210e, cVar.f2210e);
    }

    public final int hashCode() {
        return this.f2210e.hashCode() + E.b.c(this.f2209d, E.b.a(this.f2208c, E.b.c(this.b, this.f2207a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        return "Xp3Entry(fileName=" + this.f2207a + ", originalSize=" + this.b + ", protectFlag=" + this.f2208c + ", adlrHash=" + this.f2209d + ", segments=" + this.f2210e + ")";
    }
}
