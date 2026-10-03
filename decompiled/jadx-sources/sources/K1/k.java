package K1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f1246a;
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f1247c;

    public k(k kVar) {
        this.f1246a = kVar.f1246a;
        this.b = kVar.b;
        this.f1247c = kVar.f1247c;
    }

    public static final void a(HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap, String str) {
        if (hashSet.contains(str)) {
            throw new IllegalArgumentException();
        }
        if (hashSet2.contains(str)) {
            return;
        }
        if (!hashSet.add(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        Object obj = linkedHashMap.get(str);
        Intrinsics.checkNotNull(obj);
        Iterator it = ((f) obj).f1235j.iterator();
        while (it.hasNext()) {
            a(hashSet, hashSet2, linkedHashMap, (String) it.next());
        }
        hashSet.remove(str);
        hashSet2.add(str);
    }

    public k(List patches, I1.i requestedMode, ArrayList diagnostics, ArrayList rejectionReasons) {
        I1.i actualMode = I1.i.b;
        Intrinsics.checkNotNullParameter(patches, "patches");
        Intrinsics.checkNotNullParameter(requestedMode, "requestedMode");
        Intrinsics.checkNotNullParameter(actualMode, "actualMode");
        Intrinsics.checkNotNullParameter(diagnostics, "diagnostics");
        Intrinsics.checkNotNullParameter(rejectionReasons, "rejectionReasons");
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(patches));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        this.f1246a = listUnmodifiableList;
        List listUnmodifiableList2 = Collections.unmodifiableList(new ArrayList(diagnostics));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList2, "unmodifiableList(...)");
        this.b = listUnmodifiableList2;
        List listUnmodifiableList3 = Collections.unmodifiableList(new ArrayList(rejectionReasons));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList3, "unmodifiableList(...)");
        this.f1247c = listUnmodifiableList3;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(patches, 10));
        Iterator it = patches.iterator();
        while (it.hasNext()) {
            arrayList.add(((f) it.next()).f1229a);
        }
        if (CollectionsKt.distinct(arrayList).size() == patches.size()) {
            if (rejectionReasons.isEmpty()) {
                return;
            }
            int size = rejectionReasons.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = rejectionReasons.get(i3);
                i3++;
                if (StringsKt.isBlank((String) obj)) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public k(List cores, List profiles, ArrayList patches) {
        Intrinsics.checkNotNullParameter("2000-01-01T00:00:00Z", "generatedAt");
        Intrinsics.checkNotNullParameter(cores, "cores");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(patches, "patches");
        List listC = l.c(cores);
        this.f1246a = listC;
        List listC2 = l.c(profiles);
        this.b = listC2;
        List listC3 = l.c(patches);
        this.f1247c = listC3;
        if (!new Regex("[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z").matches("2000-01-01T00:00:00Z")) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (listC.size() > 256 || listC2.size() > 256 || listC3.size() > 256) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listC, 10));
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            ((e) it.next()).getClass();
            arrayList.add(null);
        }
        if (CollectionsKt.distinct(arrayList).size() != this.f1246a.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        List list = this.b;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((h) it2.next()).f1239a);
        }
        if (CollectionsKt.distinct(arrayList2).size() != this.b.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        List list2 = this.f1247c;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((f) it3.next()).f1229a);
        }
        if (CollectionsKt.distinct(arrayList3).size() == this.f1247c.size()) {
            List list3 = this.b;
            if (list3 == null || !list3.isEmpty()) {
                Iterator it4 = list3.iterator();
                while (it4.hasNext()) {
                    List<String> list4 = ((h) it4.next()).f1241d;
                    if (list4 == null || !list4.isEmpty()) {
                        for (String str : list4) {
                            List list5 = this.f1246a;
                            if (list5 == null || !list5.isEmpty()) {
                                Iterator it5 = list5.iterator();
                                do {
                                    if (it5.hasNext()) {
                                        ((e) it5.next()).getClass();
                                    }
                                } while (!Intrinsics.areEqual((Object) null, str));
                            }
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                }
            }
            List list6 = this.b;
            if (list6 == null || !list6.isEmpty()) {
                Iterator it6 = list6.iterator();
                while (it6.hasNext()) {
                    List<String> list7 = ((h) it6.next()).f1242e;
                    if (list7 == null || !list7.isEmpty()) {
                        for (String str2 : list7) {
                            List list8 = this.f1247c;
                            if (list8 == null || !list8.isEmpty()) {
                                Iterator it7 = list8.iterator();
                                do {
                                    if (it7.hasNext()) {
                                    }
                                } while (!Intrinsics.areEqual(((f) it7.next()).f1229a, str2));
                            }
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                }
            }
            List list9 = this.f1247c;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list9, 10)), 16));
            for (Object obj : list9) {
                linkedHashMap.put(((f) obj).f1229a, obj);
            }
            Iterator it8 = list9.iterator();
            while (it8.hasNext()) {
                Iterator it9 = ((f) it8.next()).f1235j.iterator();
                while (it9.hasNext()) {
                    if (!linkedHashMap.containsKey((String) it9.next())) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                }
            }
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            Iterator it10 = list9.iterator();
            while (it10.hasNext()) {
                a(hashSet, hashSet2, linkedHashMap, ((f) it10.next()).f1229a);
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }
}
