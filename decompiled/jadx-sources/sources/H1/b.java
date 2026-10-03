package H1;

import I1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f1091a;
    public final i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f1092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f1093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f1094e;
    public final Map f;
    public final i g;

    public b(List selectedIdsInput, List reasonsInput, ArrayList sourceMappingsInput, LinkedHashMap phasesInput, LinkedHashMap utilityGatesInput, i requestedModeInput) {
        i actualModeInput = i.b;
        Intrinsics.checkNotNullParameter(selectedIdsInput, "selectedIdsInput");
        Intrinsics.checkNotNullParameter(actualModeInput, "actualModeInput");
        Intrinsics.checkNotNullParameter(reasonsInput, "reasonsInput");
        Intrinsics.checkNotNullParameter(sourceMappingsInput, "sourceMappingsInput");
        Intrinsics.checkNotNullParameter(phasesInput, "phasesInput");
        Intrinsics.checkNotNullParameter(utilityGatesInput, "utilityGatesInput");
        Intrinsics.checkNotNullParameter(requestedModeInput, "requestedModeInput");
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(selectedIdsInput));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        this.f1091a = listUnmodifiableList;
        this.b = actualModeInput;
        List listUnmodifiableList2 = Collections.unmodifiableList(new ArrayList(reasonsInput));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList2, "unmodifiableList(...)");
        this.f1092c = listUnmodifiableList2;
        List listUnmodifiableList3 = Collections.unmodifiableList(new ArrayList(sourceMappingsInput));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList3, "unmodifiableList(...)");
        this.f1093d = listUnmodifiableList3;
        Map mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(phasesInput));
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        this.f1094e = mapUnmodifiableMap;
        Map mapUnmodifiableMap2 = Collections.unmodifiableMap(new LinkedHashMap(utilityGatesInput));
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap2, "unmodifiableMap(...)");
        this.f = mapUnmodifiableMap2;
        this.g = requestedModeInput;
        if (CollectionsKt.distinct(listUnmodifiableList).size() != listUnmodifiableList.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.f1091a, bVar.f1091a) && this.b == bVar.b && Intrinsics.areEqual(this.f1092c, bVar.f1092c) && Intrinsics.areEqual(this.f1093d, bVar.f1093d) && Intrinsics.areEqual(this.f1094e, bVar.f1094e) && Intrinsics.areEqual(this.f, bVar.f) && this.g == bVar.g;
    }

    public final int hashCode() {
        return CollectionsKt.listOf(this.f1091a, this.b, Boolean.FALSE, this.f1092c, this.f1093d, this.f1094e, this.f, this.g).hashCode();
    }
}
