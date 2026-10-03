package B1;

import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f322a;

    public j(LinkedHashSet enabled) {
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        this.f322a = enabled;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && Intrinsics.areEqual(this.f322a, ((j) obj).f322a);
    }

    public final int hashCode() {
        return this.f322a.hashCode();
    }

    public final String toString() {
        return "ButtonLibraryState(enabled=" + this.f322a + ")";
    }
}
