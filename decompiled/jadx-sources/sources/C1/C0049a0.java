package C1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.a0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0049a0 extends com.bumptech.glide.d {
    public final List b;

    public C0049a0(List items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.b = items;
    }

    @Override // com.bumptech.glide.d
    public final List B() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0049a0) && Intrinsics.areEqual(this.b, ((C0049a0) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "FromCache(items=" + this.b + ")";
    }
}
