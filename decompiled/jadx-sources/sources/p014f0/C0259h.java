package p014f0;

import A1.C0013d;
import com.bumptech.glide.e;
import com.bumptech.glide.g;
import com.bumptech.glide.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p009d0.f;
import p009d0.i;
import p009d0.m;
import p025j0.p;
import p025j0.q;
import p044r0.a;
import p049t0.b;
import p049t0.c;
import p063y0.l;

/* JADX INFO: renamed from: f0.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0259h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f4213a = new ArrayList();
    public final ArrayList b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f4214c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f4215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4216e;
    public int f;
    public Class g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public q f4217h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public i f4218i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map f4219j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Class f4220k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4221l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4222m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public f f4223n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public g f4224o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public l f4225p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4226q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4227r;

    public final ArrayList a() {
        boolean z2 = this.f4222m;
        ArrayList arrayList = this.b;
        if (!z2) {
            this.f4222m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i3 = 0; i3 < size; i3++) {
                p pVar = (p) arrayListB.get(i3);
                f fVar = pVar.f4637a;
                List list = pVar.b;
                if (!arrayList.contains(fVar)) {
                    arrayList.add(pVar.f4637a);
                }
                for (int i4 = 0; i4 < list.size(); i4++) {
                    if (!arrayList.contains(list.get(i4))) {
                        arrayList.add(list.get(i4));
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z2 = this.f4221l;
        ArrayList arrayList = this.f4213a;
        if (!z2) {
            this.f4221l = true;
            arrayList.clear();
            List listF = this.f4214c.a().f(this.f4215d);
            int size = listF.size();
            for (int i3 = 0; i3 < size; i3++) {
                p pVarA = ((q) listF.get(i3)).a(this.f4215d, this.f4216e, this.f, this.f4218i);
                if (pVarA != null) {
                    arrayList.add(pVarA);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final D c(Class cls) {
        D d3;
        Class cls2;
        Class cls3;
        Class cls4;
        D d4;
        ArrayList arrayList;
        ArrayList arrayList2;
        a aVar;
        Class cls5 = cls;
        com.bumptech.glide.i iVarA = this.f4214c.a();
        Class cls6 = this.g;
        Class cls7 = this.f4220k;
        b bVar = iVarA.f3223i;
        l lVar = (l) bVar.b.getAndSet(null);
        if (lVar == null) {
            lVar = new l();
        }
        lVar.f6023a = cls5;
        lVar.b = cls6;
        lVar.f6024c = cls7;
        synchronized (bVar.f5320a) {
            d3 = (D) bVar.f5320a.get(lVar);
        }
        bVar.b.set(lVar);
        iVarA.f3223i.getClass();
        if (b.f5319c.equals(d3)) {
            return null;
        }
        if (d3 != null) {
            return d3;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayListO = iVarA.f3219c.o(cls5, cls6);
        int size = arrayListO.size();
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 1;
            Class<?> cls8 = (Class) arrayListO.get(i3);
            ArrayList arrayListB = iVarA.f.b(cls8, cls7);
            int size2 = arrayListB.size();
            int i5 = 0;
            while (i5 < size2) {
                int i6 = i5 + 1;
                Class cls9 = (Class) arrayListB.get(i5);
                C0013d c0013d = iVarA.f3219c;
                synchronized (c0013d) {
                    arrayList = new ArrayList();
                    ArrayList arrayList4 = (ArrayList) c0013d.f177c;
                    int size3 = arrayList4.size();
                    int i7 = 0;
                    while (i7 < size3) {
                        Object obj = arrayList4.get(i7);
                        int i8 = i7 + 1;
                        String str = (String) obj;
                        ArrayList arrayList5 = arrayListB;
                        List list = (List) ((HashMap) c0013d.f178d).get(str);
                        if (list != null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                c cVar = (c) it.next();
                                Iterator it2 = it;
                                if (cVar.f5321a.isAssignableFrom(cls5) && cls8.isAssignableFrom(cVar.b)) {
                                    arrayList.add(cVar.f5322c);
                                }
                                it = it2;
                            }
                        }
                        arrayListB = arrayList5;
                        i7 = i8;
                    }
                    arrayList2 = arrayListB;
                }
                Y.c cVar2 = iVarA.f;
                synchronized (cVar2) {
                    if (cls9.isAssignableFrom(cls8)) {
                        aVar = p044r0.c.f5296c;
                    } else {
                        ArrayList arrayList6 = cVar2.f2378a;
                        int size4 = arrayList6.size();
                        int i9 = 0;
                        while (true) {
                            if (i9 >= size4) {
                                throw new IllegalArgumentException("No transcoder registered to transcode from " + cls8 + " to " + cls9);
                            }
                            Object obj2 = arrayList6.get(i9);
                            i9++;
                            p044r0.b bVar2 = (p044r0.b) obj2;
                            ArrayList arrayList7 = arrayList6;
                            if (bVar2.f5294a.isAssignableFrom(cls8) && cls9.isAssignableFrom(bVar2.b)) {
                                aVar = bVar2.f5295c;
                                break;
                            }
                            cls5 = cls;
                            arrayList6 = arrayList7;
                        }
                    }
                }
                arrayList3.add(new k(cls5, cls8, cls9, arrayList, aVar, iVarA.f3224j));
                cls5 = cls;
                size2 = size2;
                i5 = i6;
                arrayListB = arrayList2;
            }
            cls5 = cls;
            i3 = i4;
        }
        if (arrayList3.isEmpty()) {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            d4 = null;
        } else {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            d4 = new D(cls2, cls3, cls4, arrayList3, iVarA.f3224j);
        }
        b bVar3 = iVarA.f3223i;
        synchronized (bVar3.f5320a) {
            bVar3.f5320a.put(new l(cls2, cls3, cls4), d4 != null ? d4 : b.f5319c);
        }
        return d4;
    }

    public final p009d0.b d(Object obj) {
        p009d0.b bVar;
        Y.c cVar = this.f4214c.a().b;
        Class<?> cls = obj.getClass();
        synchronized (cVar) {
            ArrayList arrayList = cVar.f2378a;
            int size = arrayList.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    bVar = null;
                    break;
                }
                Object obj2 = arrayList.get(i3);
                i3++;
                p049t0.a aVar = (p049t0.a) obj2;
                if (aVar.f5318a.isAssignableFrom(cls)) {
                    bVar = aVar.b;
                    break;
                }
            }
        }
        if (bVar != null) {
            return bVar;
        }
        throw new h("Failed to find source encoder for data class: " + obj.getClass());
    }

    public final m e(Class cls) {
        m mVar = (m) this.f4219j.get(cls);
        if (mVar == null) {
            for (Map.Entry entry : this.f4219j.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    mVar = (m) entry.getValue();
                    break;
                }
            }
        }
        if (mVar != null) {
            return mVar;
        }
        if (!this.f4219j.isEmpty() || !this.f4226q) {
            return p030l0.c.b;
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }
}
