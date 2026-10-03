package C1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.b0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0052b0 extends com.bumptech.glide.d {
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f556c;

    public C0052b0(List items, String str) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.b = items;
        this.f556c = str;
    }

    @Override // com.bumptech.glide.d
    public final List B() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0052b0)) {
            return false;
        }
        C0052b0 c0052b0 = (C0052b0) obj;
        return Intrinsics.areEqual(this.b, c0052b0.b) && Intrinsics.areEqual(this.f556c, c0052b0.f556c);
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        String str = this.f556c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "FromNetwork(items=" + this.b + ", etag=" + this.f556c + ")";
    }
}
