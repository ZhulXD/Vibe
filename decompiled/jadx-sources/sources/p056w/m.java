package p056w;

import p051u.h;
import p053v.c;
import p053v.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5604a;
    public d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k f5605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g f5607e = new g(this);
    public int f = 0;
    public boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f5608h = new f(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f5609i = new f(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5610j = 1;

    public m(d dVar) {
        this.b = dVar;
    }

    public static void b(f fVar, f fVar2, int i3) {
        fVar.f5598l.add(fVar2);
        fVar.f = i3;
        fVar2.f5597k.add(fVar);
    }

    public static f h(c cVar) {
        c cVar2 = cVar.f5444d;
        if (cVar2 == null) {
            return null;
        }
        d dVar = cVar2.b;
        j jVar = dVar.f5475d;
        l lVar = dVar.f5476e;
        int iA = h.a(cVar2.f5443c);
        if (iA == 1) {
            return jVar.f5608h;
        }
        if (iA == 2) {
            return lVar.f5608h;
        }
        if (iA == 3) {
            return jVar.f5609i;
        }
        if (iA == 4) {
            return lVar.f5609i;
        }
        if (iA != 5) {
            return null;
        }
        return lVar.f5602k;
    }

    public static f i(c cVar, int i3) {
        c cVar2 = cVar.f5444d;
        if (cVar2 == null) {
            return null;
        }
        d dVar = cVar2.b;
        m mVar = i3 == 0 ? dVar.f5475d : dVar.f5476e;
        int iA = h.a(cVar2.f5443c);
        if (iA == 1 || iA == 2) {
            return mVar.f5608h;
        }
        if (iA == 3 || iA == 4) {
            return mVar.f5609i;
        }
        return null;
    }

    public final void c(f fVar, f fVar2, int i3, g gVar) {
        fVar.f5598l.add(fVar2);
        fVar.f5598l.add(this.f5607e);
        fVar.f5594h = i3;
        fVar.f5595i = gVar;
        fVar2.f5597k.add(fVar);
        gVar.f5597k.add(fVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i3, int i4) {
        if (i4 == 0) {
            d dVar = this.b;
            int i5 = dVar.f5483n;
            int iMax = Math.max(dVar.f5482m, i3);
            if (i5 > 0) {
                iMax = Math.min(i5, i3);
            }
            if (iMax != i3) {
                return iMax;
            }
        } else {
            d dVar2 = this.b;
            int i6 = dVar2.f5486q;
            int iMax2 = Math.max(dVar2.f5485p, i3);
            if (i6 > 0) {
                iMax2 = Math.min(i6, i3);
            }
            if (iMax2 != i3) {
                return iMax2;
            }
        }
        return i3;
    }

    public long j() {
        g gVar = this.f5607e;
        if (gVar.f5596j) {
            return gVar.g;
        }
        return 0L;
    }

    public abstract boolean k();

    public final void l(c cVar, c cVar2, int i3) {
        f fVarH = h(cVar);
        f fVarH2 = h(cVar2);
        if (fVarH.f5596j && fVarH2.f5596j) {
            int iC = cVar.c() + fVarH.g;
            int iC2 = fVarH2.g - cVar2.c();
            int i4 = iC2 - iC;
            g gVar = this.f5607e;
            if (!gVar.f5596j && this.f5606d == 3) {
                int i5 = this.f5604a;
                if (i5 == 0) {
                    gVar.d(g(i4, i3));
                } else if (i5 == 1) {
                    gVar.d(Math.min(g(gVar.f5599m, i3), i4));
                } else if (i5 == 2) {
                    d dVar = this.b;
                    d dVar2 = dVar.f5454I;
                    if (dVar2 != null) {
                        g gVar2 = (i3 == 0 ? dVar2.f5475d : dVar2.f5476e).f5607e;
                        if (gVar2.f5596j) {
                            gVar.d(g((int) ((gVar2.g * (i3 == 0 ? dVar.f5484o : dVar.f5487r)) + 0.5f), i3));
                        }
                    }
                } else if (i5 == 3) {
                    d dVar3 = this.b;
                    m mVar = dVar3.f5475d;
                    l lVar = dVar3.f5476e;
                    if (mVar.f5606d != 3 || mVar.f5604a != 3 || lVar.f5606d != 3 || lVar.f5604a != 3) {
                        if (i3 == 0) {
                            mVar = lVar;
                        }
                        g gVar3 = mVar.f5607e;
                        if (gVar3.f5596j) {
                            float f = dVar3.f5456L;
                            gVar.d(i3 == 1 ? (int) ((gVar3.g / f) + 0.5f) : (int) ((f * gVar3.g) + 0.5f));
                        }
                    }
                }
            }
            if (gVar.f5596j) {
                int i6 = gVar.g;
                f fVar = this.f5609i;
                f fVar2 = this.f5608h;
                if (i6 == i4) {
                    fVar2.d(iC);
                    fVar.d(iC2);
                    return;
                }
                d dVar4 = this.b;
                float f3 = i3 == 0 ? dVar4.f5463S : dVar4.f5464T;
                if (fVarH == fVarH2) {
                    iC = fVarH.g;
                    iC2 = fVarH2.g;
                    f3 = 0.5f;
                }
                fVar2.d((int) ((((iC2 - iC) - i6) * f3) + iC + 0.5f));
                fVar.d(fVar2.g + gVar.g);
            }
        }
    }
}
