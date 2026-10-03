package p014f0;

import F.b;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.g;
import java.util.ArrayList;
import java.util.Collections;
import p009d0.f;
import p009d0.i;
import p009d0.l;
import p011e.C0244f;
import p033m0.q;
import p063y0.c;
import p065z0.d;
import p065z0.e;
import p065z0.h;

/* JADX INFO: renamed from: f0.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0261j implements InterfaceC0257f, Runnable, Comparable, e {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public volatile boolean f4230A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public volatile boolean f4231B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f4232C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f4233D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f4234E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f4235F;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q f4238e;
    public final Pools.Pool f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.bumptech.glide.e f4240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f f4241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public g f4242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public x f4243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4244m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4245n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public l f4246o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public i f4247p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public v f4248q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f4249r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f4250s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Object f4251t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Thread f4252u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public f f4253v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public f f4254w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Object f4255x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public com.bumptech.glide.load.data.e f4256y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile InterfaceC0258g f4257z;
    public final C0259h b = new C0259h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f4236c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f4237d = new h();
    public final b g = new b(8);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0260i f4239h = new C0260i();

    public RunnableC0261j(q qVar, d dVar) {
        this.f4238e = qVar;
        this.f = dVar;
    }

    @Override // p014f0.InterfaceC0257f
    public final void a(f fVar, Exception exc, com.bumptech.glide.load.data.e eVar, int i3) {
        eVar.b();
        B b = new B(Collections.singletonList(exc), "Fetching data failed");
        Class clsA = eVar.a();
        b.f4178c = fVar;
        b.f4179d = i3;
        b.f4180e = clsA;
        this.f4236c.add(b);
        if (Thread.currentThread() != this.f4252u) {
            l(2);
        } else {
            m();
        }
    }

    @Override // p065z0.e
    public final h b() {
        return this.f4237d;
    }

    @Override // p014f0.InterfaceC0257f
    public final void c(f fVar, Object obj, com.bumptech.glide.load.data.e eVar, int i3, f fVar2) {
        this.f4253v = fVar;
        this.f4255x = obj;
        this.f4256y = eVar;
        this.f4235F = i3;
        this.f4254w = fVar2;
        this.f4232C = fVar != this.b.a().get(0);
        if (Thread.currentThread() != this.f4252u) {
            l(3);
        } else {
            f();
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        RunnableC0261j runnableC0261j = (RunnableC0261j) obj;
        int iOrdinal = this.f4242k.ordinal() - runnableC0261j.f4242k.ordinal();
        return iOrdinal == 0 ? this.f4249r - runnableC0261j.f4249r : iOrdinal;
    }

    public final F d(com.bumptech.glide.load.data.e eVar, Object obj, int i3) {
        if (obj == null) {
            eVar.b();
            return null;
        }
        try {
            int i4 = p063y0.h.b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            F fE = e(i3, obj);
            if (Log.isLoggable("DecodeJob", 2)) {
                i("Decoded result " + fE, jElapsedRealtimeNanos, null);
            }
            return fE;
        } finally {
            eVar.b();
        }
    }

    public final F e(int i3, Object obj) {
        Class<?> cls = obj.getClass();
        C0259h c0259h = this.b;
        D dC = c0259h.c(cls);
        i iVar = this.f4247p;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z2 = i3 == 4 || c0259h.f4227r;
            p009d0.h hVar = q.f5132i;
            Boolean bool = (Boolean) iVar.c(hVar);
            if (bool == null || (bool.booleanValue() && !z2)) {
                iVar = new i();
                c cVar = this.f4247p.b;
                c cVar2 = iVar.b;
                cVar2.g(cVar);
                cVar2.put(hVar, Boolean.valueOf(z2));
            }
        }
        i iVar2 = iVar;
        com.bumptech.glide.load.data.g gVarG = this.f4240i.a().g(obj);
        try {
            return dC.a(this.f4244m, this.f4245n, gVarG, iVar2, new C0244f(this, i3));
        } finally {
            gVarG.b();
        }
    }

    public final void f() {
        F fD;
        boolean zA;
        if (Log.isLoggable("DecodeJob", 2)) {
            i("Retrieved data", this.f4250s, "data: " + this.f4255x + ", cache key: " + this.f4253v + ", fetcher: " + this.f4256y);
        }
        E e2 = null;
        try {
            fD = d(this.f4256y, this.f4255x, this.f4235F);
        } catch (B e3) {
            f fVar = this.f4254w;
            int i3 = this.f4235F;
            e3.f4178c = fVar;
            e3.f4179d = i3;
            e3.f4180e = null;
            this.f4236c.add(e3);
            fD = null;
        }
        if (fD == null) {
            m();
            return;
        }
        int i4 = this.f4235F;
        boolean z2 = this.f4232C;
        if (fD instanceof C) {
            ((C) fD).a();
        }
        if (((E) this.g.f945e) != null) {
            e2 = (E) E.f.acquire();
            e2.f4185e = false;
            e2.f4184d = true;
            e2.f4183c = fD;
            fD = e2;
        }
        o();
        v vVar = this.f4248q;
        synchronized (vVar) {
            vVar.f4291o = fD;
            vVar.f4292p = i4;
            vVar.f4299w = z2;
        }
        synchronized (vVar) {
            try {
                vVar.f4281c.a();
                if (vVar.f4298v) {
                    vVar.f4291o.e();
                    vVar.g();
                } else {
                    if (vVar.b.b.isEmpty()) {
                        throw new IllegalStateException("Received a resource without any callbacks to notify");
                    }
                    if (vVar.f4293q) {
                        throw new IllegalStateException("Already have resource");
                    }
                    com.google.android.material.datepicker.c cVar = vVar.f;
                    F f = vVar.f4291o;
                    boolean z3 = vVar.f4289m;
                    x xVar = vVar.f4288l;
                    y yVar = vVar.f4282d;
                    cVar.getClass();
                    vVar.f4296t = new z(f, z3, true, xVar, yVar);
                    vVar.f4293q = true;
                    u uVar = vVar.b;
                    uVar.getClass();
                    ArrayList arrayList = new ArrayList(uVar.b);
                    vVar.e(arrayList.size() + 1);
                    ((r) vVar.g).d(vVar, vVar.f4288l, vVar.f4296t);
                    int size = arrayList.size();
                    int i5 = 0;
                    while (i5 < size) {
                        Object obj = arrayList.get(i5);
                        i5++;
                        t tVar = (t) obj;
                        tVar.b.execute(new s(vVar, tVar.f4279a, 1));
                    }
                    vVar.d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f4233D = 5;
        try {
            b bVar = this.g;
            if (((E) bVar.f945e) != null) {
                q qVar = this.f4238e;
                i iVar = this.f4247p;
                bVar.getClass();
                try {
                    qVar.a().j((f) bVar.f943c, new b((l) bVar.f944d, (E) bVar.f945e, iVar, 7));
                    ((E) bVar.f945e).a();
                } catch (Throwable th2) {
                    ((E) bVar.f945e).a();
                    throw th2;
                }
            }
            if (e2 != null) {
                e2.a();
            }
            C0260i c0260i = this.f4239h;
            synchronized (c0260i) {
                c0260i.b = true;
                zA = c0260i.a();
            }
            if (zA) {
                k();
            }
        } catch (Throwable th3) {
            if (e2 != null) {
                e2.a();
            }
            throw th3;
        }
    }

    public final InterfaceC0258g g() {
        int iA = p051u.h.a(this.f4233D);
        C0259h c0259h = this.b;
        if (iA == 1) {
            return new G(c0259h, this);
        }
        if (iA == 2) {
            return new C0255d(c0259h.a(), c0259h, this);
        }
        if (iA == 3) {
            return new J(c0259h, this);
        }
        if (iA == 5) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: ".concat(E.b.A(this.f4233D)));
    }

    public final int h(int i3) {
        boolean z2;
        boolean z3;
        int iA = p051u.h.a(i3);
        if (iA == 0) {
            switch (this.f4246o.f4264a) {
                case 0:
                case 1:
                    z2 = false;
                    break;
                default:
                    z2 = true;
                    break;
            }
            if (z2) {
                return 2;
            }
            return h(2);
        }
        if (iA != 1) {
            if (iA == 2) {
                return 4;
            }
            if (iA == 3 || iA == 5) {
                return 6;
            }
            throw new IllegalArgumentException("Unrecognized stage: ".concat(E.b.A(i3)));
        }
        switch (this.f4246o.f4264a) {
            case 0:
                z3 = false;
                break;
            case 1:
            default:
                z3 = true;
                break;
        }
        if (z3) {
            return 3;
        }
        return h(3);
    }

    public final void i(String str, long j2, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(p063y0.h.a(j2));
        sb.append(", load key: ");
        sb.append(this.f4243l);
        sb.append(str2 != null ? ", ".concat(str2) : "");
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sb.toString());
    }

    public final void j() {
        boolean zA;
        o();
        B b = new B(new ArrayList(this.f4236c), "Failed to load resource");
        v vVar = this.f4248q;
        synchronized (vVar) {
            vVar.f4294r = b;
        }
        synchronized (vVar) {
            try {
                vVar.f4281c.a();
                if (vVar.f4298v) {
                    vVar.g();
                } else {
                    if (vVar.b.b.isEmpty()) {
                        throw new IllegalStateException("Received an exception without any callbacks to notify");
                    }
                    if (vVar.f4295s) {
                        throw new IllegalStateException("Already failed once");
                    }
                    vVar.f4295s = true;
                    x xVar = vVar.f4288l;
                    u uVar = vVar.b;
                    uVar.getClass();
                    ArrayList arrayList = new ArrayList(uVar.b);
                    vVar.e(arrayList.size() + 1);
                    ((r) vVar.g).d(vVar, xVar, null);
                    int size = arrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        t tVar = (t) obj;
                        tVar.b.execute(new s(vVar, tVar.f4279a, 0));
                    }
                    vVar.d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C0260i c0260i = this.f4239h;
        synchronized (c0260i) {
            c0260i.f4229c = true;
            zA = c0260i.a();
        }
        if (zA) {
            k();
        }
    }

    public final void k() {
        C0260i c0260i = this.f4239h;
        synchronized (c0260i) {
            c0260i.b = false;
            c0260i.f4228a = false;
            c0260i.f4229c = false;
        }
        b bVar = this.g;
        bVar.f943c = null;
        bVar.f944d = null;
        bVar.f945e = null;
        C0259h c0259h = this.b;
        c0259h.f4214c = null;
        c0259h.f4215d = null;
        c0259h.f4223n = null;
        c0259h.g = null;
        c0259h.f4220k = null;
        c0259h.f4218i = null;
        c0259h.f4224o = null;
        c0259h.f4219j = null;
        c0259h.f4225p = null;
        c0259h.f4213a.clear();
        c0259h.f4221l = false;
        c0259h.b.clear();
        c0259h.f4222m = false;
        this.f4230A = false;
        this.f4240i = null;
        this.f4241j = null;
        this.f4247p = null;
        this.f4242k = null;
        this.f4243l = null;
        this.f4248q = null;
        this.f4233D = 0;
        this.f4257z = null;
        this.f4252u = null;
        this.f4253v = null;
        this.f4255x = null;
        this.f4235F = 0;
        this.f4256y = null;
        this.f4250s = 0L;
        this.f4231B = false;
        this.f4251t = null;
        this.f4236c.clear();
        this.f.release(this);
    }

    public final void l(int i3) {
        this.f4234E = i3;
        v vVar = this.f4248q;
        (vVar.f4290n ? vVar.f4286j : vVar.f4285i).execute(this);
    }

    public final void m() {
        this.f4252u = Thread.currentThread();
        int i3 = p063y0.h.b;
        this.f4250s = SystemClock.elapsedRealtimeNanos();
        boolean zB = false;
        while (!this.f4231B && this.f4257z != null && !(zB = this.f4257z.b())) {
            this.f4233D = h(this.f4233D);
            this.f4257z = g();
            if (this.f4233D == 4) {
                l(2);
                return;
            }
        }
        if ((this.f4233D == 6 || this.f4231B) && !zB) {
            j();
        }
    }

    public final void n() {
        String str;
        int iA = p051u.h.a(this.f4234E);
        if (iA == 0) {
            this.f4233D = h(1);
            this.f4257z = g();
            m();
        } else {
            if (iA == 1) {
                m();
                return;
            }
            if (iA == 2) {
                f();
                return;
            }
            int i3 = this.f4234E;
            if (i3 == 1) {
                str = "INITIALIZE";
            } else if (i3 != 2) {
                str = i3 != 3 ? "null" : "DECODE_DATA";
            } else {
                str = "SWITCH_TO_SOURCE_SERVICE";
            }
            throw new IllegalStateException("Unrecognized run reason: ".concat(str));
        }
    }

    public final void o() {
        Throwable th;
        this.f4237d.a();
        if (!this.f4230A) {
            this.f4230A = true;
            return;
        }
        if (this.f4236c.isEmpty()) {
            th = null;
        } else {
            ArrayList arrayList = this.f4236c;
            th = (Throwable) arrayList.get(arrayList.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.load.data.e eVar = this.f4256y;
        try {
            try {
                if (this.f4231B) {
                    j();
                    if (eVar != null) {
                        eVar.b();
                        return;
                    }
                    return;
                }
                n();
                if (eVar != null) {
                    eVar.b();
                }
            } catch (Throwable th) {
                if (eVar != null) {
                    eVar.b();
                }
                throw th;
            }
        } catch (C0254c e2) {
            throw e2;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.f4231B + ", stage: " + E.b.A(this.f4233D), th2);
            }
            if (this.f4233D != 5) {
                this.f4236c.add(th2);
                j();
            }
            if (!this.f4231B) {
                throw th2;
            }
            throw th2;
        }
    }
}
