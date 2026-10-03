package p023i1;

import com.bumptech.glide.manager.q;
import com.google.gson.reflect.TypeToken;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import p028k1.g;
import p031l1.c;
import p031l1.d;
import p031l1.h;
import p031l1.i;
import p031l1.n;
import p031l1.o;
import p031l1.p;
import p031l1.s;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal f4436a;
    public final ConcurrentHashMap b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f4437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f4438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f4439e;
    public final Map f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f4440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f4441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f4442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f4443k;

    /* JADX WARN: Illegal instructions before constructor call */
    public l() {
        g gVar = g.f4969d;
        Map map = Collections.EMPTY_MAP;
        List list = Collections.EMPTY_LIST;
        this(gVar, h.b, map, false, true, true, 1, list, list, list, x.b, x.f4455c, list);
    }

    public static void a(double d3) {
        if (Double.isNaN(d3) || Double.isInfinite(d3)) {
            throw new IllegalArgumentException(d3 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final Object b(String str, TypeToken typeToken) {
        Object objA = null;
        if (str == null) {
            return null;
        }
        a aVar = new a(new StringReader(str));
        boolean z2 = true;
        aVar.f5220c = true;
        try {
            try {
                try {
                    try {
                        try {
                            aVar.v();
                            try {
                                objA = d(typeToken).a(aVar);
                            } catch (EOFException e2) {
                                e = e2;
                                z2 = false;
                                if (!z2) {
                                    throw new p(e);
                                }
                            }
                        } catch (Throwable th) {
                            aVar.f5220c = false;
                            throw th;
                        }
                    } catch (EOFException e3) {
                        e = e3;
                    }
                    aVar.f5220c = false;
                    if (objA != null) {
                        try {
                            if (aVar.v() != 10) {
                                throw new p("JSON document was not fully consumed.");
                            }
                        } catch (p1.c e4) {
                            throw new p(e4);
                        } catch (IOException e5) {
                            throw new p(e5);
                        }
                    }
                    return objA;
                } catch (IOException e6) {
                    throw new p(e6);
                }
            } catch (IllegalStateException e7) {
                throw new p(e7);
            }
        } catch (AssertionError e8) {
            throw new AssertionError("AssertionError (GSON 2.10.1): " + e8.getMessage(), e8);
        }
    }

    public final Object c(String str, Class cls) {
        Object objB = b(str, TypeToken.get(cls));
        if (cls == Integer.TYPE) {
            cls = Integer.class;
        } else if (cls == Float.TYPE) {
            cls = Float.class;
        } else if (cls == Byte.TYPE) {
            cls = Byte.class;
        } else if (cls == Double.TYPE) {
            cls = Double.class;
        } else if (cls == Long.TYPE) {
            cls = Long.class;
        } else if (cls == Character.TYPE) {
            cls = Character.class;
        } else if (cls == Boolean.TYPE) {
            cls = Boolean.class;
        } else if (cls == Short.TYPE) {
            cls = Short.class;
        } else if (cls == Void.TYPE) {
            cls = Void.class;
        }
        return cls.cast(objB);
    }

    public final y d(TypeToken typeToken) {
        boolean z2;
        Objects.requireNonNull(typeToken, "type must not be null");
        ConcurrentHashMap concurrentHashMap = this.b;
        y yVar = (y) concurrentHashMap.get(typeToken);
        if (yVar != null) {
            return yVar;
        }
        ThreadLocal threadLocal = this.f4436a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z2 = true;
        } else {
            y yVar2 = (y) map.get(typeToken);
            if (yVar2 != null) {
                return yVar2;
            }
            z2 = false;
        }
        try {
            k kVar = new k();
            y yVarA = null;
            kVar.f4435a = null;
            map.put(typeToken, kVar);
            Iterator it = this.f4439e.iterator();
            while (it.hasNext()) {
                yVarA = ((z) it.next()).a(this, typeToken);
                if (yVarA != null) {
                    if (kVar.f4435a != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    kVar.f4435a = yVarA;
                    map.put(typeToken, yVarA);
                    break;
                }
            }
            if (z2) {
                threadLocal.remove();
            }
            if (yVarA != null) {
                if (z2) {
                    concurrentHashMap.putAll(map);
                }
                return yVarA;
            }
            throw new IllegalArgumentException("GSON (2.10.1) cannot handle " + typeToken);
        } catch (Throwable th) {
            if (z2) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final b e(Writer writer) {
        b bVar = new b(writer);
        bVar.g = this.f4440h;
        bVar.f = false;
        bVar.f5239i = this.g;
        return bVar;
    }

    public final String f(o oVar) {
        StringWriter stringWriter = new StringWriter();
        try {
            h(oVar, e(stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new p(e2);
        }
    }

    public final String g(Object obj) {
        if (obj == null) {
            return f(q.b);
        }
        Class cls = obj.getClass();
        StringWriter stringWriter = new StringWriter();
        try {
            i(obj, cls, e(stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new p(e2);
        }
    }

    public final void h(o oVar, b bVar) {
        boolean z2 = bVar.f;
        bVar.f = true;
        boolean z3 = bVar.g;
        bVar.g = this.f4440h;
        boolean z4 = bVar.f5239i;
        bVar.f5239i = this.g;
        try {
            try {
                o oVar2 = s.f5076a;
                i.d(oVar, bVar);
                bVar.f = z2;
                bVar.g = z3;
                bVar.f5239i = z4;
            } catch (IOException e2) {
                throw new p(e2);
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e3.getMessage(), e3);
            }
        } catch (Throwable th) {
            bVar.f = z2;
            bVar.g = z3;
            bVar.f5239i = z4;
            throw th;
        }
    }

    public final void i(Object obj, Class cls, b bVar) {
        y yVarD = d(TypeToken.get((Type) cls));
        boolean z2 = bVar.f;
        bVar.f = true;
        boolean z3 = bVar.g;
        bVar.g = this.f4440h;
        boolean z4 = bVar.f5239i;
        bVar.f5239i = this.g;
        try {
            try {
                try {
                    yVarD.b(bVar, obj);
                    bVar.f = z2;
                    bVar.g = z3;
                    bVar.f5239i = z4;
                } catch (IOException e2) {
                    throw new p(e2);
                }
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e3.getMessage(), e3);
            }
        } catch (Throwable th) {
            bVar.f = z2;
            bVar.g = z3;
            bVar.f5239i = z4;
            throw th;
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.g + ",factories:" + this.f4439e + ",instanceCreators:" + this.f4437c + "}";
    }

    public l(g gVar, a aVar, Map map, boolean z2, boolean z3, boolean z4, int i3, List list, List list2, List list3, t tVar, u uVar, List list4) {
        h hVar;
        i iVar;
        h hVar2;
        this.f4436a = new ThreadLocal();
        this.b = new ConcurrentHashMap();
        this.f = map;
        q qVar = new q(map, z4, list4);
        this.f4437c = qVar;
        this.g = z2;
        this.f4440h = z3;
        this.f4441i = list;
        this.f4442j = list2;
        this.f4443k = list4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(s.f5074A);
        if (tVar == x.b) {
            hVar = i.f5050c;
        } else {
            hVar = new h(1, tVar);
        }
        arrayList.add(hVar);
        arrayList.add(gVar);
        arrayList.addAll(list3);
        arrayList.add(s.f5088p);
        arrayList.add(s.g);
        arrayList.add(s.f5078d);
        arrayList.add(s.f5079e);
        arrayList.add(s.f);
        if (i3 == 1) {
            iVar = s.f5083k;
        } else {
            iVar = new i(2);
        }
        arrayList.add(new p(Long.TYPE, Long.class, iVar));
        arrayList.add(new p(Double.TYPE, Double.class, new i(0)));
        arrayList.add(new p(Float.TYPE, Float.class, new i(1)));
        if (uVar == x.f4455c) {
            hVar2 = d.f5043d;
        } else {
            hVar2 = new h(0, new d(uVar));
        }
        arrayList.add(hVar2);
        arrayList.add(s.f5080h);
        arrayList.add(s.f5081i);
        arrayList.add(new o(AtomicLong.class, new j(new j(iVar, 0), 2), 0));
        int i4 = 0;
        arrayList.add(new o(AtomicLongArray.class, new j(new j(iVar, 1), 2), i4));
        arrayList.add(s.f5082j);
        arrayList.add(s.f5084l);
        arrayList.add(s.f5089q);
        arrayList.add(s.f5090r);
        arrayList.add(new o(BigDecimal.class, s.f5085m, i4));
        arrayList.add(new o(BigInteger.class, s.f5086n, i4));
        arrayList.add(new o(p028k1.i.class, s.f5087o, i4));
        arrayList.add(s.f5091s);
        arrayList.add(s.f5092t);
        arrayList.add(s.f5094v);
        arrayList.add(s.f5095w);
        arrayList.add(s.f5097y);
        arrayList.add(s.f5093u);
        arrayList.add(s.b);
        arrayList.add(d.f5042c);
        arrayList.add(s.f5096x);
        if (p039o1.c.f5164a) {
            arrayList.add(p039o1.c.f5167e);
            arrayList.add(p039o1.c.f5166d);
            arrayList.add(p039o1.c.f);
        }
        arrayList.add(p031l1.b.f5038d);
        arrayList.add(s.f5076a);
        arrayList.add(new c(qVar, 0));
        arrayList.add(new c(qVar, 2));
        c cVar = new c(qVar, 1);
        this.f4438d = cVar;
        arrayList.add(cVar);
        arrayList.add(s.f5075B);
        arrayList.add(new n(qVar, aVar, gVar, cVar, list4));
        this.f4439e = Collections.unmodifiableList(arrayList);
    }
}
