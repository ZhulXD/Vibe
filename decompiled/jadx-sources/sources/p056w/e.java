package p056w;

import java.util.ArrayList;
import java.util.HashSet;
import p053v.c;
import p053v.d;
import p053v.h;
import p053v.i;
import p059x.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p053v.e f5585a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p053v.e f5587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f5588e;
    public f f;
    public b g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f5589h;

    public final void a(f fVar, int i3, ArrayList arrayList, k kVar) {
        m mVar = fVar.f5592d;
        k kVar2 = mVar.f5605c;
        f fVar2 = mVar.f5609i;
        f fVar3 = mVar.f5608h;
        if (kVar2 == null) {
            p053v.e eVar = this.f5585a;
            if (mVar == eVar.f5475d || mVar == eVar.f5476e) {
                return;
            }
            if (kVar == null) {
                kVar = new k();
                kVar.f5601a = null;
                kVar.b = new ArrayList();
                kVar.f5601a = mVar;
                arrayList.add(kVar);
            }
            mVar.f5605c = kVar;
            kVar.b.add(mVar);
            ArrayList arrayList2 = fVar3.f5597k;
            int size = arrayList2.size();
            int i4 = 0;
            int i5 = 0;
            while (i5 < size) {
                Object obj = arrayList2.get(i5);
                i5++;
                d dVar = (d) obj;
                if (dVar instanceof f) {
                    a((f) dVar, i3, arrayList, kVar);
                }
            }
            ArrayList arrayList3 = fVar2.f5597k;
            int size2 = arrayList3.size();
            int i6 = 0;
            while (i6 < size2) {
                Object obj2 = arrayList3.get(i6);
                i6++;
                d dVar2 = (d) obj2;
                if (dVar2 instanceof f) {
                    a((f) dVar2, i3, arrayList, kVar);
                }
            }
            if (i3 == 1 && (mVar instanceof l)) {
                ArrayList arrayList4 = ((l) mVar).f5602k.f5597k;
                int size3 = arrayList4.size();
                int i7 = 0;
                while (i7 < size3) {
                    Object obj3 = arrayList4.get(i7);
                    i7++;
                    d dVar3 = (d) obj3;
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i3, arrayList, kVar);
                    }
                }
            }
            ArrayList arrayList5 = fVar3.f5598l;
            int size4 = arrayList5.size();
            int i8 = 0;
            while (i8 < size4) {
                Object obj4 = arrayList5.get(i8);
                i8++;
                a((f) obj4, i3, arrayList, kVar);
            }
            ArrayList arrayList6 = fVar2.f5598l;
            int size5 = arrayList6.size();
            int i9 = 0;
            while (i9 < size5) {
                Object obj5 = arrayList6.get(i9);
                i9++;
                a((f) obj5, i3, arrayList, kVar);
            }
            if (i3 == 1 && (mVar instanceof l)) {
                ArrayList arrayList7 = ((l) mVar).f5602k.f5598l;
                int size6 = arrayList7.size();
                while (i4 < size6) {
                    Object obj6 = arrayList7.get(i4);
                    i4++;
                    a((f) obj6, i3, arrayList, kVar);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x019f  */
    /* JADX WARN: Code duplicated, block: B:103:0x01a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:106:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:135:0x026a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:137:0x026e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:149:0x02af  */
    /* JADX WARN: Code duplicated, block: B:150:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:153:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:156:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:157:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00db A[PHI: r13
      0x00db: PHI (r13v6 int) = (r13v5 int), (r13v12 int) binds: [B:68:0x00d4, B:62:0x00cb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:82:0x0129  */
    /* JADX WARN: Code duplicated, block: B:84:0x012d  */
    /* JADX WARN: Code duplicated, block: B:85:0x013d  */
    /* JADX WARN: Code duplicated, block: B:87:0x0140  */
    /* JADX WARN: Code duplicated, block: B:89:0x0144  */
    /* JADX WARN: Code duplicated, block: B:96:0x0175  */
    /* JADX WARN: Code duplicated, block: B:98:0x017f  */
    public final void b(p053v.e eVar) {
        int i3;
        int i4;
        int iL;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        ArrayList arrayList = eVar.f5496d0;
        int[] iArr = eVar.f5474c0;
        int size = arrayList.size();
        char c3 = 0;
        int i18 = 0;
        while (i18 < size) {
            Object obj = arrayList.get(i18);
            i18++;
            d dVar = (d) obj;
            int[] iArr2 = dVar.f5474c0;
            c[] cVarArr = dVar.f5451F;
            c cVar = dVar.f5446A;
            c cVar2 = dVar.f5494y;
            c cVar3 = dVar.f5495z;
            c cVar4 = dVar.f5493x;
            l lVar = dVar.f5476e;
            j jVar = dVar.f5475d;
            int i19 = iArr2[c3];
            c3 = c3;
            int i20 = iArr2[1];
            if (dVar.f5466V == 8) {
                dVar.f5470a = true;
            } else {
                float f = dVar.f5484o;
                if (f < 1.0f && i19 == 3) {
                    dVar.f5479j = 2;
                }
                float f3 = dVar.f5487r;
                if (f3 < 1.0f && i20 == 3) {
                    dVar.f5480k = 2;
                }
                if (dVar.f5456L > 0.0f) {
                    if (i19 == 3) {
                        i17 = 2;
                        if (i20 == 2 || i20 == 1) {
                            i3 = 3;
                            dVar.f5479j = 3;
                        } else {
                            i3 = 3;
                        }
                    } else {
                        i3 = 3;
                        i17 = 2;
                    }
                    if (i20 == i3 && (i19 == i17 || i19 == 1)) {
                        dVar.f5480k = i3;
                    } else if (i19 == i3 && i20 == i3) {
                        if (dVar.f5479j == 0) {
                            dVar.f5479j = i3;
                        }
                        if (dVar.f5480k == 0) {
                            dVar.f5480k = i3;
                        }
                    }
                } else {
                    i3 = 3;
                }
                if (i19 == i3 && dVar.f5479j == 1 && (cVar4.f5444d == null || cVar3.f5444d == null)) {
                    i19 = 2;
                }
                if (i20 == 3 && dVar.f5480k == 1 && (cVar2.f5444d == null || cVar.f5444d == null)) {
                    i20 = 2;
                }
                jVar.f5606d = i19;
                g gVar = jVar.f5607e;
                int i21 = dVar.f5479j;
                jVar.f5604a = i21;
                lVar.f5606d = i20;
                g gVar2 = lVar.f5607e;
                ArrayList arrayList2 = arrayList;
                int i22 = dVar.f5480k;
                lVar.f5604a = i22;
                if (i19 == 4 || i19 == 1) {
                    if (i20 == 4) {
                        i4 = 1;
                    } else if (i20 != 1) {
                        i8 = 2;
                        if (i20 == 2) {
                            i4 = 1;
                        } else {
                            if (i19 != 3) {
                                i9 = i20;
                                i10 = 1;
                            } else if (i20 == i8 && i20 != 1) {
                                i9 = i20;
                                i10 = 1;
                                i11 = 3;
                                i8 = i8;
                                if (i9 == i11 || !(i19 == i8 || i19 == i10)) {
                                    i12 = i8;
                                } else if (i22 == i11) {
                                    if (i19 == i8) {
                                        f(i8, 0, i8, 0, dVar);
                                    }
                                    int iL2 = dVar.l();
                                    float f4 = dVar.f5456L;
                                    if (dVar.f5457M == -1) {
                                        f4 = 1.0f / f4;
                                    }
                                    f(i10, iL2, i10, (int) ((iL2 * f4) + 0.5f), dVar);
                                    gVar.d(dVar.l());
                                    gVar2.d(dVar.i());
                                    dVar.f5470a = true;
                                } else {
                                    i12 = i8;
                                    if (i22 == 1) {
                                        f(i19, 0, i12, 0, dVar);
                                        gVar2.f5599m = dVar.i();
                                    } else {
                                        int i23 = i19;
                                        if (i22 == 2) {
                                            int i24 = iArr[1];
                                            if (i24 == i10 || i24 == 4) {
                                                f(i23, dVar.l(), i10, (int) ((eVar.i() * f3) + 0.5f), dVar);
                                                gVar.d(dVar.l());
                                                gVar2.d(dVar.i());
                                                dVar.f5470a = true;
                                            } else {
                                                i19 = i23;
                                                i11 = 3;
                                            }
                                        } else {
                                            i19 = i23;
                                            if (cVarArr[2].f5444d == null || cVarArr[3].f5444d == null) {
                                                f(i12, 0, i9, 0, dVar);
                                                gVar.d(dVar.l());
                                                gVar2.d(dVar.i());
                                                dVar.f5470a = true;
                                            } else {
                                                i9 = i9;
                                                i13 = 1;
                                                i11 = 3;
                                                if (i19 == i11 && i9 == i11) {
                                                    if (i21 != i13 || i22 == i13) {
                                                        f(i12, 0, i12, 0, dVar);
                                                        gVar.f5599m = dVar.l();
                                                        gVar2.f5599m = dVar.i();
                                                    } else if (i22 == 2 && i21 == 2 && (((i14 = iArr[c3]) == i10 || i14 == i10) && ((i15 = iArr[i13]) == i10 || i15 == i10))) {
                                                        f(i10, (int) ((eVar.l() * f) + 0.5f), i10, (int) ((eVar.i() * f3) + 0.5f), dVar);
                                                        gVar.d(dVar.l());
                                                        gVar2.d(dVar.i());
                                                        dVar.f5470a = true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                i13 = 1;
                                if (i19 == i11) {
                                    if (i21 != i13) {
                                        f(i12, 0, i12, 0, dVar);
                                        gVar.f5599m = dVar.l();
                                        gVar2.f5599m = dVar.i();
                                    } else {
                                        f(i12, 0, i12, 0, dVar);
                                        gVar.f5599m = dVar.l();
                                        gVar2.f5599m = dVar.i();
                                    }
                                }
                            } else if (i21 == 3) {
                                if (i20 == i8) {
                                    f(i8, 0, i8, 0, dVar);
                                }
                                int i25 = dVar.i();
                                f(1, (int) ((i25 * dVar.f5456L) + 0.5f), 1, i25, dVar);
                                gVar.d(dVar.l());
                                gVar2.d(dVar.i());
                                dVar.f5470a = true;
                            } else if (i21 == 1) {
                                f(i8, 0, i20, 0, dVar);
                                gVar.f5599m = dVar.l();
                            } else if (i21 == 2) {
                                i16 = iArr[c3];
                                if (i16 != 1 || i16 == 4) {
                                    f(1, (int) ((eVar.l() * f) + 0.5f), i20, dVar.i(), dVar);
                                    gVar.d(dVar.l());
                                    gVar2.d(dVar.i());
                                    dVar.f5470a = true;
                                } else {
                                    i9 = i20;
                                    i10 = 1;
                                }
                            } else {
                                i9 = i20;
                                i10 = 1;
                                if (cVarArr[c3].f5444d != null || cVarArr[1].f5444d == null) {
                                    f(i8, 0, i9, 0, dVar);
                                    gVar.d(dVar.l());
                                    gVar2.d(dVar.i());
                                    dVar.f5470a = true;
                                }
                            }
                            i11 = 3;
                            if (i9 == i11) {
                                i12 = i8;
                                i13 = 1;
                                if (i19 == i11) {
                                    if (i21 != i13) {
                                        f(i12, 0, i12, 0, dVar);
                                        gVar.f5599m = dVar.l();
                                        gVar2.f5599m = dVar.i();
                                    } else {
                                        f(i12, 0, i12, 0, dVar);
                                        gVar.f5599m = dVar.l();
                                        gVar2.f5599m = dVar.i();
                                    }
                                }
                            } else {
                                i12 = i8;
                                i13 = 1;
                                if (i19 == i11) {
                                    if (i21 != i13) {
                                        f(i12, 0, i12, 0, dVar);
                                        gVar.f5599m = dVar.l();
                                        gVar2.f5599m = dVar.i();
                                    } else {
                                        f(i12, 0, i12, 0, dVar);
                                        gVar.f5599m = dVar.l();
                                        gVar2.f5599m = dVar.i();
                                    }
                                }
                            }
                        }
                    } else {
                        i4 = 1;
                    }
                    iL = dVar.l();
                    if (i19 == 4) {
                        iL = (eVar.l() - cVar4.f5445e) - cVar3.f5445e;
                        i19 = i4;
                    }
                    i5 = dVar.i();
                    if (i20 == 4) {
                        i6 = i4;
                        i7 = (eVar.i() - cVar2.f5445e) - cVar.f5445e;
                    } else {
                        i6 = i20;
                        i7 = i5;
                    }
                    f(i19, iL, i6, i7, dVar);
                    gVar.d(dVar.l());
                    gVar2.d(dVar.i());
                    dVar.f5470a = true;
                } else {
                    i8 = 2;
                    if (i19 == 2) {
                        if (i20 == 4) {
                            i4 = 1;
                        } else if (i20 != 1) {
                            i8 = 2;
                            if (i20 == 2) {
                                i4 = 1;
                            } else {
                                if (i19 != 3) {
                                    if (i20 == i8) {
                                    }
                                    if (i21 == 3) {
                                        if (i20 == i8) {
                                            f(i8, 0, i8, 0, dVar);
                                        }
                                        int i26 = dVar.i();
                                        f(1, (int) ((i26 * dVar.f5456L) + 0.5f), 1, i26, dVar);
                                        gVar.d(dVar.l());
                                        gVar2.d(dVar.i());
                                        dVar.f5470a = true;
                                    } else if (i21 == 1) {
                                        f(i8, 0, i20, 0, dVar);
                                        gVar.f5599m = dVar.l();
                                    } else if (i21 == 2) {
                                        i16 = iArr[c3];
                                        if (i16 != 1) {
                                        }
                                        f(1, (int) ((eVar.l() * f) + 0.5f), i20, dVar.i(), dVar);
                                        gVar.d(dVar.l());
                                        gVar2.d(dVar.i());
                                        dVar.f5470a = true;
                                    } else {
                                        i9 = i20;
                                        i10 = 1;
                                        if (cVarArr[c3].f5444d != null) {
                                        }
                                        f(i8, 0, i9, 0, dVar);
                                        gVar.d(dVar.l());
                                        gVar2.d(dVar.i());
                                        dVar.f5470a = true;
                                    }
                                } else {
                                    i9 = i20;
                                    i10 = 1;
                                }
                                i11 = 3;
                                if (i9 == i11) {
                                    i12 = i8;
                                    i13 = 1;
                                    if (i19 == i11) {
                                        if (i21 != i13) {
                                            f(i12, 0, i12, 0, dVar);
                                            gVar.f5599m = dVar.l();
                                            gVar2.f5599m = dVar.i();
                                        } else {
                                            f(i12, 0, i12, 0, dVar);
                                            gVar.f5599m = dVar.l();
                                            gVar2.f5599m = dVar.i();
                                        }
                                    }
                                } else {
                                    i12 = i8;
                                    i13 = 1;
                                    if (i19 == i11) {
                                        if (i21 != i13) {
                                            f(i12, 0, i12, 0, dVar);
                                            gVar.f5599m = dVar.l();
                                            gVar2.f5599m = dVar.i();
                                        } else {
                                            f(i12, 0, i12, 0, dVar);
                                            gVar.f5599m = dVar.l();
                                            gVar2.f5599m = dVar.i();
                                        }
                                    }
                                }
                            }
                        } else {
                            i4 = 1;
                        }
                        iL = dVar.l();
                        if (i19 == 4) {
                            iL = (eVar.l() - cVar4.f5445e) - cVar3.f5445e;
                            i19 = i4;
                        }
                        i5 = dVar.i();
                        if (i20 == 4) {
                            i6 = i4;
                            i7 = (eVar.i() - cVar2.f5445e) - cVar.f5445e;
                        } else {
                            i6 = i20;
                            i7 = i5;
                        }
                        f(i19, iL, i6, i7, dVar);
                        gVar.d(dVar.l());
                        gVar2.d(dVar.i());
                        dVar.f5470a = true;
                    } else {
                        if (i19 != 3) {
                            if (i20 == i8) {
                            }
                            if (i21 == 3) {
                                if (i20 == i8) {
                                    f(i8, 0, i8, 0, dVar);
                                }
                                int i27 = dVar.i();
                                f(1, (int) ((i27 * dVar.f5456L) + 0.5f), 1, i27, dVar);
                                gVar.d(dVar.l());
                                gVar2.d(dVar.i());
                                dVar.f5470a = true;
                            } else if (i21 == 1) {
                                f(i8, 0, i20, 0, dVar);
                                gVar.f5599m = dVar.l();
                            } else if (i21 == 2) {
                                i16 = iArr[c3];
                                if (i16 != 1) {
                                }
                                f(1, (int) ((eVar.l() * f) + 0.5f), i20, dVar.i(), dVar);
                                gVar.d(dVar.l());
                                gVar2.d(dVar.i());
                                dVar.f5470a = true;
                            } else {
                                i9 = i20;
                                i10 = 1;
                                if (cVarArr[c3].f5444d != null) {
                                }
                                f(i8, 0, i9, 0, dVar);
                                gVar.d(dVar.l());
                                gVar2.d(dVar.i());
                                dVar.f5470a = true;
                            }
                        } else {
                            i9 = i20;
                            i10 = 1;
                        }
                        i11 = 3;
                        if (i9 == i11) {
                            i12 = i8;
                            i13 = 1;
                            if (i19 == i11) {
                                if (i21 != i13) {
                                    f(i12, 0, i12, 0, dVar);
                                    gVar.f5599m = dVar.l();
                                    gVar2.f5599m = dVar.i();
                                } else {
                                    f(i12, 0, i12, 0, dVar);
                                    gVar.f5599m = dVar.l();
                                    gVar2.f5599m = dVar.i();
                                }
                            }
                        } else {
                            i12 = i8;
                            i13 = 1;
                            if (i19 == i11) {
                                if (i21 != i13) {
                                    f(i12, 0, i12, 0, dVar);
                                    gVar.f5599m = dVar.l();
                                    gVar2.f5599m = dVar.i();
                                } else {
                                    f(i12, 0, i12, 0, dVar);
                                    gVar.f5599m = dVar.l();
                                    gVar2.f5599m = dVar.i();
                                }
                            }
                        }
                    }
                }
                arrayList = arrayList2;
            }
        }
    }

    public final void c() {
        p053v.e eVar = this.f5585a;
        ArrayList arrayList = this.f5589h;
        ArrayList arrayList2 = this.f5588e;
        arrayList2.clear();
        p053v.e eVar2 = this.f5587d;
        eVar2.f5475d.f();
        l lVar = eVar2.f5476e;
        lVar.f();
        arrayList2.add(eVar2.f5475d);
        arrayList2.add(lVar);
        ArrayList arrayList3 = eVar2.f5496d0;
        int size = arrayList3.size();
        HashSet hashSet = null;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList3.get(i3);
            i3++;
            d dVar = (d) obj;
            if (dVar instanceof h) {
                h hVar = new h(dVar);
                dVar.f5475d.f();
                dVar.f5476e.f();
                hVar.f = ((h) dVar).f5560h0;
                arrayList2.add(hVar);
            } else {
                if (dVar.q()) {
                    if (dVar.b == null) {
                        dVar.b = new c(dVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.b);
                } else {
                    arrayList2.add(dVar.f5475d);
                }
                if (dVar.r()) {
                    if (dVar.f5473c == null) {
                        dVar.f5473c = new c(dVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f5473c);
                } else {
                    arrayList2.add(dVar.f5476e);
                }
                if (dVar instanceof i) {
                    arrayList2.add(new i(dVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        int size2 = arrayList2.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList2.get(i4);
            i4++;
            ((m) obj2).f();
        }
        int size3 = arrayList2.size();
        int i5 = 0;
        while (i5 < size3) {
            Object obj3 = arrayList2.get(i5);
            i5++;
            m mVar = (m) obj3;
            if (mVar.b != eVar2) {
                mVar.d();
            }
        }
        arrayList.clear();
        e(eVar.f5475d, 0, arrayList);
        e(eVar.f5476e, 1, arrayList);
        this.b = false;
    }

    public final int d(p053v.e eVar, int i3) {
        ArrayList arrayList;
        int i4;
        long j2;
        float f;
        long j3;
        ArrayList arrayList2 = this.f5589h;
        int size = arrayList2.size();
        long j4 = 0;
        int i5 = 0;
        long jMax = 0;
        while (i5 < size) {
            m mVar = ((k) arrayList2.get(i5)).f5601a;
            if (!(mVar instanceof c) ? !(i3 != 0 ? (mVar instanceof l) : (mVar instanceof j)) : ((c) mVar).f != i3) {
                f fVar = (i3 == 0 ? eVar.f5475d : eVar.f5476e).f5608h;
                f fVar2 = (i3 == 0 ? eVar.f5475d : eVar.f5476e).f5609i;
                f fVar3 = mVar.f5608h;
                f fVar4 = mVar.f5609i;
                boolean zContains = fVar3.f5598l.contains(fVar);
                boolean zContains2 = fVar4.f5598l.contains(fVar2);
                long j5 = mVar.j();
                if (zContains && zContains2) {
                    long jB = k.b(fVar3, j4);
                    long jA = k.a(fVar4, j4);
                    long j6 = jB - j5;
                    int i6 = fVar4.f;
                    arrayList = arrayList2;
                    i4 = size;
                    if (j6 >= (-i6)) {
                        j6 += (long) i6;
                    }
                    long j7 = fVar3.f;
                    long j8 = ((-jA) - j5) - j7;
                    if (j8 >= j7) {
                        j8 -= j7;
                    }
                    d dVar = mVar.b;
                    if (i3 == 0) {
                        f = dVar.f5463S;
                    } else if (i3 == 1) {
                        f = dVar.f5464T;
                    } else {
                        dVar.getClass();
                        f = -1.0f;
                    }
                    if (f > 0.0f) {
                        j3 = (long) ((j6 / (1.0f - f)) + (j8 / f));
                    } else {
                        j3 = 0;
                    }
                    float f3 = j3;
                    j2 = (((long) fVar3.f) + ((((long) ((f3 * f) + 0.5f)) + j5) + ((long) (((1.0f - f) * f3) + 0.5f)))) - ((long) fVar4.f);
                } else {
                    arrayList = arrayList2;
                    i4 = size;
                    if (zContains) {
                        j2 = Math.max(k.b(fVar3, fVar3.f), ((long) fVar3.f) + j5);
                    } else if (zContains2) {
                        j2 = Math.max(-k.a(fVar4, fVar4.f), ((long) (-fVar4.f)) + j5);
                    } else {
                        j2 = (mVar.j() + ((long) fVar3.f)) - ((long) fVar4.f);
                    }
                }
            } else {
                arrayList = arrayList2;
                i4 = size;
                j2 = j4;
            }
            jMax = Math.max(jMax, j2);
            i5++;
            arrayList2 = arrayList;
            size = i4;
            j4 = 0;
        }
        return (int) jMax;
    }

    public final void e(m mVar, int i3, ArrayList arrayList) {
        f fVar = mVar.f5608h;
        f fVar2 = mVar.f5609i;
        ArrayList arrayList2 = fVar.f5597k;
        int size = arrayList2.size();
        int i4 = 0;
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList2.get(i5);
            i5++;
            d dVar = (d) obj;
            if (dVar instanceof f) {
                a((f) dVar, i3, arrayList, null);
            } else if (dVar instanceof m) {
                a(((m) dVar).f5608h, i3, arrayList, null);
            }
        }
        ArrayList arrayList3 = fVar2.f5597k;
        int size2 = arrayList3.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj2 = arrayList3.get(i6);
            i6++;
            d dVar2 = (d) obj2;
            if (dVar2 instanceof f) {
                a((f) dVar2, i3, arrayList, null);
            } else if (dVar2 instanceof m) {
                a(((m) dVar2).f5609i, i3, arrayList, null);
            }
        }
        if (i3 == 1) {
            ArrayList arrayList4 = ((l) mVar).f5602k.f5597k;
            int size3 = arrayList4.size();
            while (i4 < size3) {
                Object obj3 = arrayList4.get(i4);
                i4++;
                d dVar3 = (d) obj3;
                if (dVar3 instanceof f) {
                    a((f) dVar3, i3, arrayList, null);
                }
            }
        }
    }

    public final void f(int i3, int i4, int i5, int i6, d dVar) {
        b bVar = this.g;
        bVar.f5576a = i3;
        bVar.b = i5;
        bVar.f5577c = i4;
        bVar.f5578d = i6;
        this.f.a(dVar, bVar);
        dVar.y(bVar.f5579e);
        dVar.v(bVar.f);
        dVar.f5492w = bVar.f5580h;
        int i7 = bVar.g;
        dVar.f5460P = i7;
        dVar.f5492w = i7 > 0;
    }

    public final void g() {
        a aVar;
        e eVar = this;
        ArrayList arrayList = eVar.f5585a.f5496d0;
        int size = arrayList.size();
        char c3 = 0;
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 1;
            d dVar = (d) arrayList.get(i3);
            boolean z2 = dVar.f5470a;
            j jVar = dVar.f5475d;
            l lVar = dVar.f5476e;
            if (!z2) {
                int[] iArr = dVar.f5474c0;
                int i5 = iArr[c3];
                int i6 = iArr[1];
                int i7 = dVar.f5479j;
                int i8 = dVar.f5480k;
                char c4 = (i5 == 2 || (i5 == 3 && i7 == 1)) ? (char) 1 : c3;
                char c5 = (i6 == 2 || (i6 == 3 && i8 == 1)) ? (char) 1 : c3;
                g gVar = jVar.f5607e;
                g gVar2 = jVar.f5607e;
                boolean z3 = gVar.f5596j;
                g gVar3 = lVar.f5607e;
                g gVar4 = lVar.f5607e;
                boolean z4 = gVar3.f5596j;
                char c6 = c4;
                if (z3 && z4) {
                    eVar.f(1, gVar.g, 1, gVar3.g, dVar);
                    dVar.f5470a = true;
                } else if (z3 && c5 != 0) {
                    f(1, gVar.g, 2, gVar3.g, dVar);
                    if (i6 == 3) {
                        gVar4.f5599m = dVar.i();
                    } else {
                        gVar4.d(dVar.i());
                        dVar.f5470a = true;
                    }
                } else if (z4 && c6 != 0) {
                    f(2, gVar.g, 1, gVar3.g, dVar);
                    if (i5 == 3) {
                        gVar2.f5599m = dVar.l();
                    } else {
                        gVar2.d(dVar.l());
                        dVar.f5470a = true;
                    }
                }
                if (dVar.f5470a && (aVar = lVar.f5603l) != null) {
                    aVar.d(dVar.f5460P);
                }
                c3 = 0;
                eVar = this;
            }
            i3 = i4;
        }
    }
}
