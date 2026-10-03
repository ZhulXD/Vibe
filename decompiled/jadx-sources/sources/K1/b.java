package K1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f1226a;
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final I1.i f1227c;

    public b(h hVar, e eVar, List patches, I1.i requestedMode) {
        I1.i actualMode = I1.i.b;
        Intrinsics.checkNotNullParameter(patches, "patches");
        Intrinsics.checkNotNullParameter(actualMode, "actualMode");
        Intrinsics.checkNotNullParameter(requestedMode, "requestedMode");
        this.f1226a = hVar;
        this.b = patches;
        this.f1227c = requestedMode;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(patches, 10));
        Iterator it = patches.iterator();
        while (it.hasNext()) {
            arrayList.add(((f) it.next()).f1229a);
        }
        if (CollectionsKt.distinct(arrayList).size() != this.b.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!Intrinsics.areEqual(this.f1226a, bVar.f1226a) || !Intrinsics.areEqual((Object) null, (Object) null) || !Intrinsics.areEqual(this.b, bVar.b)) {
            return false;
        }
        I1.i iVar = I1.i.b;
        return this.f1227c == bVar.f1227c;
    }

    public final int hashCode() {
        h hVar = this.f1226a;
        return Boolean.hashCode(false) + ((this.f1227c.hashCode() + ((I1.i.b.hashCode() + ((this.b.hashCode() + ((((hVar == null ? 0 : hVar.hashCode()) * 31) + 0) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CompatibilityResolution(profile=" + this.f1226a + ", core=" + ((Object) null) + ", patches=" + this.b + ", actualMode=" + I1.i.b + ", requestedMode=" + this.f1227c + ", activation=false)";
    }
}
