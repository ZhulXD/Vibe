package p014f0;

import F.b;
import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.h;
import com.bumptech.glide.load.data.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p009d0.i;
import p009d0.l;
import p009d0.m;
import p011e.C0244f;
import p025j0.p;
import p044r0.a;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f4258a;
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f4259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Pools.Pool f4260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f4261e;

    public k(Class cls, Class cls2, Class cls3, List list, a aVar, Pools.Pool pool) {
        this.f4258a = cls;
        this.b = list;
        this.f4259c = aVar;
        this.f4260d = pool;
        this.f4261e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final F a(int i3, int i4, g gVar, i iVar, C0244f c0244f) {
        F fA;
        m mVar;
        int iM;
        boolean z2;
        boolean z3;
        boolean z4;
        Object c0256e;
        String str;
        Pools.Pool pool = this.f4260d;
        Object objAcquire = pool.acquire();
        f.c(objAcquire, "Argument must not be null");
        List list = (List) objAcquire;
        try {
            F fB = b(gVar, i3, i4, iVar, list);
            pool.release(list);
            RunnableC0261j runnableC0261j = (RunnableC0261j) c0244f.f4145c;
            int i5 = c0244f.b;
            C0259h c0259h = runnableC0261j.b;
            Class<?> cls = fB.get().getClass();
            l lVarA = null;
            if (i5 != 4) {
                m mVarE = c0259h.e(cls);
                mVar = mVarE;
                fA = mVarE.a(runnableC0261j.f4240i, fB, runnableC0261j.f4244m, runnableC0261j.f4245n);
            } else {
                fA = fB;
                mVar = null;
            }
            if (!fB.equals(fA)) {
                fB.e();
            }
            if (c0259h.f4214c.a().f3220d.a(fA.d()) != null) {
                lVarA = c0259h.f4214c.a().f3220d.a(fA.d());
                if (lVarA == null) {
                    throw new h(fA.d());
                }
                iM = lVarA.m(runnableC0261j.f4247p);
            } else {
                iM = 3;
            }
            l lVar = lVarA;
            p009d0.f fVar = runnableC0261j.f4253v;
            ArrayList arrayListB = c0259h.b();
            int size = arrayListB.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    z2 = false;
                    break;
                }
                if (((p) arrayListB.get(i6)).f4637a.equals(fVar)) {
                    z2 = true;
                    break;
                }
                i6++;
            }
            switch (runnableC0261j.f4246o.f4264a) {
                default:
                    z3 = true;
                    if (((z2 || i5 != 3) && i5 != 1) || iM != 2) {
                    }
                case 0:
                case 1:
                    z3 = false;
                    break;
            }
            if (z3) {
                if (lVar == null) {
                    throw new h(fA.get().getClass());
                }
                int iA = p051u.h.a(iM);
                if (iA == 0) {
                    z4 = true;
                    c0256e = new C0256e(runnableC0261j.f4253v, runnableC0261j.f4241j);
                } else {
                    if (iA != 1) {
                        if (iM == 1) {
                            str = "SOURCE";
                        } else if (iM != 2) {
                            str = iM != 3 ? "null" : "NONE";
                        } else {
                            str = "TRANSFORMED";
                        }
                        throw new IllegalArgumentException("Unknown strategy: ".concat(str));
                    }
                    z4 = true;
                    c0256e = new H(c0259h.f4214c.f3207a, runnableC0261j.f4253v, runnableC0261j.f4241j, runnableC0261j.f4244m, runnableC0261j.f4245n, mVar, cls, runnableC0261j.f4247p);
                }
                E e2 = (E) E.f.acquire();
                e2.f4185e = 0;
                e2.f4184d = z4;
                e2.f4183c = fA;
                b bVar = runnableC0261j.g;
                bVar.f943c = c0256e;
                bVar.f944d = lVar;
                bVar.f945e = e2;
                fA = e2;
            }
            return this.f4259c.a(fA, iVar);
        } catch (Throwable th) {
            pool.release(list);
            throw th;
        }
    }

    public final F b(g gVar, int i3, int i4, i iVar, List list) throws B {
        List list2 = this.b;
        int size = list2.size();
        F fB = null;
        for (int i5 = 0; i5 < size; i5++) {
            p009d0.k kVar = (p009d0.k) list2.get(i5);
            try {
                if (kVar.a(gVar.a(), iVar)) {
                    fB = kVar.b(gVar.a(), i3, i4, iVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + kVar, e2);
                }
                list.add(e2);
            }
            if (fB != null) {
                break;
            }
        }
        if (fB != null) {
            return fB;
        }
        throw new B(new ArrayList(list), this.f4261e);
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f4258a + ", decoders=" + this.b + ", transcoder=" + this.f4259c + '}';
    }
}
