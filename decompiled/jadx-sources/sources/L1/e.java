package L1;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Comparable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Regex f1287c = new Regex("\\d+");
    public final List b;

    public e(List parts) {
        Intrinsics.checkNotNullParameter(parts, "parts");
        this.b = parts;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(e other) {
        Intrinsics.checkNotNullParameter(other, "other");
        List list = this.b;
        int iMax = Math.max(list.size(), other.b.size());
        int i3 = 0;
        while (i3 < iMax) {
            int iIntValue = ((Number) ((i3 < 0 || i3 >= list.size()) ? 0 : list.get(i3))).intValue();
            List list2 = other.b;
            int iIntValue2 = ((Number) ((i3 < 0 || i3 >= list2.size()) ? 0 : list2.get(i3))).intValue();
            if (iIntValue != iIntValue2) {
                return Intrinsics.compare(iIntValue, iIntValue2);
            }
            i3++;
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && Intrinsics.areEqual(this.b, ((e) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return CollectionsKt.o(this.b, ".", null, null, null, 62);
    }
}
