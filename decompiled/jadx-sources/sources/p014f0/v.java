package p014f0;

import androidx.core.util.Pools;
import com.google.android.material.datepicker.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p052u0.f;
import p065z0.d;
import p065z0.e;
import p065z0.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v implements e {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final c f4280x = new c(3);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y f4282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Pools.Pool f4283e;
    public final w g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p022i0.e f4284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p022i0.e f4285i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p022i0.e f4286j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public x f4288l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4289m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4290n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public F f4291o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4292p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4293q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public B f4294r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4295s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public z f4296t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public RunnableC0261j f4297u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile boolean f4298v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4299w;
    public final u b = new u(new ArrayList(2));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f4281c = new h();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicInteger f4287k = new AtomicInteger();
    public final c f = f4280x;

    public v(p022i0.e eVar, p022i0.e eVar2, p022i0.e eVar3, p022i0.e eVar4, r rVar, r rVar2, d dVar) {
        this.f4284h = eVar;
        this.f4285i = eVar2;
        this.f4286j = eVar4;
        this.g = rVar;
        this.f4282d = rVar2;
        this.f4283e = dVar;
    }

    public final synchronized void a(f fVar, Executor executor) {
        try {
            this.f4281c.a();
            this.b.b.add(new t(fVar, executor));
            if (this.f4293q) {
                e(1);
                executor.execute(new s(this, fVar, 1));
            } else if (this.f4295s) {
                e(1);
                executor.execute(new s(this, fVar, 0));
            } else {
                p063y0.f.a("Cannot add callbacks to a cancelled EngineJob", !this.f4298v);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p065z0.e
    public final h b() {
        return this.f4281c;
    }

    public final void c() {
        if (f()) {
            return;
        }
        this.f4298v = true;
        RunnableC0261j runnableC0261j = this.f4297u;
        runnableC0261j.f4231B = true;
        InterfaceC0258g interfaceC0258g = runnableC0261j.f4257z;
        if (interfaceC0258g != null) {
            interfaceC0258g.cancel();
        }
        w wVar = this.g;
        x xVar = this.f4288l;
        r rVar = (r) wVar;
        synchronized (rVar) {
            com.bumptech.glide.f fVar = rVar.f4273a;
            fVar.getClass();
            HashMap map = fVar.f3214a;
            if (equals(map.get(xVar))) {
                map.remove(xVar);
            }
        }
    }

    public final void d() {
        z zVar;
        synchronized (this) {
            try {
                this.f4281c.a();
                p063y0.f.a("Not yet complete!", f());
                int iDecrementAndGet = this.f4287k.decrementAndGet();
                p063y0.f.a("Can't decrement below 0", iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    zVar = this.f4296t;
                    g();
                } else {
                    zVar = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zVar != null) {
            zVar.b();
        }
    }

    public final synchronized void e(int i3) {
        z zVar;
        p063y0.f.a("Not yet complete!", f());
        if (this.f4287k.getAndAdd(i3) == 0 && (zVar = this.f4296t) != null) {
            zVar.a();
        }
    }

    public final boolean f() {
        return this.f4295s || this.f4293q || this.f4298v;
    }

    public final synchronized void g() {
        boolean zA;
        if (this.f4288l == null) {
            throw new IllegalArgumentException();
        }
        this.b.b.clear();
        this.f4288l = null;
        this.f4296t = null;
        this.f4291o = null;
        this.f4295s = false;
        this.f4298v = false;
        this.f4293q = false;
        this.f4299w = false;
        RunnableC0261j runnableC0261j = this.f4297u;
        C0260i c0260i = runnableC0261j.f4239h;
        synchronized (c0260i) {
            c0260i.f4228a = true;
            zA = c0260i.a();
        }
        if (zA) {
            runnableC0261j.k();
        }
        this.f4297u = null;
        this.f4294r = null;
        this.f4292p = 0;
        this.f4283e.release(this);
    }

    public final synchronized void h(f fVar) {
        try {
            this.f4281c.a();
            this.b.b.remove(new t(fVar, p063y0.f.b));
            if (this.b.b.isEmpty()) {
                c();
                if (this.f4293q || this.f4295s) {
                    if (this.f4287k.get() == 0) {
                        g();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
