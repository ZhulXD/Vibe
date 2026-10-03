package M1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f1367a = SetsKt.setOf((Object[]) new String[]{"arm64-v8a", "armeabi-v7a", "x86_64"});
    public static final g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f1368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List f1369d;

    static {
        g gVarA = a(i.b, "renpy-7.8.7", "librenpython7.so", ":renpy7", "renpy7-priv", f.b);
        b = gVarA;
        g gVarA2 = a(i.f1370c, "renpy-8.5.3", "librenpython.so", ":renpy", "renpy8-priv", f.f1359c);
        f1368c = gVarA2;
        List listUnmodifiableList = Collections.unmodifiableList(CollectionsKt.listOf((Object[]) new g[]{gVarA, gVarA2}));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        f1369d = listUnmodifiableList;
    }

    public static g a(i iVar, String str, String str2, String str3, String str4, f fVar) {
        Set set = f1367a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10)), 16));
        for (Object obj : set) {
            linkedHashMap.put(obj, CollectionsKt.listOf(str2));
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((String) it.next()) + "/" + str2);
        }
        return new g(iVar, str, set, linkedHashMap, str3, str4, CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) (fVar == f.b ? CollectionsKt.listOf("private.mp3") : CollectionsKt.emptyList())), fVar);
    }
}
