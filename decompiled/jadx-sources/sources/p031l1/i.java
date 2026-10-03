package p031l1;

import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p023i1.l;
import p023i1.x;
import p023i1.y;
import p028k1.m;
import p051u.h;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f5050c = new h(1, x.b);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f5051a;
    public final x b;

    public i(l lVar, x xVar) {
        this.f5051a = lVar;
        this.b = xVar;
    }

    @Override // p023i1.y
    public final Object a(a aVar) {
        Object arrayList;
        Serializable arrayList2;
        int iV = aVar.v();
        int iA = h.a(iV);
        if (iA == 0) {
            aVar.a();
            arrayList = new ArrayList();
        } else if (iA != 2) {
            arrayList = null;
        } else {
            aVar.b();
            arrayList = new m(true);
        }
        if (arrayList == null) {
            return c(aVar, iV);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.i()) {
                String strP = arrayList instanceof Map ? aVar.p() : null;
                int iV2 = aVar.v();
                int iA2 = h.a(iV2);
                if (iA2 == 0) {
                    aVar.a();
                    arrayList2 = new ArrayList();
                } else if (iA2 != 2) {
                    arrayList2 = null;
                } else {
                    aVar.b();
                    arrayList2 = new m(true);
                }
                boolean z2 = arrayList2 != null;
                if (arrayList2 == null) {
                    arrayList2 = c(aVar, iV2);
                }
                if (arrayList instanceof List) {
                    ((List) arrayList).add(arrayList2);
                } else {
                    ((Map) arrayList).put(strP, arrayList2);
                }
                if (z2) {
                    arrayDeque.addLast(arrayList);
                    arrayList = arrayList2;
                }
            } else {
                if (arrayList instanceof List) {
                    aVar.e();
                } else {
                    aVar.f();
                }
                if (arrayDeque.isEmpty()) {
                    return arrayList;
                }
                arrayList = arrayDeque.removeLast();
            }
        }
    }

    @Override // p023i1.y
    public final void b(b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.i();
            return;
        }
        y yVarD = this.f5051a.d(TypeToken.get((Class) obj.getClass()));
        if (!(yVarD instanceof i)) {
            yVarD.b(bVar, obj);
        } else {
            bVar.c();
            bVar.f();
        }
    }

    public final Serializable c(a aVar, int i3) {
        int iA = h.a(i3);
        if (iA == 5) {
            return aVar.t();
        }
        if (iA == 6) {
            return this.b.a(aVar);
        }
        if (iA == 7) {
            return Boolean.valueOf(aVar.l());
        }
        if (iA != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(kotlin.collections.unsigned.a.q(i3)));
        }
        aVar.r();
        return null;
    }
}
