package C1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f539a;
    public final EnumC0064f0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Y f540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EnumC0055c0 f541d;

    public Z(String query, Y engineFilter, EnumC0055c0 languageFilter, int i3) {
        query = (i3 & 1) != 0 ? "" : query;
        EnumC0064f0 sortMode = EnumC0064f0.b;
        engineFilter = (i3 & 4) != 0 ? Y.ALL : engineFilter;
        languageFilter = (i3 & 8) != 0 ? EnumC0055c0.ALL : languageFilter;
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(sortMode, "sortMode");
        Intrinsics.checkNotNullParameter(engineFilter, "engineFilter");
        Intrinsics.checkNotNullParameter(languageFilter, "languageFilter");
        this.f539a = query;
        this.b = sortMode;
        this.f540c = engineFilter;
        this.f541d = languageFilter;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Z)) {
            return false;
        }
        Z z2 = (Z) obj;
        return Intrinsics.areEqual(this.f539a, z2.f539a) && this.b == z2.b && this.f540c == z2.f540c && this.f541d == z2.f541d;
    }

    public final int hashCode() {
        return this.f541d.hashCode() + ((this.f540c.hashCode() + ((this.b.hashCode() + (this.f539a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CatalogFilterState(query=" + this.f539a + ", sortMode=" + this.b + ", engineFilter=" + this.f540c + ", languageFilter=" + this.f541d + ")";
    }
}
