package p014f0;

import A1.C0009b;
import F.b;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.f;
import com.bumptech.glide.g;
import com.google.android.material.datepicker.c;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import p009d0.i;
import p011e.o;
import p019h0.e;
import p063y0.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements w, y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f4272h = Log.isLoggable("Engine", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4273a;
    public final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f4274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f4275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final I f4276e;
    public final n f;
    public final b g;

    public r(e eVar, C0009b c0009b, p022i0.e eVar2, p022i0.e eVar3, p022i0.e eVar4, p022i0.e eVar5) throws Throwable {
        this.f4274c = eVar;
        q qVar = new q(c0009b);
        b bVar = new b(6);
        this.g = bVar;
        synchronized (this) {
            try {
                synchronized (bVar) {
                    try {
                        try {
                            bVar.f945e = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
                this.b = new c(4);
                this.f4273a = new f(1);
                this.f4275d = new p(eVar2, eVar3, eVar4, eVar5, this, this);
                this.f = new n(qVar);
                this.f4276e = new I();
                eVar.f4365d = this;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public static void c(String str, long j2, x xVar) {
        Log.v("Engine", str + " in " + h.a(j2) + "ms, key: " + xVar);
    }

    public static void f(F f) {
        if (!(f instanceof z)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((z) f).b();
    }

    public final b a(com.bumptech.glide.e eVar, Object obj, p009d0.f fVar, int i3, int i4, Class cls, Class cls2, g gVar, l lVar, p063y0.c cVar, boolean z2, boolean z3, i iVar, boolean z4, boolean z5, p052u0.f fVar2, o oVar) {
        long jElapsedRealtimeNanos;
        if (f4272h) {
            int i5 = h.b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        this.b.getClass();
        x xVar = new x(obj, fVar, i3, i4, cVar, cls, cls2, iVar);
        synchronized (this) {
            try {
                z zVarB = b(xVar, z4, jElapsedRealtimeNanos);
                if (zVarB == null) {
                    return g(eVar, obj, fVar, i3, i4, cls, cls2, gVar, lVar, cVar, z2, z3, iVar, z4, z5, fVar2, oVar, xVar, jElapsedRealtimeNanos);
                }
                fVar2.j(zVarB, 5, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x008e */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p014f0.z b(p014f0.x r8, boolean r9, long r10) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            if (r9 != 0) goto L6
            r6 = r7
            goto L88
        L6:
            F.b r9 = r7.g
            monitor-enter(r9)
            java.lang.Object r1 = r9.f943c     // Catch: java.lang.Throwable -> L90
            java.util.HashMap r1 = (java.util.HashMap) r1     // Catch: java.lang.Throwable -> L90
            java.lang.Object r1 = r1.get(r8)     // Catch: java.lang.Throwable -> L90
            f0.b r1 = (p014f0.C0253b) r1     // Catch: java.lang.Throwable -> L90
            if (r1 != 0) goto L18
            monitor-exit(r9)
            r2 = r0
            goto L2a
        L18:
            java.lang.Object r2 = r1.get()     // Catch: java.lang.Throwable -> L90
            f0.z r2 = (p014f0.z) r2     // Catch: java.lang.Throwable -> L90
            if (r2 != 0) goto L29
            r9.e(r1)     // Catch: java.lang.Throwable -> L24
            goto L29
        L24:
            r0 = move-exception
            r8 = r0
            r6 = r7
            goto L93
        L29:
            monitor-exit(r9)
        L2a:
            if (r2 == 0) goto L2f
            r2.a()
        L2f:
            if (r2 == 0) goto L3b
            boolean r9 = p014f0.r.f4272h
            if (r9 == 0) goto L3a
            java.lang.String r9 = "Loaded resource from active resources"
            c(r9, r10, r8)
        L3a:
            return r2
        L3b:
            h0.e r1 = r7.f4274c
            monitor-enter(r1)
            java.util.LinkedHashMap r9 = r1.f6021a     // Catch: java.lang.Throwable -> L89
            java.lang.Object r9 = r9.remove(r8)     // Catch: java.lang.Throwable -> L89
            y0.i r9 = (p063y0.i) r9     // Catch: java.lang.Throwable -> L89
            if (r9 != 0) goto L4b
            monitor-exit(r1)
            r9 = r0
            goto L56
        L4b:
            long r2 = r1.f6022c     // Catch: java.lang.Throwable -> L89
            int r4 = r9.b     // Catch: java.lang.Throwable -> L89
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L89
            long r2 = r2 - r4
            r1.f6022c = r2     // Catch: java.lang.Throwable -> L89
            java.lang.Object r9 = r9.f6020a     // Catch: java.lang.Throwable -> L89
            monitor-exit(r1)
        L56:
            r2 = r9
            f0.F r2 = (p014f0.F) r2
            if (r2 != 0) goto L5f
            r6 = r7
            r5 = r8
            r2 = r0
            goto L72
        L5f:
            boolean r9 = r2 instanceof p014f0.z
            if (r9 == 0) goto L68
            f0.z r2 = (p014f0.z) r2
            r6 = r7
            r5 = r8
            goto L72
        L68:
            f0.z r1 = new f0.z
            r3 = 1
            r4 = 1
            r6 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5, r6)
            r2 = r1
        L72:
            if (r2 == 0) goto L7c
            r2.a()
            F.b r8 = r6.g
            r8.b(r5, r2)
        L7c:
            if (r2 == 0) goto L88
            boolean r8 = p014f0.r.f4272h
            if (r8 == 0) goto L87
            java.lang.String r8 = "Loaded resource from cache"
            c(r8, r10, r5)
        L87:
            return r2
        L88:
            return r0
        L89:
            r0 = move-exception
            r6 = r7
        L8b:
            r8 = r0
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8e
            throw r8
        L8e:
            r0 = move-exception
            goto L8b
        L90:
            r0 = move-exception
            r6 = r7
        L92:
            r8 = r0
        L93:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L95
            throw r8
        L95:
            r0 = move-exception
            goto L92
        */
        throw new UnsupportedOperationException("Method not decompiled: p014f0.r.b(f0.x, boolean, long):f0.z");
    }

    public final synchronized void d(v vVar, p009d0.f fVar, z zVar) {
        if (zVar != null) {
            try {
                if (zVar.b) {
                    this.g.b(fVar, zVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f fVar2 = this.f4273a;
        fVar2.getClass();
        vVar.getClass();
        HashMap map = fVar2.f3214a;
        if (vVar.equals(map.get(fVar))) {
            map.remove(fVar);
        }
    }

    public final void e(p009d0.f fVar, z zVar) {
        b bVar = this.g;
        synchronized (bVar) {
            C0253b c0253b = (C0253b) ((HashMap) bVar.f943c).remove(fVar);
            if (c0253b != null) {
                c0253b.f4205c = null;
                c0253b.clear();
            }
        }
        if (zVar.b) {
        } else {
            this.f4276e.a(zVar, false);
        }
    }

    public final b g(com.bumptech.glide.e eVar, Object obj, p009d0.f fVar, int i3, int i4, Class cls, Class cls2, g gVar, l lVar, Map map, boolean z2, boolean z3, i iVar, boolean z4, boolean z5, p052u0.f fVar2, Executor executor, x xVar, long j2) {
        p022i0.e eVar2;
        v vVar = (v) this.f4273a.f3214a.get(xVar);
        if (vVar != null) {
            vVar.a(fVar2, executor);
            if (f4272h) {
                c("Added to existing load", j2, xVar);
            }
            return new b(this, fVar2, vVar);
        }
        v vVar2 = (v) this.f4275d.g.acquire();
        synchronized (vVar2) {
            vVar2.f4288l = xVar;
            vVar2.f4289m = z4;
            vVar2.f4290n = z5;
        }
        n nVar = this.f;
        RunnableC0261j runnableC0261j = (RunnableC0261j) nVar.b.acquire();
        int i5 = nVar.f4266c;
        nVar.f4266c = i5 + 1;
        C0259h c0259h = runnableC0261j.b;
        q qVar = runnableC0261j.f4238e;
        c0259h.f4214c = eVar;
        c0259h.f4215d = obj;
        c0259h.f4223n = fVar;
        c0259h.f4216e = i3;
        c0259h.f = i4;
        c0259h.f4225p = lVar;
        c0259h.g = cls;
        c0259h.f4217h = qVar;
        c0259h.f4220k = cls2;
        c0259h.f4224o = gVar;
        c0259h.f4218i = iVar;
        c0259h.f4219j = map;
        c0259h.f4226q = z2;
        c0259h.f4227r = z3;
        runnableC0261j.f4240i = eVar;
        runnableC0261j.f4241j = fVar;
        runnableC0261j.f4242k = gVar;
        runnableC0261j.f4243l = xVar;
        runnableC0261j.f4244m = i3;
        runnableC0261j.f4245n = i4;
        runnableC0261j.f4246o = lVar;
        runnableC0261j.f4247p = iVar;
        runnableC0261j.f4248q = vVar2;
        runnableC0261j.f4249r = i5;
        runnableC0261j.f4234E = 1;
        runnableC0261j.f4251t = obj;
        f fVar3 = this.f4273a;
        fVar3.getClass();
        fVar3.f3214a.put(xVar, vVar2);
        vVar2.a(fVar2, executor);
        synchronized (vVar2) {
            vVar2.f4297u = runnableC0261j;
            int iH = runnableC0261j.h(1);
            if (iH == 2 || iH == 3) {
                eVar2 = vVar2.f4284h;
            } else {
                eVar2 = vVar2.f4290n ? vVar2.f4286j : vVar2.f4285i;
            }
            eVar2.execute(runnableC0261j);
        }
        if (f4272h) {
            c("Started new load", j2, xVar);
        }
        return new b(this, fVar2, vVar2);
    }
}
