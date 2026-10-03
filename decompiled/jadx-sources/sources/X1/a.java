package X1;

import V1.A;
import V1.C0189e;
import V1.w0;
import a2.u;
import a2.v;
import a2.w;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements w0 {
    public Object b = d.f2362p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0189e f2341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f2342d;

    public a(b bVar) {
        this.f2342d = bVar;
    }

    public static final void b(a aVar) {
        C0189e c0189e = aVar.f2341c;
        Intrinsics.checkNotNull(c0189e);
        aVar.f2341c = null;
        aVar.b = d.f2358l;
        Throwable thL = aVar.f2342d.l();
        if (thL == null) {
            Result.Companion companion = Result.INSTANCE;
            c0189e.resumeWith(Result.m9constructorimpl(Boolean.FALSE));
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            c0189e.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(thL)));
        }
    }

    @Override // V1.w0
    public final void a(u uVar, int i3) {
        C0189e c0189e = this.f2341c;
        if (c0189e != null) {
            c0189e.a(uVar, i3);
        }
    }

    public final Object c(Y1.d dVar) throws Throwable {
        j jVarK;
        j jVarK2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b.f2346h;
        b bVar = this.f2342d;
        j jVar = (j) atomicReferenceFieldUpdater.get(bVar);
        while (!bVar.p(b.f2343c.get(bVar), true)) {
            long andIncrement = b.f2344d.getAndIncrement(bVar);
            long j2 = d.b;
            long j3 = andIncrement / j2;
            int i3 = (int) (andIncrement % j2);
            if (jVar.f2597d != j3) {
                jVarK = bVar.k(j3, jVar);
                if (jVarK == null) {
                    continue;
                }
            } else {
                jVarK = jVar;
            }
            Object objX = bVar.x(jVarK, i3, andIncrement, null);
            w wVar = d.f2359m;
            if (objX == wVar) {
                throw new IllegalStateException("unreachable");
            }
            w wVar2 = d.f2361o;
            if (objX != wVar2) {
                if (objX != d.f2360n) {
                    jVarK.a();
                    this.b = objX;
                    return Boxing.boxBoolean(true);
                }
                C0189e c0189eB = A.b(IntrinsicsKt.intercepted(dVar));
                try {
                    this.f2341c = c0189eB;
                    Object objX2 = bVar.x(jVarK, i3, andIncrement, this);
                    if (objX2 == wVar) {
                        a(jVarK, i3);
                    } else {
                        if (objX2 == wVar2) {
                            if (andIncrement < bVar.n()) {
                                jVarK.a();
                            }
                            j jVar2 = (j) b.f2346h.get(bVar);
                            while (true) {
                                if (bVar.p(b.f2343c.get(bVar), true)) {
                                    b(this);
                                } else {
                                    long andIncrement2 = b.f2344d.getAndIncrement(bVar);
                                    long j4 = d.b;
                                    long j5 = andIncrement2 / j4;
                                    int i4 = (int) (andIncrement2 % j4);
                                    if (jVar2.f2597d != j5) {
                                        jVarK2 = bVar.k(j5, jVar2);
                                        if (jVarK2 == null) {
                                        }
                                    } else {
                                        jVarK2 = jVar2;
                                    }
                                    Object objX3 = bVar.x(jVarK2, i4, andIncrement2, this);
                                    if (objX3 == d.f2359m) {
                                        a(jVarK2, i4);
                                    } else if (objX3 == d.f2361o) {
                                        if (andIncrement2 < bVar.n()) {
                                            jVarK2.a();
                                        }
                                        jVar2 = jVarK2;
                                    } else {
                                        if (objX3 == d.f2360n) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        jVarK2.a();
                                        this.b = objX3;
                                        this.f2341c = null;
                                    }
                                }
                            }
                        } else {
                            jVarK.a();
                            this.b = objX2;
                            this.f2341c = null;
                        }
                        c0189eB.c(Boxing.boxBoolean(true), null);
                    }
                    Object objQ = c0189eB.q();
                    if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(dVar);
                    }
                    return objQ;
                } catch (Throwable th) {
                    c0189eB.x();
                    throw th;
                }
            }
            if (andIncrement < bVar.n()) {
                jVarK.a();
            }
            jVar = jVarK;
        }
        this.b = d.f2358l;
        Throwable thL = bVar.l();
        if (thL == null) {
            return Boxing.boxBoolean(false);
        }
        int i5 = v.f2598a;
        throw thL;
    }
}
