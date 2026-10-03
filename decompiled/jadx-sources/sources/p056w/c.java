package p056w;

import java.util.ArrayList;
import kotlin.collections.unsigned.a;
import p053v.d;
import p053v.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f5583k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5584l;

    public c(d dVar, int i3) {
        d dVar2;
        super(dVar);
        ArrayList arrayList = new ArrayList();
        this.f5583k = arrayList;
        this.f = i3;
        d dVar3 = this.b;
        d dVarK = dVar3.k(i3);
        while (true) {
            dVar2 = dVar3;
            dVar3 = dVarK;
            if (dVar3 == null) {
                break;
            } else {
                dVarK = dVar3.k(this.f);
            }
        }
        this.b = dVar2;
        int i4 = this.f;
        arrayList.add(i4 == 0 ? dVar2.f5475d : i4 == 1 ? dVar2.f5476e : null);
        d dVarJ = dVar2.j(this.f);
        while (dVarJ != null) {
            int i5 = this.f;
            arrayList.add(i5 == 0 ? dVarJ.f5475d : i5 == 1 ? dVarJ.f5476e : null);
            dVarJ = dVarJ.j(this.f);
        }
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            m mVar = (m) obj;
            int i7 = this.f;
            if (i7 == 0) {
                mVar.b.b = this;
            } else if (i7 == 1) {
                mVar.b.f5473c = this;
            }
        }
        if (this.f == 0 && ((e) this.b.f5454I).f5500h0 && arrayList.size() > 1) {
            this.b = ((m) arrayList.get(arrayList.size() - 1)).b;
        }
        this.f5584l = this.f == 0 ? this.b.f5468X : this.b.f5469Y;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x01bc A[PHI: r1 r26
      0x01bc: PHI (r1v57 int) = (r1v55 int), (r1v60 int) binds: [B:120:0x01ba, B:111:0x019a] A[DONT_GENERATE, DONT_INLINE]
      0x01bc: PHI (r26v1 int) = (r26v0 int), (r26v3 int) binds: [B:120:0x01ba, B:111:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:302:0x00ea A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:66:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00df  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e2 A[ADDED_TO_REGION] */
    @Override // p056w.d
    public final void a(d dVar) {
        int i3;
        int i4;
        boolean z2;
        float f;
        int i5;
        int i6;
        int i7;
        int i8;
        float f3;
        int i9;
        int i10;
        int i11;
        int iMax;
        int i12;
        int i13;
        float f4;
        f fVar = this.f5608h;
        if (fVar.f5596j) {
            f fVar2 = this.f5609i;
            if (fVar2.f5596j) {
                d dVar2 = this.b.f5454I;
                boolean z3 = (dVar2 == null || !(dVar2 instanceof e)) ? false : ((e) dVar2).f5500h0;
                int i14 = fVar2.g - fVar.g;
                ArrayList arrayList = this.f5583k;
                int size = arrayList.size();
                int i15 = 0;
                while (true) {
                    i3 = -1;
                    i4 = 8;
                    if (i15 >= size) {
                        i15 = -1;
                        break;
                    } else if (((m) arrayList.get(i15)).b.f5466V != 8) {
                        break;
                    } else {
                        i15++;
                    }
                }
                int i16 = size - 1;
                for (int i17 = i16; i17 >= 0; i17--) {
                    if (((m) arrayList.get(i17)).b.f5466V != 8) {
                        i3 = i17;
                        break;
                    }
                }
                int i18 = 0;
                while (true) {
                    if (i18 >= 2) {
                        z2 = z3;
                        f = 0.0f;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        break;
                    }
                    f = 0.0f;
                    int i19 = 0;
                    i7 = 0;
                    int i20 = 0;
                    int i21 = 0;
                    while (i19 < size) {
                        m mVar = (m) arrayList.get(i19);
                        d dVar3 = mVar.b;
                        boolean z4 = z3;
                        if (dVar3.f5466V == i4) {
                            i12 = i18;
                        } else {
                            i21++;
                            if (i19 > 0 && i19 >= i15) {
                                i7 += mVar.f5608h.f;
                            }
                            g gVar = mVar.f5607e;
                            int i22 = gVar.g;
                            i12 = i18;
                            boolean z5 = mVar.f5606d != 3;
                            if (z5) {
                                int i23 = this.f;
                                if (i23 == 0 && !dVar3.f5475d.f5607e.f5596j) {
                                    return;
                                }
                                if (i23 == 1 && !dVar3.f5476e.f5607e.f5596j) {
                                    return;
                                }
                            } else {
                                if (mVar.f5604a == 1 && i12 == 0) {
                                    i13 = gVar.f5599m;
                                    i20++;
                                } else {
                                    if (gVar.f5596j) {
                                        i13 = i22;
                                    }
                                    if (z5) {
                                        i7 += i13;
                                    } else {
                                        i20++;
                                        f4 = dVar3.Z[this.f];
                                        if (f4 >= 0.0f) {
                                            f += f4;
                                        }
                                    }
                                    if (i19 >= i16 && i19 < i3) {
                                        i7 += -mVar.f5609i.f;
                                    }
                                }
                                z5 = true;
                                if (z5) {
                                    i20++;
                                    f4 = dVar3.Z[this.f];
                                    if (f4 >= 0.0f) {
                                        f += f4;
                                    }
                                } else {
                                    i7 += i13;
                                }
                                if (i19 >= i16) {
                                }
                            }
                            i13 = i22;
                            if (z5) {
                                i20++;
                                f4 = dVar3.Z[this.f];
                                if (f4 >= 0.0f) {
                                    f += f4;
                                }
                            } else {
                                i7 += i13;
                            }
                            if (i19 >= i16) {
                            }
                        }
                        i19++;
                        z3 = z4;
                        i18 = i12;
                        i4 = 8;
                    }
                    z2 = z3;
                    int i24 = i18;
                    if (i7 < i14 || i20 == 0) {
                        i5 = i20;
                        i6 = i21;
                        break;
                    } else {
                        i18 = i24 + 1;
                        z3 = z2;
                        i4 = 8;
                    }
                }
                int i25 = fVar.g;
                if (z2) {
                    i25 = fVar2.g;
                }
                float f5 = 0.5f;
                if (i7 > i14) {
                    i25 = z2 ? i25 + ((int) (((i7 - i14) / 2.0f) + 0.5f)) : i25 - ((int) (((i7 - i14) / 2.0f) + 0.5f));
                }
                if (i5 > 0) {
                    float f6 = i14 - i7;
                    int i26 = (int) ((f6 / i5) + 0.5f);
                    int i27 = 0;
                    int i28 = 0;
                    while (i27 < size) {
                        float f7 = f5;
                        m mVar2 = (m) arrayList.get(i27);
                        int i29 = i25;
                        d dVar4 = mVar2.b;
                        int i30 = i5;
                        g gVar2 = mVar2.f5607e;
                        float f8 = f6;
                        int i31 = i26;
                        if (dVar4.f5466V == 8 || mVar2.f5606d != 3 || gVar2.f5596j) {
                            i11 = i27;
                        } else {
                            int i32 = f > 0.0f ? (int) (((dVar4.Z[this.f] * f8) / f) + f7) : i31;
                            if (this.f == 0) {
                                int i33 = dVar4.f5483n;
                                i11 = i27;
                                iMax = Math.max(dVar4.f5482m, mVar2.f5604a == 1 ? Math.min(i32, gVar2.f5599m) : i32);
                                if (i33 > 0) {
                                    iMax = Math.min(i33, iMax);
                                }
                                if (iMax != i32) {
                                    i28++;
                                    i32 = iMax;
                                }
                            } else {
                                i11 = i27;
                                int i34 = dVar4.f5486q;
                                iMax = Math.max(dVar4.f5485p, mVar2.f5604a == 1 ? Math.min(i32, gVar2.f5599m) : i32);
                                if (i34 > 0) {
                                    iMax = Math.min(i34, iMax);
                                }
                                if (iMax != i32) {
                                    i28++;
                                    i32 = iMax;
                                }
                            }
                            gVar2.d(i32);
                        }
                        i27 = i11 + 1;
                        i25 = i29;
                        f5 = f7;
                        i5 = i30;
                        f6 = f8;
                        i26 = i31;
                    }
                    i8 = i25;
                    f3 = f5;
                    int i35 = i5;
                    if (i28 > 0) {
                        i5 = i35 - i28;
                        i7 = 0;
                        for (int i36 = 0; i36 < size; i36++) {
                            m mVar3 = (m) arrayList.get(i36);
                            if (mVar3.b.f5466V != 8) {
                                if (i36 > 0 && i36 >= i15) {
                                    i7 += mVar3.f5608h.f;
                                }
                                i7 += mVar3.f5607e.g;
                                if (i36 < i16 && i36 < i3) {
                                    i7 += -mVar3.f5609i.f;
                                }
                            }
                        }
                    } else {
                        i5 = i35;
                    }
                    i10 = 2;
                    if (this.f5584l == 2 && i28 == 0) {
                        i9 = 0;
                        this.f5584l = 0;
                    } else {
                        i9 = 0;
                    }
                } else {
                    i8 = i25;
                    f3 = 0.5f;
                    i9 = 0;
                    i10 = 2;
                }
                if (i7 > i14) {
                    this.f5584l = i10;
                }
                if (i6 > 0 && i5 == 0 && i15 == i3) {
                    this.f5584l = i10;
                }
                int i37 = this.f5584l;
                if (i37 == 1) {
                    int i38 = i6 > 1 ? (i14 - i7) / (i6 - 1) : i6 == 1 ? (i14 - i7) / 2 : i9;
                    if (i5 > 0) {
                        i38 = i9;
                    }
                    int i39 = i8;
                    for (int i40 = i9; i40 < size; i40++) {
                        m mVar4 = (m) arrayList.get(z2 ? size - (i40 + 1) : i40);
                        d dVar5 = mVar4.b;
                        f fVar3 = mVar4.f5609i;
                        f fVar4 = mVar4.f5608h;
                        if (dVar5.f5466V == 8) {
                            fVar4.d(i39);
                            fVar3.d(i39);
                        } else {
                            if (i40 > 0) {
                                i39 = z2 ? i39 - i38 : i39 + i38;
                            }
                            if (i40 > 0 && i40 >= i15) {
                                i39 = z2 ? i39 - fVar4.f : i39 + fVar4.f;
                            }
                            if (z2) {
                                fVar3.d(i39);
                            } else {
                                fVar4.d(i39);
                            }
                            g gVar3 = mVar4.f5607e;
                            int i41 = gVar3.g;
                            if (mVar4.f5606d == 3 && mVar4.f5604a == 1) {
                                i41 = gVar3.f5599m;
                            }
                            i39 = z2 ? i39 - i41 : i39 + i41;
                            if (z2) {
                                fVar4.d(i39);
                            } else {
                                fVar3.d(i39);
                            }
                            mVar4.g = true;
                            if (i40 < i16 && i40 < i3) {
                                i39 = z2 ? i39 - (-fVar3.f) : i39 + (-fVar3.f);
                            }
                        }
                    }
                    return;
                }
                if (i37 == 0) {
                    int i42 = (i14 - i7) / (i6 + 1);
                    if (i5 > 0) {
                        i42 = i9;
                    }
                    int i43 = i8;
                    for (int i44 = i9; i44 < size; i44++) {
                        m mVar5 = (m) arrayList.get(z2 ? size - (i44 + 1) : i44);
                        d dVar6 = mVar5.b;
                        f fVar5 = mVar5.f5609i;
                        f fVar6 = mVar5.f5608h;
                        if (dVar6.f5466V == 8) {
                            fVar6.d(i43);
                            fVar5.d(i43);
                        } else {
                            int i45 = z2 ? i43 - i42 : i43 + i42;
                            if (i44 > 0 && i44 >= i15) {
                                i45 = z2 ? i45 - fVar6.f : i45 + fVar6.f;
                            }
                            if (z2) {
                                fVar5.d(i45);
                            } else {
                                fVar6.d(i45);
                            }
                            g gVar4 = mVar5.f5607e;
                            int iMin = gVar4.g;
                            if (mVar5.f5606d == 3 && mVar5.f5604a == 1) {
                                iMin = Math.min(iMin, gVar4.f5599m);
                            }
                            i43 = z2 ? i45 - iMin : i45 + iMin;
                            if (z2) {
                                fVar6.d(i43);
                            } else {
                                fVar5.d(i43);
                            }
                            if (i44 < i16 && i44 < i3) {
                                i43 = z2 ? i43 - (-fVar5.f) : i43 + (-fVar5.f);
                            }
                        }
                    }
                    return;
                }
                if (i37 == 2) {
                    float f9 = this.f == 0 ? this.b.f5463S : this.b.f5464T;
                    if (z2) {
                        f9 = 1.0f - f9;
                    }
                    int i46 = (int) (((i14 - i7) * f9) + f3);
                    if (i46 < 0 || i5 > 0) {
                        i46 = i9;
                    }
                    int i47 = z2 ? i8 - i46 : i8 + i46;
                    for (int i48 = i9; i48 < size; i48++) {
                        m mVar6 = (m) arrayList.get(z2 ? size - (i48 + 1) : i48);
                        d dVar7 = mVar6.b;
                        f fVar7 = mVar6.f5609i;
                        f fVar8 = mVar6.f5608h;
                        if (dVar7.f5466V == 8) {
                            fVar8.d(i47);
                            fVar7.d(i47);
                        } else {
                            if (i48 > 0 && i48 >= i15) {
                                i47 = z2 ? i47 - fVar8.f : i47 + fVar8.f;
                            }
                            if (z2) {
                                fVar7.d(i47);
                            } else {
                                fVar8.d(i47);
                            }
                            g gVar5 = mVar6.f5607e;
                            int i49 = gVar5.g;
                            if (mVar6.f5606d == 3 && mVar6.f5604a == 1) {
                                i49 = gVar5.f5599m;
                            }
                            i47 = z2 ? i47 - i49 : i47 + i49;
                            if (z2) {
                                fVar8.d(i47);
                            } else {
                                fVar7.d(i47);
                            }
                            if (i48 < i16 && i48 < i3) {
                                i47 = z2 ? i47 - (-fVar7.f) : i47 + (-fVar7.f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // p056w.m
    public final void d() {
        ArrayList arrayList = this.f5583k;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((m) obj).d();
        }
        int size2 = arrayList.size();
        if (size2 < 1) {
            return;
        }
        d dVar = ((m) arrayList.get(0)).b;
        d dVar2 = ((m) arrayList.get(size2 - 1)).b;
        int i4 = this.f;
        f fVar = this.f5609i;
        f fVar2 = this.f5608h;
        if (i4 == 0) {
            p053v.c cVar = dVar.f5493x;
            p053v.c cVar2 = dVar2.f5495z;
            f fVarI = m.i(cVar, 0);
            int iC = cVar.c();
            d dVarM = m();
            if (dVarM != null) {
                iC = dVarM.f5493x.c();
            }
            if (fVarI != null) {
                m.b(fVar2, fVarI, iC);
            }
            f fVarI2 = m.i(cVar2, 0);
            int iC2 = cVar2.c();
            d dVarN = n();
            if (dVarN != null) {
                iC2 = dVarN.f5495z.c();
            }
            if (fVarI2 != null) {
                m.b(fVar, fVarI2, -iC2);
            }
        } else {
            p053v.c cVar3 = dVar.f5494y;
            p053v.c cVar4 = dVar2.f5446A;
            f fVarI3 = m.i(cVar3, 1);
            int iC3 = cVar3.c();
            d dVarM2 = m();
            if (dVarM2 != null) {
                iC3 = dVarM2.f5494y.c();
            }
            if (fVarI3 != null) {
                m.b(fVar2, fVarI3, iC3);
            }
            f fVarI4 = m.i(cVar4, 1);
            int iC4 = cVar4.c();
            d dVarN2 = n();
            if (dVarN2 != null) {
                iC4 = dVarN2.f5446A.c();
            }
            if (fVarI4 != null) {
                m.b(fVar, fVarI4, -iC4);
            }
        }
        fVar2.f5590a = this;
        fVar.f5590a = this;
    }

    @Override // p056w.m
    public final void e() {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f5583k;
            if (i3 >= arrayList.size()) {
                return;
            }
            ((m) arrayList.get(i3)).e();
            i3++;
        }
    }

    @Override // p056w.m
    public final void f() {
        this.f5605c = null;
        ArrayList arrayList = this.f5583k;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((m) obj).f();
        }
    }

    @Override // p056w.m
    public final long j() {
        ArrayList arrayList = this.f5583k;
        int size = arrayList.size();
        long j2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            m mVar = (m) arrayList.get(i3);
            j2 = ((long) mVar.f5609i.f) + mVar.j() + j2 + ((long) mVar.f5608h.f);
        }
        return j2;
    }

    @Override // p056w.m
    public final boolean k() {
        ArrayList arrayList = this.f5583k;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (!((m) arrayList.get(i3)).k()) {
                return false;
            }
        }
        return true;
    }

    public final d m() {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f5583k;
            if (i3 >= arrayList.size()) {
                return null;
            }
            d dVar = ((m) arrayList.get(i3)).b;
            if (dVar.f5466V != 8) {
                return dVar;
            }
            i3++;
        }
    }

    public final d n() {
        ArrayList arrayList = this.f5583k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d dVar = ((m) arrayList.get(size)).b;
            if (dVar.f5466V != 8) {
                return dVar;
            }
        }
        return null;
    }

    public final String toString() {
        String strConcat = "ChainRun ".concat(this.f == 0 ? "horizontal : " : "vertical : ");
        ArrayList arrayList = this.f5583k;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            strConcat = a.g(a.g(strConcat, "<") + ((m) obj), "> ");
        }
        return strConcat;
    }
}
