package G1;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1040a;

    public s(LinkedHashMap typedFlags) {
        Intrinsics.checkNotNullParameter(typedFlags, "typedFlags");
        this.f1040a = typedFlags;
    }

    public final LinkedHashMap a() {
        Set<Map.Entry> setEntrySet = this.f1040a.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : setEntrySet) {
            p pVar = (p) entry.getKey();
            Boolean bool = (Boolean) entry.getValue();
            bool.getClass();
            Pair pair = TuplesKt.to(pVar.b, bool);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    public final boolean b(p id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Boolean bool = (Boolean) this.f1040a.get(id);
        if (bool != null) {
            return bool.booleanValue();
        }
        List list = q.f1036a;
        Intrinsics.checkNotNullParameter(id, "id");
        return ((n) MapsKt__MapsKt.getValue(q.b, id)).f1016e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s) && Intrinsics.areEqual(this.f1040a, ((s) obj).f1040a);
    }

    public final int hashCode() {
        return this.f1040a.hashCode();
    }

    public final String toString() {
        return "RuntimeUtilitySnapshot(typedFlags=" + this.f1040a + ")";
    }
}
