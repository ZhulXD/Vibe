package p056w;

import java.util.ArrayList;
import p051u.h;
import p053v.c;
import p053v.d;
import p053v.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f5600k = new int[2];

    public static void m(int[] iArr, int i3, int i4, int i5, int i6, float f, int i7) {
        int i8 = i4 - i3;
        int i9 = i6 - i5;
        if (i7 != -1) {
            if (i7 == 0) {
                iArr[0] = (int) ((i9 * f) + 0.5f);
                iArr[1] = i9;
                return;
            } else {
                if (i7 != 1) {
                    return;
                }
                iArr[0] = i8;
                iArr[1] = (int) ((i8 * f) + 0.5f);
                return;
            }
        }
        int i10 = (int) ((i9 * f) + 0.5f);
        int i11 = (int) ((i8 / f) + 0.5f);
        if (i10 <= i8) {
            iArr[0] = i10;
            iArr[1] = i9;
        } else if (i11 <= i9) {
            iArr[0] = i8;
            iArr[1] = i11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0262  */
    /* JADX WARN: Code duplicated, block: B:118:0x0272  */
    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    @Override // p056w.d
    public final void a(d dVar) {
        float f;
        int iG;
        int i3;
        int iG2;
        float f3;
        float f4;
        float f5;
        int i4;
        if (h.a(this.f5610j) == 3) {
            d dVar2 = this.b;
            l(dVar2.f5493x, dVar2.f5495z, 0);
            return;
        }
        g gVar = this.f5607e;
        boolean z2 = gVar.f5596j;
        f fVar = this.f5608h;
        f fVar2 = this.f5609i;
        if (z2 || this.f5606d != 3) {
            f = 0.5f;
        } else {
            d dVar3 = this.b;
            int i5 = dVar3.f5479j;
            l lVar = dVar3.f5476e;
            if (i5 == 2) {
                f = 0.5f;
                d dVar4 = dVar3.f5454I;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f5475d.f5607e;
                    if (gVar2.f5596j) {
                        gVar.d((int) ((gVar2.g * dVar3.f5484o) + 0.5f));
                    }
                }
            } else if (i5 == 3) {
                int i6 = dVar3.f5480k;
                if (i6 == 0 || i6 == 3) {
                    f fVar3 = lVar.f5608h;
                    f fVar4 = lVar.f5609i;
                    boolean z3 = dVar3.f5493x.f5444d != null;
                    boolean z4 = dVar3.f5494y.f5444d != null;
                    boolean z5 = dVar3.f5495z.f5444d != null;
                    boolean z6 = dVar3.f5446A.f5444d != null;
                    f = 0.5f;
                    int i7 = dVar3.f5457M;
                    if (z3 && z4 && z5 && z6) {
                        float f6 = dVar3.f5456L;
                        boolean z7 = fVar3.f5596j;
                        ArrayList arrayList = fVar3.f5598l;
                        int[] iArr = f5600k;
                        if (z7 && fVar4.f5596j) {
                            if (fVar.f5591c && fVar2.f5591c) {
                                m(iArr, ((f) fVar.f5598l.get(0)).g + fVar.f, ((f) fVar2.f5598l.get(0)).g - fVar2.f, fVar3.g + fVar3.f, fVar4.g - fVar4.f, f6, i7);
                                gVar.d(iArr[0]);
                                this.b.f5476e.f5607e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        if (fVar.f5596j && fVar2.f5596j) {
                            if (!fVar3.f5591c || !fVar4.f5591c) {
                                return;
                            }
                            m(iArr, fVar.g + fVar.f, fVar2.g - fVar2.f, ((f) arrayList.get(0)).g + fVar3.f, ((f) fVar4.f5598l.get(0)).g - fVar4.f, f6, i7);
                            gVar.d(iArr[0]);
                            this.b.f5476e.f5607e.d(iArr[1]);
                        }
                        if (!fVar.f5591c || !fVar2.f5591c || !fVar3.f5591c || !fVar4.f5591c) {
                            return;
                        }
                        m(iArr, ((f) fVar.f5598l.get(0)).g + fVar.f, ((f) fVar2.f5598l.get(0)).g - fVar2.f, ((f) arrayList.get(0)).g + fVar3.f, ((f) fVar4.f5598l.get(0)).g - fVar4.f, f6, i7);
                        gVar.d(iArr[0]);
                        this.b.f5476e.f5607e.d(iArr[1]);
                    } else if (z3 && z5) {
                        if (!fVar.f5591c || !fVar2.f5591c) {
                            return;
                        }
                        float f7 = dVar3.f5456L;
                        int i8 = ((f) fVar.f5598l.get(0)).g + fVar.f;
                        int i9 = ((f) fVar2.f5598l.get(0)).g - fVar2.f;
                        if (i7 == -1 || i7 == 0) {
                            int iG3 = g(i9 - i8, 0);
                            int i10 = (int) ((iG3 * f7) + 0.5f);
                            int iG4 = g(i10, 1);
                            if (i10 != iG4) {
                                iG3 = (int) ((iG4 / f7) + 0.5f);
                            }
                            gVar.d(iG3);
                            this.b.f5476e.f5607e.d(iG4);
                        } else if (i7 == 1) {
                            int iG5 = g(i9 - i8, 0);
                            int i11 = (int) ((iG5 / f7) + 0.5f);
                            int iG6 = g(i11, 1);
                            if (i11 != iG6) {
                                iG5 = (int) ((iG6 * f7) + 0.5f);
                            }
                            gVar.d(iG5);
                            this.b.f5476e.f5607e.d(iG6);
                        }
                    } else if (z4 && z6) {
                        if (!fVar3.f5591c || !fVar4.f5591c) {
                            return;
                        }
                        float f8 = dVar3.f5456L;
                        int i12 = ((f) fVar3.f5598l.get(0)).g + fVar3.f;
                        int i13 = ((f) fVar4.f5598l.get(0)).g - fVar4.f;
                        if (i7 == -1) {
                            iG = g(i13 - i12, 1);
                            i3 = (int) ((iG / f8) + 0.5f);
                            iG2 = g(i3, 0);
                            if (i3 != iG2) {
                                iG = (int) ((iG2 * f8) + 0.5f);
                            }
                            gVar.d(iG2);
                            this.b.f5476e.f5607e.d(iG);
                        } else if (i7 == 0) {
                            int iG7 = g(i13 - i12, 1);
                            int i14 = (int) ((iG7 * f8) + 0.5f);
                            int iG8 = g(i14, 0);
                            if (i14 != iG8) {
                                iG7 = (int) ((iG8 / f8) + 0.5f);
                            }
                            gVar.d(iG8);
                            this.b.f5476e.f5607e.d(iG7);
                        } else if (i7 == 1) {
                            iG = g(i13 - i12, 1);
                            i3 = (int) ((iG / f8) + 0.5f);
                            iG2 = g(i3, 0);
                            if (i3 != iG2) {
                                iG = (int) ((iG2 * f8) + 0.5f);
                            }
                            gVar.d(iG2);
                            this.b.f5476e.f5607e.d(iG);
                        }
                    }
                } else {
                    int i15 = dVar3.f5457M;
                    if (i15 != -1) {
                        if (i15 == 0) {
                            f5 = lVar.f5607e.g / dVar3.f5456L;
                            i4 = (int) (f5 + 0.5f);
                        } else if (i15 != 1) {
                            i4 = 0;
                        } else {
                            f3 = lVar.f5607e.g;
                            f4 = dVar3.f5456L;
                        }
                        gVar.d(i4);
                        f = 0.5f;
                    } else {
                        f3 = lVar.f5607e.g;
                        f4 = dVar3.f5456L;
                    }
                    f5 = f3 * f4;
                    i4 = (int) (f5 + 0.5f);
                    gVar.d(i4);
                    f = 0.5f;
                }
            } else {
                f = 0.5f;
            }
        }
        boolean z8 = fVar.f5591c;
        ArrayList arrayList2 = fVar.f5598l;
        if (z8) {
            boolean z9 = fVar2.f5591c;
            ArrayList arrayList3 = fVar2.f5598l;
            if (z9) {
                if (fVar.f5596j && fVar2.f5596j && gVar.f5596j) {
                    return;
                }
                if (!gVar.f5596j && this.f5606d == 3) {
                    d dVar5 = this.b;
                    if (dVar5.f5479j == 0 && !dVar5.q()) {
                        f fVar5 = (f) arrayList2.get(0);
                        f fVar6 = (f) arrayList3.get(0);
                        int i16 = fVar5.g + fVar.f;
                        int i17 = fVar6.g + fVar2.f;
                        fVar.d(i16);
                        fVar2.d(i17);
                        gVar.d(i17 - i16);
                        return;
                    }
                }
                if (!gVar.f5596j && this.f5606d == 3 && this.f5604a == 1 && arrayList2.size() > 0 && arrayList3.size() > 0) {
                    int iMin = Math.min((((f) arrayList3.get(0)).g + fVar2.f) - (((f) arrayList2.get(0)).g + fVar.f), gVar.f5599m);
                    d dVar6 = this.b;
                    int i18 = dVar6.f5483n;
                    int iMax = Math.max(dVar6.f5482m, iMin);
                    if (i18 > 0) {
                        iMax = Math.min(i18, iMax);
                    }
                    gVar.d(iMax);
                }
                if (gVar.f5596j) {
                    f fVar7 = (f) arrayList2.get(0);
                    f fVar8 = (f) arrayList3.get(0);
                    int i19 = fVar7.g;
                    int i20 = fVar.f + i19;
                    int i21 = fVar8.g;
                    int i22 = fVar2.f + i21;
                    float f9 = this.b.f5463S;
                    if (fVar7 == fVar8) {
                        f9 = f;
                    } else {
                        i19 = i20;
                        i21 = i22;
                    }
                    fVar.d((int) ((((i21 - i19) - gVar.g) * f9) + i19 + f));
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
        d dVar5 = this.b;
        boolean z2 = dVar5.f5470a;
        g gVar = this.f5607e;
        if (z2) {
            gVar.d(dVar5.l());
        }
        boolean z3 = gVar.f5596j;
        ArrayList arrayList = gVar.f5597k;
        ArrayList arrayList2 = gVar.f5598l;
        f fVar = this.f5609i;
        f fVar2 = this.f5608h;
        if (!z3) {
            d dVar6 = this.b;
            int i3 = dVar6.f5474c0[0];
            this.f5606d = i3;
            if (i3 != 3) {
                if (i3 == 4 && (((dVar4 = dVar6.f5454I) != null && dVar4.f5474c0[0] == 1) || dVar4.f5474c0[0] == 4)) {
                    int iL = dVar4.l();
                    j jVar = dVar4.f5475d;
                    int iC = (iL - this.b.f5493x.c()) - this.b.f5495z.c();
                    m.b(fVar2, jVar.f5608h, this.b.f5493x.c());
                    m.b(fVar, jVar.f5609i, -this.b.f5495z.c());
                    gVar.d(iC);
                    return;
                }
                if (i3 == 1) {
                    gVar.d(dVar6.l());
                }
            }
        } else if (this.f5606d == 4 && (((dVar2 = (dVar = this.b).f5454I) != null && dVar2.f5474c0[0] == 1) || dVar2.f5474c0[0] == 4)) {
            m.b(fVar2, dVar2.f5475d.f5608h, dVar.f5493x.c());
            m.b(fVar, dVar2.f5475d.f5609i, -this.b.f5495z.c());
            return;
        }
        if (gVar.f5596j) {
            d dVar7 = this.b;
            if (dVar7.f5470a) {
                c[] cVarArr = dVar7.f5451F;
                c cVar = cVarArr[0];
                c cVar2 = cVar.f5444d;
                if (cVar2 != null && cVarArr[1].f5444d != null) {
                    if (dVar7.q()) {
                        fVar2.f = this.b.f5451F[0].c();
                        fVar.f = -this.b.f5451F[1].c();
                        return;
                    }
                    f fVarH = m.h(this.b.f5451F[0]);
                    if (fVarH != null) {
                        m.b(fVar2, fVarH, this.b.f5451F[0].c());
                    }
                    f fVarH2 = m.h(this.b.f5451F[1]);
                    if (fVarH2 != null) {
                        m.b(fVar, fVarH2, -this.b.f5451F[1].c());
                    }
                    fVar2.b = true;
                    fVar.b = true;
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = m.h(cVar);
                    if (fVarH3 != null) {
                        m.b(fVar2, fVarH3, this.b.f5451F[0].c());
                        m.b(fVar, fVar2, gVar.g);
                        return;
                    }
                    return;
                }
                c cVar3 = cVarArr[1];
                if (cVar3.f5444d != null) {
                    f fVarH4 = m.h(cVar3);
                    if (fVarH4 != null) {
                        m.b(fVar, fVarH4, -this.b.f5451F[1].c());
                        m.b(fVar2, fVar, -gVar.g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof i) || dVar7.f5454I == null || dVar7.g(7).f5444d != null) {
                    return;
                }
                d dVar8 = this.b;
                m.b(fVar2, dVar8.f5454I.f5475d.f5608h, dVar8.m());
                m.b(fVar, fVar2, gVar.g);
                return;
            }
        }
        if (this.f5606d == 3) {
            d dVar9 = this.b;
            int i4 = dVar9.f5479j;
            l lVar = dVar9.f5476e;
            if (i4 == 2) {
                d dVar10 = dVar9.f5454I;
                if (dVar10 != null) {
                    g gVar2 = dVar10.f5476e.f5607e;
                    arrayList2.add(gVar2);
                    gVar2.f5597k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar2);
                    arrayList.add(fVar);
                }
            } else if (i4 == 3) {
                if (dVar9.f5480k == 3) {
                    fVar2.f5590a = this;
                    fVar.f5590a = this;
                    lVar.f5608h.f5590a = this;
                    lVar.f5609i.f5590a = this;
                    gVar.f5590a = this;
                    if (dVar9.r()) {
                        arrayList2.add(this.b.f5476e.f5607e);
                        this.b.f5476e.f5607e.f5597k.add(gVar);
                        l lVar2 = this.b.f5476e;
                        lVar2.f5607e.f5590a = this;
                        arrayList2.add(lVar2.f5608h);
                        arrayList2.add(this.b.f5476e.f5609i);
                        this.b.f5476e.f5608h.f5597k.add(gVar);
                        this.b.f5476e.f5609i.f5597k.add(gVar);
                    } else if (this.b.q()) {
                        this.b.f5476e.f5607e.f5598l.add(gVar);
                        arrayList.add(this.b.f5476e.f5607e);
                    } else {
                        this.b.f5476e.f5607e.f5598l.add(gVar);
                    }
                } else {
                    g gVar3 = lVar.f5607e;
                    arrayList2.add(gVar3);
                    gVar3.f5597k.add(gVar);
                    this.b.f5476e.f5608h.f5597k.add(gVar);
                    this.b.f5476e.f5609i.f5597k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar2);
                    arrayList.add(fVar);
                    fVar2.f5598l.add(gVar);
                    fVar.f5598l.add(gVar);
                }
            }
        }
        d dVar11 = this.b;
        c[] cVarArr2 = dVar11.f5451F;
        c cVar4 = cVarArr2[0];
        c cVar5 = cVar4.f5444d;
        if (cVar5 != null && cVarArr2[1].f5444d != null) {
            if (dVar11.q()) {
                fVar2.f = this.b.f5451F[0].c();
                fVar.f = -this.b.f5451F[1].c();
                return;
            }
            f fVarH5 = m.h(this.b.f5451F[0]);
            f fVarH6 = m.h(this.b.f5451F[1]);
            fVarH5.b(this);
            fVarH6.b(this);
            this.f5610j = 4;
            return;
        }
        if (cVar5 != null) {
            f fVarH7 = m.h(cVar4);
            if (fVarH7 != null) {
                m.b(fVar2, fVarH7, this.b.f5451F[0].c());
                c(fVar, fVar2, 1, gVar);
                return;
            }
            return;
        }
        c cVar6 = cVarArr2[1];
        if (cVar6.f5444d != null) {
            f fVarH8 = m.h(cVar6);
            if (fVarH8 != null) {
                m.b(fVar, fVarH8, -this.b.f5451F[1].c());
                c(fVar2, fVar, -1, gVar);
                return;
            }
            return;
        }
        if ((dVar11 instanceof i) || (dVar3 = dVar11.f5454I) == null) {
            return;
        }
        m.b(fVar2, dVar3.f5475d.f5608h, dVar11.m());
        c(fVar, fVar2, 1, gVar);
    }

    @Override // p056w.m
    public final void e() {
        f fVar = this.f5608h;
        if (fVar.f5596j) {
            this.b.f5458N = fVar.g;
        }
    }

    @Override // p056w.m
    public final void f() {
        this.f5605c = null;
        this.f5608h.c();
        this.f5609i.c();
        this.f5607e.c();
        this.g = false;
    }

    @Override // p056w.m
    public final boolean k() {
        return this.f5606d != 3 || this.b.f5479j == 0;
    }

    public final void n() {
        this.g = false;
        f fVar = this.f5608h;
        fVar.c();
        fVar.f5596j = false;
        f fVar2 = this.f5609i;
        fVar2.c();
        fVar2.f5596j = false;
        this.f5607e.f5596j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.b.f5467W;
    }
}
