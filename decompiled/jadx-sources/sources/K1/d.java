package K1;

import A1.C0013d;
import C1.C0115w1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static final int a(g gVar) {
        int iOrdinal = gVar.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        int i3 = 1;
        if (iOrdinal != 1) {
            i3 = 2;
            if (iOrdinal != 2) {
                i3 = 3;
                if (iOrdinal != 3) {
                    if (iOrdinal == 4) {
                        return 4;
                    }
                    throw new NoWhenBranchMatchedException();
                }
            }
        }
        return i3;
    }

    public static boolean b(C0013d c0013d, a aVar) {
        c0013d.getClass();
        List list = (List) c0013d.f178d;
        List list2 = (List) c0013d.f177c;
        if (list2 == null || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (!aVar.f1223c.contains((String) it.next())) {
                    return false;
                }
            }
        }
        return list.isEmpty();
    }

    public static final void c(HashSet hashSet, HashSet hashSet2, C0115w1 c0115w1, ArrayList arrayList, LinkedHashMap linkedHashMap, f fVar) {
        String str = fVar.f1229a;
        if (hashSet.contains(str)) {
            return;
        }
        if (!hashSet2.add(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        List list = fVar.f1235j;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f fVar2 = (f) linkedHashMap.get((String) it.next());
            if (fVar2 != null) {
                arrayList2.add(fVar2);
            }
        }
        Iterator it2 = CollectionsKt.sortedWith(arrayList2, c0115w1).iterator();
        while (it2.hasNext()) {
            c(hashSet, hashSet2, c0115w1, arrayList, linkedHashMap, (f) it2.next());
        }
        hashSet2.remove(str);
        hashSet.add(str);
        arrayList.add(fVar);
    }

    public static b d(k manifest, a input) {
        i iVar = input.f1225e;
        String str = input.f1222a;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        Intrinsics.checkNotNullParameter(input, "input");
        List list = manifest.b;
        List list2 = manifest.f1247c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            h hVar = (h) obj;
            if (Intrinsics.areEqual(hVar.b, str) && b(hVar.f1240c, input)) {
                arrayList.add(obj);
            }
        }
        h hVar2 = (h) CollectionsKt.firstOrNull(CollectionsKt.sortedWith(arrayList, new C0115w1(4, new c(1))));
        List list3 = manifest.f1246a;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            ((e) it.next()).getClass();
            if (Intrinsics.areEqual((Object) null, str)) {
                throw null;
            }
        }
        e eVar = (e) CollectionsKt.firstOrNull(CollectionsKt.sortedWith(arrayList2, new c(2)));
        if (hVar2 != null) {
            List list4 = hVar2.f1242e;
        }
        List listEmptyList = CollectionsKt.emptyList();
        I1.i iVar2 = I1.i.b;
        return new b(hVar2, eVar, listEmptyList, input.f);
    }
}
