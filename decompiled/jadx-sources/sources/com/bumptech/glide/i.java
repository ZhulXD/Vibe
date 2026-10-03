package com.bumptech.glide;

import A1.C0013d;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p025j0.q;
import p025j0.r;
import p025j0.s;
import p025j0.t;
import p025j0.w;
import p025j0.y;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f3218a;
    public final Y.c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0013d f3219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Y.c f3220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.i f3221e;
    public final Y.c f;
    public final Y.c g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0013d f3222h = new C0013d(21);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p049t0.b f3223i = new p049t0.b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p065z0.d f3224j;

    public i() {
        p065z0.d dVar = new p065z0.d(new Pools.SynchronizedPool(20), new p065z0.a(), new p065z0.b());
        this.f3224j = dVar;
        this.f3218a = new t(dVar);
        this.b = new Y.c(2);
        this.f3219c = new C0013d(22);
        this.f3220d = new Y.c(4);
        this.f3221e = new com.bumptech.glide.load.data.i();
        this.f = new Y.c(1);
        this.g = new Y.c(3);
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        C0013d c0013d = this.f3219c;
        synchronized (c0013d) {
            try {
                ArrayList arrayList2 = new ArrayList((ArrayList) c0013d.f177c);
                ((ArrayList) c0013d.f177c).clear();
                int size = arrayList.size();
                int i3 = 0;
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    ((ArrayList) c0013d.f177c).add((String) obj);
                }
                int size2 = arrayList2.size();
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    String str = (String) obj2;
                    if (!arrayList.contains(str)) {
                        ((ArrayList) c0013d.f177c).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Class cls, p009d0.b bVar) {
        Y.c cVar = this.b;
        synchronized (cVar) {
            cVar.f2378a.add(new p049t0.a(cls, bVar));
        }
    }

    public final void b(Class cls, p009d0.l lVar) {
        Y.c cVar = this.f3220d;
        synchronized (cVar) {
            cVar.f2378a.add(new p049t0.d(cls, lVar));
        }
    }

    public final void c(Class cls, Class cls2, r rVar) {
        t tVar = this.f3218a;
        synchronized (tVar) {
            y yVar = tVar.f4640a;
            synchronized (yVar) {
                try {
                    w wVar = new w(cls, cls2, rVar);
                    ArrayList arrayList = yVar.f4649a;
                    arrayList.add(arrayList.size(), wVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            tVar.b.f3214a.clear();
        }
    }

    public final void d(String str, Class cls, Class cls2, p009d0.k kVar) {
        C0013d c0013d = this.f3219c;
        synchronized (c0013d) {
            c0013d.n(str).add(new p049t0.c(cls, cls2, kVar));
        }
    }

    public final ArrayList e() {
        ArrayList arrayList;
        Y.c cVar = this.g;
        synchronized (cVar) {
            arrayList = cVar.f2378a;
        }
        if (arrayList.isEmpty()) {
            throw new h("Failed to find image header parser.");
        }
        return arrayList;
    }

    public final List f(Object obj) {
        List listUnmodifiableList;
        t tVar = this.f3218a;
        tVar.getClass();
        Class<?> cls = obj.getClass();
        synchronized (tVar) {
            s sVar = (s) tVar.b.f3214a.get(cls);
            listUnmodifiableList = sVar == null ? null : sVar.f4639a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(tVar.f4640a.b(cls));
                if (((s) tVar.b.f3214a.put(cls, new s(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new h("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = listUnmodifiableList.size();
        List arrayList = Collections.EMPTY_LIST;
        boolean z2 = true;
        for (int i3 = 0; i3 < size; i3++) {
            q qVar = (q) listUnmodifiableList.get(i3);
            if (qVar.b(obj)) {
                if (z2) {
                    arrayList = new ArrayList(size - i3);
                    z2 = false;
                }
                arrayList.add(qVar);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        throw new h("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + obj);
    }

    public final com.bumptech.glide.load.data.g g(Object obj) {
        com.bumptech.glide.load.data.g gVarB;
        com.bumptech.glide.load.data.i iVar = this.f3221e;
        synchronized (iVar) {
            try {
                p063y0.f.b(obj);
                com.bumptech.glide.load.data.f fVar = (com.bumptech.glide.load.data.f) ((HashMap) iVar.f3247c).get(obj.getClass());
                if (fVar == null) {
                    for (com.bumptech.glide.load.data.f fVar2 : ((HashMap) iVar.f3247c).values()) {
                        if (fVar2.a().isAssignableFrom(obj.getClass())) {
                            fVar = fVar2;
                            break;
                        }
                    }
                }
                if (fVar == null) {
                    fVar = com.bumptech.glide.load.data.i.f3246d;
                }
                gVarB = fVar.b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVarB;
    }

    public final void h(com.bumptech.glide.load.data.f fVar) {
        com.bumptech.glide.load.data.i iVar = this.f3221e;
        synchronized (iVar) {
            ((HashMap) iVar.f3247c).put(fVar.a(), fVar);
        }
    }

    public final void i(Class cls, Class cls2, p044r0.a aVar) {
        Y.c cVar = this.f;
        synchronized (cVar) {
            cVar.f2378a.add(new p044r0.b(cls, cls2, aVar));
        }
    }
}
