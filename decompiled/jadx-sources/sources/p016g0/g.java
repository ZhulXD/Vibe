package p016g0;

import A1.C0013d;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0013d f4322a = new C0013d(14);
    public final f b = new f(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f4323c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f4324d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4325e;
    public int f;

    public g(int i3) {
        this.f4325e = i3;
    }

    public final void a(int i3, Class cls) {
        NavigableMap navigableMapF = f(cls);
        Integer num = (Integer) navigableMapF.get(Integer.valueOf(i3));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapF.remove(Integer.valueOf(i3));
                return;
            } else {
                navigableMapF.put(Integer.valueOf(i3), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i3 + ", this: " + this);
    }

    public final void b(int i3) {
        while (this.f > i3) {
            Object objD = this.f4322a.D();
            f.b(objD);
            c cVarD = d(objD.getClass());
            this.f -= cVarD.b() * cVarD.a(objD);
            a(cVarD.a(objD), objD.getClass());
            if (Log.isLoggable(cVarD.c(), 2)) {
                Log.v(cVarD.c(), "evicted: " + cVarD.a(objD));
            }
        }
    }

    public final synchronized Object c(int i3, Class cls) {
        e eVar;
        int i4;
        try {
            Integer num = (Integer) f(cls).ceilingKey(Integer.valueOf(i3));
            if (num == null || ((i4 = this.f) != 0 && this.f4325e / i4 < 2 && num.intValue() > i3 * 8)) {
                f fVar = this.b;
                i iVarB = (i) ((ArrayDeque) fVar.b).poll();
                if (iVarB == null) {
                    iVarB = fVar.b();
                }
                eVar = (e) iVarB;
                eVar.b = i3;
                eVar.f4320c = cls;
            } else {
                f fVar2 = this.b;
                int iIntValue = num.intValue();
                i iVarB2 = (i) ((ArrayDeque) fVar2.b).poll();
                if (iVarB2 == null) {
                    iVarB2 = fVar2.b();
                }
                eVar = (e) iVarB2;
                eVar.b = iIntValue;
                eVar.f4320c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return e(eVar, cls);
    }

    public final c d(Class cls) {
        c cVar;
        HashMap map = this.f4324d;
        c cVar2 = (c) map.get(cls);
        if (cVar2 != null) {
            return cVar2;
        }
        if (cls.equals(int[].class)) {
            cVar = new c(1);
        } else {
            if (!cls.equals(byte[].class)) {
                throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
            }
            cVar = new c(0);
        }
        map.put(cls, cVar);
        return cVar;
    }

    public final Object e(e eVar, Class cls) {
        c cVarD = d(cls);
        Object objL = this.f4322a.l(eVar);
        if (objL != null) {
            this.f -= cVarD.b() * cVarD.a(objL);
            a(cVarD.a(objL), cls);
        }
        if (objL != null) {
            return objL;
        }
        if (Log.isLoggable(cVarD.c(), 2)) {
            Log.v(cVarD.c(), "Allocated " + eVar.b + " bytes");
        }
        int i3 = eVar.b;
        switch (cVarD.f4315a) {
            case 0:
                return new byte[i3];
            default:
                return new int[i3];
        }
    }

    public final NavigableMap f(Class cls) {
        HashMap map = this.f4323c;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    public final synchronized void g(Object obj) {
        Class<?> cls = obj.getClass();
        c cVarD = d(cls);
        int iA = cVarD.a(obj);
        int iB = cVarD.b() * iA;
        if (iB <= this.f4325e / 2) {
            f fVar = this.b;
            i iVarB = (i) ((ArrayDeque) fVar.b).poll();
            if (iVarB == null) {
                iVarB = fVar.b();
            }
            e eVar = (e) iVarB;
            eVar.b = iA;
            eVar.f4320c = cls;
            this.f4322a.A(eVar, obj);
            NavigableMap navigableMapF = f(cls);
            Integer num = (Integer) navigableMapF.get(Integer.valueOf(eVar.b));
            Integer numValueOf = Integer.valueOf(eVar.b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapF.put(numValueOf, Integer.valueOf(iIntValue));
            this.f += iB;
            b(this.f4325e);
        }
    }
}
