package p031l1;

import com.google.android.material.datepicker.c;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.security.AccessController;
import java.util.HashMap;
import java.util.Map;
import p023i1.k;
import p023i1.l;
import p023i1.p;
import p023i1.y;
import p028k1.n;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5046a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f5048d;

    public g(l lVar, y yVar, Type type) {
        this.f5046a = 1;
        this.b = lVar;
        this.f5047c = yVar;
        this.f5048d = type;
    }

    @Override // p023i1.y
    public final Object a(a aVar) throws IOException {
        switch (this.f5046a) {
            case 0:
                y yVar = (y) ((g) this.f5047c).f5047c;
                y yVar2 = (y) ((g) this.b).f5047c;
                int iV = aVar.v();
                if (iV == 9) {
                    aVar.r();
                    return null;
                }
                Map map = (Map) ((n) this.f5048d).n();
                if (iV == 1) {
                    aVar.a();
                    while (aVar.i()) {
                        aVar.a();
                        Object objA = yVar2.a(aVar);
                        if (map.put(objA, yVar.a(aVar)) != null) {
                            throw new p("duplicate key: " + objA);
                        }
                        aVar.e();
                    }
                    aVar.e();
                } else {
                    aVar.b();
                    while (aVar.i()) {
                        c.f3412c.getClass();
                        int iD = aVar.f5224i;
                        if (iD == 0) {
                            iD = aVar.d();
                        }
                        if (iD == 13) {
                            aVar.f5224i = 9;
                        } else if (iD == 12) {
                            aVar.f5224i = 8;
                        } else {
                            if (iD != 14) {
                                throw new IllegalStateException("Expected a name but was " + kotlin.collections.unsigned.a.q(aVar.v()) + aVar.k());
                            }
                            aVar.f5224i = 10;
                        }
                        Object objA2 = yVar2.a(aVar);
                        if (map.put(objA2, yVar.a(aVar)) != null) {
                            throw new p("duplicate key: " + objA2);
                        }
                    }
                    aVar.f();
                }
                return map;
            case 1:
                return ((y) this.f5047c).a(aVar);
            default:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT = aVar.t();
                Enum r2 = (Enum) ((HashMap) this.b).get(strT);
                return r2 == null ? (Enum) ((HashMap) this.f5047c).get(strT) : r2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0062  */
    @Override // p023i1.y
    public final void b(b bVar, Object obj) throws IOException {
        switch (this.f5046a) {
            case 0:
                Map map = (Map) obj;
                g gVar = (g) this.f5047c;
                if (map == null) {
                    bVar.i();
                    return;
                }
                bVar.c();
                for (Map.Entry entry : map.entrySet()) {
                    bVar.g(String.valueOf(entry.getKey()));
                    gVar.b(bVar, entry.getValue());
                }
                bVar.f();
                return;
            case 1:
                y yVar = (y) this.f5047c;
                Type type = (Type) this.f5048d;
                Type type2 = (obj == null || !((type instanceof Class) || (type instanceof TypeVariable))) ? type : obj.getClass();
                if (type2 != type) {
                    y yVarD = ((l) this.b).d(TypeToken.get(type2));
                    if (yVarD instanceof k) {
                        y yVar2 = yVar;
                        while (yVar2 instanceof k) {
                            y yVar3 = ((k) yVar2).f4435a;
                            if (yVar3 == null) {
                                throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
                            }
                            if (yVar3 != yVar2) {
                                yVar2 = yVar3;
                            } else if (yVar2 instanceof k) {
                                yVar = yVarD;
                            }
                        }
                        if (yVar2 instanceof k) {
                            yVar = yVarD;
                        }
                    } else {
                        yVar = yVarD;
                    }
                }
                yVar.b(bVar, obj);
                return;
            default:
                Enum r6 = (Enum) obj;
                bVar.o(r6 == null ? null : (String) ((HashMap) this.f5048d).get(r6));
                return;
        }
    }

    public g(Class cls) {
        this.f5046a = 2;
        this.b = new HashMap();
        this.f5047c = new HashMap();
        this.f5048d = new HashMap();
        try {
            for (Field field : (Field[]) AccessController.doPrivileged(new r(cls))) {
                Enum r4 = (Enum) field.get(null);
                String strName = r4.name();
                String string = r4.toString();
                p026j1.b bVar = (p026j1.b) field.getAnnotation(p026j1.b.class);
                if (bVar != null) {
                    strName = bVar.value();
                    for (String str : bVar.alternate()) {
                        ((HashMap) this.b).put(str, r4);
                    }
                }
                ((HashMap) this.b).put(strName, r4);
                ((HashMap) this.f5047c).put(string, r4);
                ((HashMap) this.f5048d).put(r4, strName);
            }
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        }
    }

    public g(c cVar, l lVar, Type type, y yVar, Type type2, y yVar2, n nVar) {
        this.f5046a = 0;
        this.b = new g(lVar, yVar, type);
        this.f5047c = new g(lVar, yVar2, type2);
        this.f5048d = nVar;
    }
}
