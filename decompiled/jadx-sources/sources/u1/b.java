package u1;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import p023i1.l;
import p023i1.m;
import p023i1.r;
import p064y1.AbstractC0361b1;
import p064y1.X0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f5424a;

    static {
        m mVar = new m();
        mVar.f4450j = false;
        mVar.g = true;
        f5424a = mVar.a();
    }

    public static ArrayList a(r root) {
        Intrinsics.checkNotNullParameter(root, "dump");
        Regex regex = AbstractC0361b1.f6196a;
        Intrinsics.checkNotNullParameter(root, "root");
        ArrayList arrayList = new ArrayList();
        AbstractC0361b1.c(arrayList, true, root, CollectionsKt.emptyList());
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            List list = ((X0) obj).f6156a;
            if (list.size() >= 2 && (Intrinsics.areEqual(list.get(0), "f") || Intrinsics.areEqual(list.get(0), "sf"))) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }
}
