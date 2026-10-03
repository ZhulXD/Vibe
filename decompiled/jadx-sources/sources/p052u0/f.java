package p052u0;

import F.b;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.d;
import com.bumptech.glide.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p009d0.i;
import p011e.o;
import p014f0.B;
import p014f0.F;
import p014f0.l;
import p014f0.r;
import p014f0.v;
import p054v0.e;
import p057w0.a;
import p063y0.c;
import p063y0.n;
import p065z0.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements c, e {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final boolean f5394B = Log.isLoggable("GlideRequest", 2);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f5395A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5396a;
    public final h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f5398d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.e f5399e;
    public final Object f;
    public final Class g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f5400h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5401i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f5402j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final g f5403k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p054v0.f f5404l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f5405m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final a f5406n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final o f5407o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public F f5408p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public b f5409q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f5410r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile r f5411s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Drawable f5412t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Drawable f5413u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Drawable f5414v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f5415w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f5416x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f5417y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final RuntimeException f5418z;

    public f(Context context, com.bumptech.glide.e eVar, Object obj, Object obj2, Class cls, a aVar, int i3, int i4, g gVar, p054v0.f fVar, ArrayList arrayList, d dVar, r rVar, a aVar2) {
        o oVar = p063y0.f.f6018a;
        this.f5396a = f5394B ? String.valueOf(hashCode()) : null;
        this.b = new h();
        this.f5397c = obj;
        this.f5399e = eVar;
        this.f = obj2;
        this.g = cls;
        this.f5400h = aVar;
        this.f5401i = i3;
        this.f5402j = i4;
        this.f5403k = gVar;
        this.f5404l = fVar;
        this.f5405m = arrayList;
        this.f5398d = dVar;
        this.f5411s = rVar;
        this.f5406n = aVar2;
        this.f5407o = oVar;
        this.f5395A = 1;
        if (this.f5418z == null && ((Map) eVar.f3211h.b).containsKey(d.class)) {
            this.f5418z = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // p052u0.c
    public final boolean a() {
        boolean z2;
        synchronized (this.f5397c) {
            z2 = this.f5395A == 4;
        }
        return z2;
    }

    public final void b() {
        if (this.f5417y) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
        this.b.a();
        this.f5404l.d(this);
        b bVar = this.f5409q;
        if (bVar != null) {
            synchronized (((r) bVar.f945e)) {
                ((v) bVar.f943c).h((f) bVar.f944d);
            }
            this.f5409q = null;
        }
    }

    @Override // p052u0.c
    public final boolean c(c cVar) {
        int i3;
        int i4;
        Object obj;
        Class cls;
        a aVar;
        g gVar;
        int size;
        int i5;
        int i6;
        Object obj2;
        Class cls2;
        a aVar2;
        g gVar2;
        int size2;
        boolean zEquals;
        boolean zE;
        if (!(cVar instanceof f)) {
            return false;
        }
        synchronized (this.f5397c) {
            try {
                i3 = this.f5401i;
                i4 = this.f5402j;
                obj = this.f;
                cls = this.g;
                aVar = this.f5400h;
                gVar = this.f5403k;
                List list = this.f5405m;
                size = list != null ? list.size() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        f fVar = (f) cVar;
        synchronized (fVar.f5397c) {
            try {
                i5 = fVar.f5401i;
                i6 = fVar.f5402j;
                obj2 = fVar.f;
                cls2 = fVar.g;
                aVar2 = fVar.f5400h;
                gVar2 = fVar.f5403k;
                List list2 = fVar.f5405m;
                size2 = list2 != null ? list2.size() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i3 == i5 && i4 == i6) {
            char[] cArr = n.f6026a;
            if (obj == null) {
                zEquals = obj2 == null;
            } else {
                zEquals = obj.equals(obj2);
            }
            if (zEquals && cls.equals(cls2)) {
                if (aVar == null) {
                    zE = aVar2 == null;
                } else {
                    zE = aVar.e(aVar2);
                }
                if (zE && gVar == gVar2 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p052u0.c
    public final void clear() {
        synchronized (this.f5397c) {
            try {
                if (this.f5417y) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.b.a();
                if (this.f5395A == 6) {
                    return;
                }
                b();
                F f = this.f5408p;
                if (f != null) {
                    this.f5408p = null;
                } else {
                    f = null;
                }
                d dVar = this.f5398d;
                if (dVar == null || dVar.d(this)) {
                    this.f5404l.g(d());
                }
                this.f5395A = 6;
                if (f != null) {
                    this.f5411s.getClass();
                    r.f(f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Drawable d() {
        if (this.f5413u == null) {
            this.f5400h.getClass();
            this.f5413u = null;
        }
        return this.f5413u;
    }

    @Override // p052u0.c
    public final boolean e() {
        boolean z2;
        synchronized (this.f5397c) {
            z2 = this.f5395A == 6;
        }
        return z2;
    }

    public final void f(String str) {
        Log.v("GlideRequest", str + " this: " + this.f5396a);
    }

    @Override // p052u0.c
    public final void g() {
        synchronized (this.f5397c) {
            try {
                if (this.f5417y) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.b.a();
                int i3 = p063y0.h.b;
                this.f5410r = SystemClock.elapsedRealtimeNanos();
                if (this.f == null) {
                    if (n.i(this.f5401i, this.f5402j)) {
                        this.f5415w = this.f5401i;
                        this.f5416x = this.f5402j;
                    }
                    if (this.f5414v == null) {
                        this.f5400h.getClass();
                        this.f5414v = null;
                    }
                    h(new B("Received null model"), this.f5414v == null ? 5 : 3);
                    return;
                }
                int i4 = this.f5395A;
                if (i4 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i4 == 4) {
                    j(this.f5408p, 5, false);
                    return;
                }
                List list = this.f5405m;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                    }
                }
                this.f5395A = 3;
                if (n.i(this.f5401i, this.f5402j)) {
                    l(this.f5401i, this.f5402j);
                } else {
                    this.f5404l.a(this);
                }
                int i5 = this.f5395A;
                if (i5 == 2 || i5 == 3) {
                    d dVar = this.f5398d;
                    if (dVar == null || dVar.b(this)) {
                        this.f5404l.e(d());
                    }
                }
                if (f5394B) {
                    f("finished run method in " + p063y0.h.a(this.f5410r));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(B b, int i3) {
        Drawable drawableD;
        this.b.a();
        synchronized (this.f5397c) {
            try {
                b.getClass();
                int i4 = this.f5399e.f3212i;
                if (i4 <= i3) {
                    Log.w("Glide", "Load failed for [" + this.f + "] with dimensions [" + this.f5415w + "x" + this.f5416x + "]", b);
                    if (i4 <= 4) {
                        b.d();
                    }
                }
                this.f5409q = null;
                this.f5395A = 5;
                d dVar = this.f5398d;
                if (dVar != null) {
                    dVar.h(this);
                }
                boolean z2 = true;
                this.f5417y = true;
                try {
                    List list = this.f5405m;
                    if (list != null) {
                        Iterator it = list.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            d dVar2 = this.f5398d;
                            if (dVar2 == null) {
                                throw null;
                            }
                            dVar2.getRoot().a();
                            throw null;
                        }
                    }
                    d dVar3 = this.f5398d;
                    if (dVar3 != null && !dVar3.b(this)) {
                        z2 = false;
                    }
                    if (z2) {
                        if (this.f == null) {
                            if (this.f5414v == null) {
                                this.f5400h.getClass();
                                this.f5414v = null;
                            }
                            drawableD = this.f5414v;
                        } else {
                            drawableD = null;
                        }
                        if (drawableD == null) {
                            if (this.f5412t == null) {
                                this.f5400h.getClass();
                                this.f5412t = null;
                            }
                            drawableD = this.f5412t;
                        }
                        if (drawableD == null) {
                            drawableD = d();
                        }
                        this.f5404l.b(drawableD);
                    }
                    this.f5417y = false;
                } catch (Throwable th) {
                    this.f5417y = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // p052u0.c
    public final boolean i() {
        boolean z2;
        synchronized (this.f5397c) {
            z2 = this.f5395A == 4;
        }
        return z2;
    }

    @Override // p052u0.c
    public final boolean isRunning() {
        boolean z2;
        synchronized (this.f5397c) {
            int i3 = this.f5395A;
            z2 = i3 == 2 || i3 == 3;
        }
        return z2;
    }

    public final void j(F f, int i3, boolean z2) {
        this.b.a();
        F f3 = null;
        try {
            synchronized (this.f5397c) {
                try {
                    this.f5409q = null;
                    if (f == null) {
                        h(new B("Expected to receive a Resource<R> with an object of " + this.g + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = f.get();
                    try {
                        if (obj == null || !this.g.isAssignableFrom(obj.getClass())) {
                            this.f5408p = null;
                            StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                            sb.append(this.g);
                            sb.append(" but instead got ");
                            sb.append(obj != null ? obj.getClass() : "");
                            sb.append("{");
                            sb.append(obj);
                            sb.append("} inside Resource{");
                            sb.append(f);
                            sb.append("}.");
                            sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            h(new B(sb.toString()), 5);
                        } else {
                            d dVar = this.f5398d;
                            if (dVar == null || dVar.j(this)) {
                                k(f, obj, i3);
                                return;
                            } else {
                                this.f5408p = null;
                                this.f5395A = 4;
                            }
                        }
                        this.f5411s.getClass();
                        r.f(f);
                    } catch (Throwable th) {
                        f3 = f;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (f3 != null) {
                this.f5411s.getClass();
                r.f(f3);
            }
            throw th3;
        }
    }

    public final void k(F f, Object obj, int i3) {
        d dVar = this.f5398d;
        if (dVar != null) {
            dVar.getRoot().a();
        }
        this.f5395A = 4;
        this.f5408p = f;
        if (this.f5399e.f3212i <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + E.b.z(i3) + " for " + this.f + " with size [" + this.f5415w + "x" + this.f5416x + "] in " + p063y0.h.a(this.f5410r) + " ms");
        }
        if (dVar != null) {
            dVar.f(this);
        }
        this.f5417y = true;
        try {
            List list = this.f5405m;
            if (list != null) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
            this.f5406n.getClass();
            this.f5404l.h(obj);
            this.f5417y = false;
        } catch (Throwable th) {
            this.f5417y = false;
            throw th;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void l(int i3, int i4) throws Throwable {
        Object obj;
        f fVar = this;
        int iRound = i3;
        fVar.b.a();
        Object obj2 = fVar.f5397c;
        synchronized (obj2) {
            try {
                try {
                    boolean z2 = f5394B;
                    if (z2) {
                        fVar.f("Got onSizeReady in " + p063y0.h.a(fVar.f5410r));
                    }
                    if (fVar.f5395A == 3) {
                        fVar.f5395A = 2;
                        fVar.f5400h.getClass();
                        if (iRound != Integer.MIN_VALUE) {
                            iRound = Math.round(iRound * 1.0f);
                        }
                        fVar.f5415w = iRound;
                        fVar.f5416x = i4 == Integer.MIN_VALUE ? i4 : Math.round(1.0f * i4);
                        if (z2) {
                            fVar.f("finished setup for calling load in " + p063y0.h.a(fVar.f5410r));
                        }
                        r rVar = fVar.f5411s;
                        com.bumptech.glide.e eVar = fVar.f5399e;
                        Object obj3 = fVar.f;
                        a aVar = fVar.f5400h;
                        p009d0.f fVar2 = aVar.f5380h;
                        try {
                            int i5 = fVar.f5415w;
                            int i6 = fVar.f5416x;
                            Class cls = aVar.f5384l;
                            try {
                                Class cls2 = fVar.g;
                                g gVar = fVar.f5403k;
                                l lVar = aVar.f5377c;
                                try {
                                    c cVar = aVar.f5383k;
                                    boolean z3 = aVar.f5381i;
                                    boolean z4 = aVar.f5387o;
                                    try {
                                        i iVar = aVar.f5382j;
                                        boolean z5 = aVar.f5379e;
                                        boolean z6 = aVar.f5388p;
                                        o oVar = fVar.f5407o;
                                        Object obj4 = obj2;
                                        try {
                                            fVar.f5409q = rVar.a(eVar, obj3, fVar2, i5, i6, cls, cls2, gVar, lVar, cVar, z3, z4, iVar, z5, z6, fVar, oVar);
                                            if (fVar.f5395A != 2) {
                                                fVar.f5409q = null;
                                            }
                                            if (z2) {
                                                fVar.f("finished onSizeReady in " + p063y0.h.a(fVar.f5410r));
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            obj = obj4;
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        obj = obj2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    obj = obj2;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                obj = obj2;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            obj = obj2;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                    obj = fVar;
                }
            } catch (Throwable th7) {
                th = th7;
                obj = obj2;
            }
        }
    }

    @Override // p052u0.c
    public final void pause() {
        synchronized (this.f5397c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f5397c) {
            obj = this.f;
            cls = this.g;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
