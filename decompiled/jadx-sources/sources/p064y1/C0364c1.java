package p064y1;

import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.c1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0364c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f6203a;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f6204c;

    public C0364c1(File dir, ArrayList copied, ArrayList skipped) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(copied, "copied");
        Intrinsics.checkNotNullParameter(skipped, "skipped");
        this.f6203a = dir;
        this.b = copied;
        this.f6204c = skipped;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0364c1)) {
            return false;
        }
        C0364c1 c0364c1 = (C0364c1) obj;
        return Intrinsics.areEqual(this.f6203a, c0364c1.f6203a) && Intrinsics.areEqual(this.b, c0364c1.b) && Intrinsics.areEqual(this.f6204c, c0364c1.f6204c);
    }

    public final int hashCode() {
        return this.f6204c.hashCode() + ((this.b.hashCode() + (this.f6203a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Prepared(dir=" + this.f6203a + ", copied=" + this.b + ", skipped=" + this.f6204c + ")";
    }
}
