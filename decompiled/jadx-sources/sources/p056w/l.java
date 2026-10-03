package p056w;

import java.util.ArrayList;
import p051u.h;
import p053v.c;
import p053v.d;
import p053v.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f5602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f5603l;

    @Override // p056w.d
    public final void a(d dVar) {
        float f;
        float f3;
        float f4;
        int i3;
        if (h.a(this.f5610j) == 3) {
            d dVar2 = this.b;
            l(dVar2.f5494y, dVar2.f5446A, 1);
            return;
        }
        g gVar = this.f5607e;
        if (gVar.f5591c && !gVar.f5596j && this.f5606d == 3) {
            d dVar3 = this.b;
            int i4 = dVar3.f5480k;
            if (i4 == 2) {
                d dVar4 = dVar3.f5454I;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f5476e.f5607e;
                    if (gVar2.f5596j) {
                        gVar.d((int) ((gVar2.g * dVar3.f5487r) + 0.5f));
                    }
                }
            } else if (i4 == 3) {
                g gVar3 = dVar3.f5475d.f5607e;
                if (gVar3.f5596j) {
                    int i5 = dVar3.f5457M;
                    if (i5 != -1) {
                        if (i5 == 0) {
                            f4 = gVar3.g * dVar3.f5456L;
                            i3 = (int) (f4 + 0.5f);
                        } else if (i5 != 1) {
                            i3 = 0;
                        } else {
                            f = gVar3.g;
                            f3 = dVar3.f5456L;
                        }
                        gVar.d(i3);
                    } else {
                        f = gVar3.g;
                        f3 = dVar3.f5456L;
                    }
                    f4 = f / f3;
                    i3 = (int) (f4 + 0.5f);
                    gVar.d(i3);
                }
            }
        }
        f fVar = this.f5608h;
        boolean z2 = fVar.f5591c;
        ArrayList arrayList = fVar.f5598l;
        if (z2) {
            f fVar2 = this.f5609i;
            boolean z3 = fVar2.f5591c;
            ArrayList arrayList2 = fVar2.f5598l;
            if (z3) {
                if (fVar.f5596j && fVar2.f5596j && gVar.f5596j) {
                    return;
                }
                if (!gVar.f5596j && this.f5606d == 3) {
                    d dVar5 = this.b;
                    if (dVar5.f5479j == 0 && !dVar5.r()) {
                        f fVar3 = (f) arrayList.get(0);
                        f fVar4 = (f) arrayList2.get(0);
                        int i6 = fVar3.g + fVar.f;
                        int i7 = fVar4.g + fVar2.f;
                        fVar.d(i6);
                        fVar2.d(i7);
                        gVar.d(i7 - i6);
                        return;
                    }
                }
                if (!gVar.f5596j && this.f5606d == 3 && this.f5604a == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                    f fVar5 = (f) arrayList.get(0);
                    int i8 = (((f) arrayList2.get(0)).g + fVar2.f) - (fVar5.g + fVar.f);
                    int i9 = gVar.f5599m;
                    if (i8 < i9) {
                        gVar.d(i8);
                    } else {
                        gVar.d(i9);
                    }
                }
                if (gVar.f5596j && arrayList.size() > 0 && arrayList2.size() > 0) {
                    f fVar6 = (f) arrayList.get(0);
                    f fVar7 = (f) arrayList2.get(0);
                    int i10 = fVar6.g;
                    int i11 = fVar.f + i10;
                    int i12 = fVar7.g;
                    int i13 = fVar2.f + i12;
                    float f5 = this.b.f5464T;
                    if (fVar6 == fVar7) {
                        f5 = 0.5f;
                    } else {
                        i10 = i11;
                        i12 = i13;
                    }
                    fVar.d((int) ((((i12 - i10) - gVar.g) * f5) + i10 + 0.5f));
                    fVar2.d(fVar.g + gVar.g);
                }
            }
        }
    }

    @Override // p056w.m
    public final void d() {
        d dVar;
        d dVar2;
        d dVar3;
        d dVar4;
        f fVar = this.f5602k;
        d dVar5 = this.b;
        boolean z2 = dVar5.f5470a;
        g gVar = this.f5607e;
        if (z2) {
            gVar.d(dVar5.i());
        }
        boolean z3 = gVar.f5596j;
        ArrayList arrayList = gVar.f5597k;
        ArrayList arrayList2 = gVar.f5598l;
        f fVar2 = this.f5609i;
        f fVar3 = this.f5608h;
        if (!z3) {
            d dVar6 = this.b;
            this.f5606d = dVar6.f5474c0[1];
            if (dVar6.f5492w) {
                this.f5603l = new a(this);
            }
            int i3 = this.f5606d;
            if (i3 != 3) {
                if (i3 == 4 && (dVar4 = this.b.f5454I) != null) {
                    l lVar = dVar4.f5476e;
                    if (dVar4.f5474c0[1] == 1) {
                        int i4 = (dVar4.i() - this.b.f5494y.c()) - this.b.f5446A.c();
                        m.b(fVar3, lVar.f5608h, this.b.f5494y.c());
                        m.b(fVar2, lVar.f5609i, -this.b.f5446A.c());
                        gVar.d(i4);
                        return;
                    }
                }
                if (i3 == 1) {
                    gVar.d(this.b.i());
                }
            }
        } else if (this.f5606d == 4 && (dVar2 = (dVar = this.b).f5454I) != null) {
            l lVar2 = dVar2.f5476e;
            if (dVar2.f5474c0[1] == 1) {
                m.b(fVar3, lVar2.f5608h, dVar.f5494y.c());
                m.b(fVar2, lVar2.f5609i, -this.b.f5446A.c());
                return;
            }
        }
        boolean z4 = gVar.f5596j;
        if (z4) {
            d dVar7 = this.b;
            if (dVar7.f5470a) {
                c[] cVarArr = dVar7.f5451F;
                c cVar = cVarArr[2];
                c cVar2 = cVar.f5444d;
                if (cVar2 != null && cVarArr[3].f5444d != null) {
                    if (dVar7.r()) {
                        fVar3.f = this.b.f5451F[2].c();
                        fVar2.f = -this.b.f5451F[3].c();
                    } else {
                        f fVarH = m.h(this.b.f5451F[2]);
                        if (fVarH != null) {
                            m.b(fVar3, fVarH, this.b.f5451F[2].c());
                        }
                        f fVarH2 = m.h(this.b.f5451F[3]);
                        if (fVarH2 != null) {
                            m.b(fVar2, fVarH2, -this.b.f5451F[3].c());
                        }
                        fVar3.b = true;
                        fVar2.b = true;
                    }
                    d dVar8 = this.b;
                    if (dVar8.f5492w) {
                        m.b(fVar, fVar3, dVar8.f5460P);
                        return;
                    }
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = m.h(cVar);
                    if (fVarH3 != null) {
                        m.b(fVar3, fVarH3, this.b.f5451F[2].c());
                        m.b(fVar2, fVar3, gVar.g);
                        d dVar9 = this.b;
                        if (dVar9.f5492w) {
                            m.b(fVar, fVar3, dVar9.f5460P);
                            return;
                        }
                        return;
                    }
                    return;
                }
                c cVar3 = cVarArr[3];
                if (cVar3.f5444d != null) {
                    f fVarH4 = m.h(cVar3);
                    if (fVarH4 != null) {
                        m.b(fVar2, fVarH4, -this.b.f5451F[3].c());
                        m.b(fVar3, fVar2, -gVar.g);
                    }
                    d dVar10 = this.b;
                    if (dVar10.f5492w) {
                        m.b(fVar, fVar3, dVar10.f5460P);
                        return;
                    }
                    return;
                }
                c cVar4 = cVarArr[4];
                if (cVar4.f5444d != null) {
                    f fVarH5 = m.h(cVar4);
                    if (fVarH5 != null) {
                        m.b(fVar, fVarH5, 0);
                        m.b(fVar3, fVar, -this.b.f5460P);
                        m.b(fVar2, fVar3, gVar.g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof i) || dVar7.f5454I == null || dVar7.g(7).f5444d != null) {
                    return;
                }
                d dVar11 = this.b;
                m.b(fVar3, dVar11.f5454I.f5476e.f5608h, dVar11.n());
                m.b(fVar2, fVar3, gVar.g);
                d dVar12 = this.b;
                if (dVar12.f5492w) {
                    m.b(fVar, fVar3, dVar12.f5460P);
                    return;
                }
                return;
            }
        }
        if (z4 || this.f5606d != 3) {
            gVar.b(this);
        } else {
            d dVar13 = this.b;
            int i5 = dVar13.f5480k;
            if (i5 == 2) {
                d dVar14 = dVar13.f5454I;
                if (dVar14 != null) {
                    g gVar2 = dVar14.f5476e.f5607e;
                    arrayList2.add(gVar2);
                    gVar2.f5597k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar3);
                    arrayList.add(fVar2);
                }
            } else if (i5 == 3 && !dVar13.r()) {
                d dVar15 = this.b;
                if (dVar15.f5479j != 3) {
                    g gVar3 = dVar15.f5475d.f5607e;
                    arrayList2.add(gVar3);
                    gVar3.f5597k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar3);
                    arrayList.add(fVar2);
                }
            }
        }
        d dVar16 = this.b;
        c[] cVarArr2 = dVar16.f5451F;
        c cVar5 = cVarArr2[2];
        c cVar6 = cVar5.f5444d;
        if (cVar6 != null && cVarArr2[3].f5444d != null) {
            if (dVar16.r()) {
                fVar3.f = this.b.f5451F[2].c();
                fVar2.f = -this.b.f5451F[3].c();
            } else {
                f fVarH6 = m.h(this.b.f5451F[2]);
                f fVarH7 = m.h(this.b.f5451F[3]);
                fVarH6.b(this);
                fVarH7.b(this);
                this.f5610j = 4;
            }
            if (this.b.f5492w) {
                c(fVar, fVar3, 1, this.f5603l);
            }
        } else if (cVar6 != null) {
            f fVarH8 = m.h(cVar5);
            if (fVarH8 != null) {
                m.b(fVar3, fVarH8, this.b.f5451F[2].c());
                c(fVar2, fVar3, 1, gVar);
                if (this.b.f5492w) {
                    c(fVar, fVar3, 1, this.f5603l);
                }
                if (this.f5606d == 3) {
                    d dVar17 = this.b;
                    if (dVar17.f5456L > 0.0f) {
                        j jVar = dVar17.f5475d;
                        if (jVar.f5606d == 3) {
                            jVar.f5607e.f5597k.add(gVar);
                            arrayList2.add(this.b.f5475d.f5607e);
                            gVar.f5590a = this;
                        }
                    }
                }
            }
        } else {
            c cVar7 = cVarArr2[3];
            if (cVar7.f5444d != null) {
                f fVarH9 = m.h(cVar7);
                if (fVarH9 != null) {
                    m.b(fVar2, fVarH9, -this.b.f5451F[3].c());
                    c(fVar3, fVar2, -1, gVar);
                    if (this.b.f5492w) {
                        c(fVar, fVar3, 1, this.f5603l);
                    }
                }
            } else {
                c cVar8 = cVarArr2[4];
                if (cVar8.f5444d != null) {
                    f fVarH10 = m.h(cVar8);
                    if (fVarH10 != null) {
                        m.b(fVar, fVarH10, 0);
                        c(fVar3, fVar, -1, this.f5603l);
                        c(fVar2, fVar3, 1, gVar);
                    }
                } else if (!(dVar16 instanceof i) && (dVar3 = dVar16.f5454I) != null) {
                    m.b(fVar3, dVar3.f5476e.f5608h, dVar16.n());
                    c(fVar2, fVar3, 1, gVar);
                    if (this.b.f5492w) {
                        c(fVar, fVar3, 1, this.f5603l);
                    }
                    if (this.f5606d == 3) {
                        d dVar18 = this.b;
                        if (dVar18.f5456L > 0.0f) {
                            j jVar2 = dVar18.f5475d;
                            if (jVar2.f5606d == 3) {
                                jVar2.f5607e.f5597k.add(gVar);
                                arrayList2.add(this.b.f5475d.f5607e);
                                gVar.f5590a = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            gVar.f5591c = true;
        }
    }

    @Override // p056w.m
    public final void e() {
        f fVar = this.f5608h;
        if (fVar.f5596j) {
            this.b.f5459O = fVar.g;
        }
    }

    @Override // p056w.m
    public final void f() {
        this.f5605c = null;
        this.f5608h.c();
        this.f5609i.c();
        this.f5602k.c();
        this.f5607e.c();
        this.g = false;
    }

    @Override // p056w.m
    public final boolean k() {
        return this.f5606d != 3 || this.b.f5480k == 0;
    }

    public final void m() {
        this.g = false;
        f fVar = this.f5608h;
        fVar.c();
        fVar.f5596j = false;
        f fVar2 = this.f5609i;
        fVar2.c();
        fVar2.f5596j = false;
        f fVar3 = this.f5602k;
        fVar3.c();
        fVar3.f5596j = false;
        this.f5607e.f5596j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.b.f5467W;
    }
}
