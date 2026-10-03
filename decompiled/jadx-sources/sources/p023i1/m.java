package p023i1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import p028k1.g;
import p031l1.b;
import p031l1.f;
import p031l1.o;
import p031l1.s;
import p039o1.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f4444a = g.f4969d;
    public final int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f4445c = h.b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f4446d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f4447e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f4448h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4449i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4450j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f4451k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final t f4452l = x.b;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final u f4453m = x.f4455c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinkedList f4454n = new LinkedList();

    public final l a() {
        int i3;
        o oVar;
        o oVar2;
        ArrayList arrayList = this.f4447e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size + 3);
        arrayList3.addAll(arrayList);
        Collections.reverse(arrayList3);
        ArrayList arrayList4 = new ArrayList(arrayList2);
        Collections.reverse(arrayList4);
        arrayList3.addAll(arrayList4);
        boolean z2 = c.f5164a;
        int i4 = this.f4448h;
        if (i4 != 2 && (i3 = this.f4449i) != 2) {
            b bVar = new b(f.b, i4, i3);
            o oVar3 = s.f5076a;
            o oVar4 = new o(Date.class, bVar, 0);
            if (z2) {
                p039o1.b bVar2 = c.f5165c;
                bVar2.getClass();
                oVar = new o(bVar2.f5045a, new b(bVar2, i4, i3), 0);
                p039o1.b bVar3 = c.b;
                bVar3.getClass();
                oVar2 = new o(bVar3.f5045a, new b(bVar3, i4, i3), 0);
            } else {
                oVar = null;
                oVar2 = null;
            }
            arrayList3.add(oVar4);
            if (z2) {
                arrayList3.add(oVar);
                arrayList3.add(oVar2);
            }
        }
        return new l(this.f4444a, this.f4445c, new HashMap(this.f4446d), this.g, this.f4450j, this.f4451k, this.b, new ArrayList(arrayList), new ArrayList(arrayList2), arrayList3, this.f4452l, this.f4453m, new ArrayList(this.f4454n));
    }
}
