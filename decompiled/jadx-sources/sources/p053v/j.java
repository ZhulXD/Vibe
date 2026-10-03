package p053v;

import java.util.ArrayList;
import p051u.c;
import p051u.e;
import p051u.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean[] f5563a = new boolean[3];

    /* JADX WARN: Code duplicated, block: B:177:0x0273  */
    /* JADX WARN: Code duplicated, block: B:194:0x02be  */
    /* JADX WARN: Code duplicated, block: B:196:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:198:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:221:0x0359  */
    /* JADX WARN: Code duplicated, block: B:223:0x0375  */
    /* JADX WARN: Code duplicated, block: B:225:0x037a  */
    /* JADX WARN: Code duplicated, block: B:229:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:240:0x040e  */
    /* JADX WARN: Code duplicated, block: B:393:0x068f  */
    /* JADX WARN: Code duplicated, block: B:394:0x0692  */
    /* JADX WARN: Code duplicated, block: B:397:0x0698  */
    /* JADX WARN: Code duplicated, block: B:398:0x069b  */
    /* JADX WARN: Code duplicated, block: B:400:0x069f  */
    /* JADX WARN: Code duplicated, block: B:402:0x06a7  */
    /* JADX WARN: Code duplicated, block: B:405:0x06af  */
    /* JADX WARN: Code duplicated, block: B:407:0x06b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:416:0x06d1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:74:0x010e  */
    public static void a(e eVar, e eVar2, int i3) {
        int i4;
        b[] bVarArr;
        int i5;
        c[] cVarArr;
        float f;
        boolean z2;
        boolean z3;
        boolean z4;
        d dVar;
        e eVar3;
        i iVar;
        c cVar;
        i iVar2;
        int i6;
        c cVar2;
        i iVar3;
        i iVar4;
        d dVar2;
        int i7;
        c[] cVarArr2;
        int i8;
        c cVar3;
        c cVar4;
        i iVar5;
        c cVar5;
        i iVar6;
        int size;
        ArrayList arrayList;
        int i9;
        float f3;
        i iVar7;
        i iVar8;
        i iVar9;
        i iVar10;
        c cVarK;
        float f4;
        c cVar6;
        d dVar3;
        int i10;
        d dVar4;
        e eVar4 = eVar;
        if (i3 == 0) {
            i4 = eVar4.f5504l0;
            bVarArr = eVar4.f5506o0;
            i5 = 0;
        } else {
            i4 = eVar4.f5505m0;
            bVarArr = eVar4.n0;
            i5 = 2;
        }
        int i11 = i4;
        b[] bVarArr2 = bVarArr;
        int i12 = 0;
        while (i12 < i11) {
            b bVar = bVarArr2[i12];
            boolean z5 = bVar.f5441q;
            d dVar5 = bVar.f5428a;
            c[] cVarArr3 = dVar5.f5451F;
            int i13 = 3;
            int i14 = 8;
            if (z5) {
                cVarArr = cVarArr3;
                f = 0.0f;
            } else {
                int i15 = bVar.f5436l;
                int i16 = i15 * 2;
                d dVar6 = dVar5;
                d dVar7 = dVar6;
                boolean z6 = false;
                f = 0.0f;
                while (!z6) {
                    bVar.f5433i++;
                    d[] dVarArr = dVar6.f5472b0;
                    c[] cVarArr4 = dVar6.f5451F;
                    dVarArr[i15] = null;
                    dVar6.f5471a0[i15] = null;
                    if (dVar6.f5466V != i14) {
                        dVar6.h(i15);
                        cVarArr4[i16].c();
                        int i17 = i16 + 1;
                        cVarArr4[i17].c();
                        cVarArr4[i16].c();
                        cVarArr4[i17].c();
                        if (bVar.b == null) {
                            bVar.b = dVar6;
                        }
                        bVar.f5430d = dVar6;
                        int i18 = dVar6.f5474c0[i15];
                        if (i18 == i13) {
                            int i19 = dVar6.f5481l[i15];
                            if (i19 == 0 || i19 == i13 || i19 == 2) {
                                bVar.f5434j++;
                                float f5 = dVar6.Z[i15];
                                if (f5 > 0.0f) {
                                    bVar.f5435k += f5;
                                }
                                if (dVar6.f5466V != 8 && i18 == 3 && (i19 == 0 || i19 == 3)) {
                                    if (f5 < 0.0f) {
                                        bVar.f5438n = true;
                                    } else {
                                        bVar.f5439o = true;
                                    }
                                    if (bVar.f5432h == null) {
                                        bVar.f5432h = new ArrayList();
                                    }
                                    bVar.f5432h.add(dVar6);
                                }
                                if (bVar.f == null) {
                                    bVar.f = dVar6;
                                }
                                d dVar8 = bVar.g;
                                if (dVar8 != null) {
                                    dVar8.f5471a0[i15] = dVar6;
                                }
                                bVar.g = dVar6;
                            } else {
                                i15 = i15;
                            }
                            if (i15 == 0) {
                                if (dVar6.f5479j == 0 && dVar6.f5482m == 0) {
                                    int i20 = dVar6.f5483n;
                                }
                            } else if (dVar6.f5480k == 0 && dVar6.f5485p == 0) {
                                int i21 = dVar6.f5486q;
                            }
                        } else {
                            i15 = i15;
                            cVarArr3 = cVarArr3;
                        }
                    } else {
                        i15 = i15;
                        cVarArr3 = cVarArr3;
                    }
                    if (dVar7 != dVar6) {
                        dVar7.f5472b0[i15] = dVar6;
                    }
                    c cVar7 = cVarArr4[i16 + 1].f5444d;
                    if (cVar7 != null) {
                        dVar4 = cVar7.b;
                        c cVar8 = dVar4.f5451F[i16].f5444d;
                        if (cVar8 == null || cVar8.b != dVar6) {
                            dVar4 = null;
                        }
                    } else {
                        dVar4 = null;
                    }
                    if (dVar4 == null) {
                        dVar4 = dVar6;
                        z6 = true;
                    }
                    dVar7 = dVar6;
                    cVarArr3 = cVarArr3;
                    i13 = 3;
                    i14 = 8;
                    dVar6 = dVar4;
                    i15 = i15;
                }
                int i22 = i15;
                cVarArr = cVarArr3;
                d dVar9 = bVar.b;
                if (dVar9 != null) {
                    dVar9.f5451F[i16].c();
                }
                d dVar10 = bVar.f5430d;
                if (dVar10 != null) {
                    dVar10.f5451F[i16 + 1].c();
                }
                bVar.f5429c = dVar6;
                if (i22 == 0 && bVar.f5437m) {
                    bVar.f5431e = dVar6;
                } else {
                    bVar.f5431e = dVar5;
                }
                bVar.f5440p = bVar.f5439o && bVar.f5438n;
            }
            bVar.f5441q = true;
            d dVar11 = bVar.f5429c;
            d dVar12 = bVar.b;
            d dVar13 = bVar.f5430d;
            d dVar14 = bVar.f5431e;
            float f6 = bVar.f5435k;
            int[] iArr = eVar4.f5474c0;
            c[] cVarArr5 = eVar4.f5451F;
            boolean z7 = iArr[i3] == 2;
            if (i3 == 0) {
                int i23 = dVar14.f5468X;
                boolean z8 = i23 == 0;
                z2 = i23 == 1;
                z3 = i23 == 2;
                z4 = z8;
            } else {
                int i24 = dVar14.f5469Y;
                boolean z9 = i24 == 0;
                z2 = i24 == 1;
                z3 = i24 == 2;
                z4 = z9;
            }
            boolean z10 = false;
            while (!z10) {
                c[] cVarArr6 = dVar5.f5451F;
                int[] iArr2 = dVar5.f5474c0;
                c cVar9 = cVarArr6[i5];
                int i25 = z3 ? 1 : 4;
                int iC = cVar9.c();
                c[] cVarArr7 = cVarArr5;
                boolean z11 = z3;
                boolean z12 = iArr2[i3] == 3 && dVar5.f5481l[i3] == 0;
                c cVar10 = cVar9.f5444d;
                if (cVar10 != null && dVar5 != dVar5) {
                    iC = cVar10.c() + iC;
                }
                int i26 = iC;
                if (z11 && dVar5 != dVar5 && dVar5 != dVar12) {
                    i25 = 5;
                }
                d dVar15 = dVar5;
                c cVar11 = cVar9.f5444d;
                if (cVar11 != null) {
                    if (dVar5 == dVar12) {
                        eVar2.f(cVar9.g, cVar11.g, i26, 6);
                    } else {
                        eVar2.f(cVar9.g, cVar11.g, i26, 8);
                    }
                    eVar2.e(cVar9.g, cVar9.f5444d.g, i26, (!z12 || z11) ? i25 : 5);
                } else {
                    i11 = i11;
                }
                if (z7) {
                    if (dVar5.f5466V == 8 || iArr2[i3] != 3) {
                        i10 = 0;
                    } else {
                        i10 = 0;
                        eVar2.f(cVarArr6[i5 + 1].g, cVarArr6[i5].g, 0, 5);
                    }
                    eVar2.f(cVarArr6[i5].g, cVarArr7[i5].g, i10, 8);
                }
                c cVar12 = cVarArr6[i5 + 1].f5444d;
                if (cVar12 != null) {
                    dVar3 = cVar12.b;
                    c cVar13 = dVar3.f5451F[i5].f5444d;
                    if (cVar13 == null || cVar13.b != dVar5) {
                        dVar3 = null;
                    }
                } else {
                    dVar3 = null;
                }
                if (dVar3 != null) {
                    dVar5 = dVar3;
                } else {
                    z10 = true;
                }
                dVar5 = dVar15;
                cVarArr5 = cVarArr7;
                z3 = z11;
                i11 = i11;
            }
            c[] cVarArr8 = cVarArr5;
            boolean z13 = z3;
            int i27 = i11;
            if (dVar13 != null) {
                int i28 = i5 + 1;
                if (dVar11.f5451F[i28].f5444d != null) {
                    c cVar14 = dVar13.f5451F[i28];
                    if (dVar13.f5474c0[i3] == 3 && dVar13.f5481l[i3] == 0 && !z13) {
                        c cVar15 = cVar14.f5444d;
                        if (cVar15.b == eVar4) {
                            eVar2.e(cVar14.g, cVar15.g, -cVar14.c(), 5);
                        } else if (z13) {
                            cVar6 = cVar14.f5444d;
                            if (cVar6.b == eVar4) {
                                eVar2.e(cVar14.g, cVar6.g, -cVar14.c(), 4);
                            }
                        }
                    } else if (z13) {
                        cVar6 = cVar14.f5444d;
                        if (cVar6.b == eVar4) {
                            eVar2.e(cVar14.g, cVar6.g, -cVar14.c(), 4);
                        }
                    }
                    eVar2.g(cVar14.g, dVar11.f5451F[i28].f5444d.g, -cVar14.c(), 6);
                }
            }
            if (z7 != 0) {
                int i29 = i5 + 1;
                i iVar11 = cVarArr8[i29].g;
                c cVar16 = dVar11.f5451F[i29];
                eVar2.f(iVar11, cVar16.g, cVar16.c(), 8);
            }
            ArrayList arrayList2 = bVar.f5432h;
            if (arrayList2 != null && (size = arrayList2.size()) > 1) {
                if (bVar.f5438n && !bVar.f5440p) {
                    f6 = bVar.f5434j;
                }
                d dVar16 = null;
                float f7 = f;
                int i30 = 0;
                while (i30 < size) {
                    d dVar17 = (d) arrayList2.get(i30);
                    float[] fArr = dVar17.Z;
                    c[] cVarArr9 = dVar17.f5451F;
                    float f8 = fArr[i3];
                    if (f8 >= f) {
                        arrayList = arrayList2;
                        i9 = size;
                        if (f8 == f) {
                            eVar2.e(cVarArr9[i5 + 1].g, cVarArr9[i5].g, 0, 8);
                            i30 = i30;
                            f3 = f;
                            f7 = f7;
                            bVarArr2 = bVarArr2;
                        } else {
                            float f9 = f7;
                            if (dVar16 != null) {
                                c[] cVarArr10 = dVar16.f5451F;
                                iVar7 = cVarArr10[i5].g;
                                int i31 = i5 + 1;
                                iVar8 = cVarArr10[i31].g;
                                iVar9 = cVarArr9[i5].g;
                                iVar10 = cVarArr9[i31].g;
                                cVarK = eVar2.k();
                                f4 = f;
                                cVarK.b = f4;
                                f3 = f4;
                                if (f6 != f4 || f9 == f8) {
                                    cVarK.f5341d.h(iVar7, 1.0f);
                                    cVarK.f5341d.h(iVar8, -1.0f);
                                    cVarK.f5341d.h(iVar10, 1.0f);
                                    cVarK.f5341d.h(iVar9, -1.0f);
                                } else if (f9 == f3) {
                                    cVarK.f5341d.h(iVar7, 1.0f);
                                    cVarK.f5341d.h(iVar8, -1.0f);
                                } else if (f8 == f) {
                                    cVarK.f5341d.h(iVar9, 1.0f);
                                    cVarK.f5341d.h(iVar10, -1.0f);
                                } else {
                                    float f10 = (f9 / f6) / (f8 / f6);
                                    cVarK.f5341d.h(iVar7, 1.0f);
                                    cVarK.f5341d.h(iVar8, -1.0f);
                                    cVarK.f5341d.h(iVar10, f10);
                                    cVarK.f5341d.h(iVar9, -f10);
                                }
                                eVar2.c(cVarK);
                            } else {
                                i30 = i30;
                                f3 = f;
                                bVarArr2 = bVarArr2;
                            }
                            f7 = f8;
                            dVar16 = dVar17;
                        }
                    } else {
                        if (bVar.f5440p) {
                            arrayList = arrayList2;
                            i9 = size;
                            eVar2.e(cVarArr9[i5 + 1].g, cVarArr9[i5].g, 0, 4);
                        } else {
                            f8 = 1.0f;
                            arrayList = arrayList2;
                            i9 = size;
                            if (f8 == f) {
                                eVar2.e(cVarArr9[i5 + 1].g, cVarArr9[i5].g, 0, 8);
                            } else {
                                float f11 = f7;
                                if (dVar16 != null) {
                                    c[] cVarArr11 = dVar16.f5451F;
                                    iVar7 = cVarArr11[i5].g;
                                    int i32 = i5 + 1;
                                    iVar8 = cVarArr11[i32].g;
                                    iVar9 = cVarArr9[i5].g;
                                    iVar10 = cVarArr9[i32].g;
                                    cVarK = eVar2.k();
                                    f4 = f;
                                    cVarK.b = f4;
                                    f3 = f4;
                                    if (f6 != f4) {
                                        cVarK.f5341d.h(iVar7, 1.0f);
                                        cVarK.f5341d.h(iVar8, -1.0f);
                                        cVarK.f5341d.h(iVar10, 1.0f);
                                        cVarK.f5341d.h(iVar9, -1.0f);
                                    } else {
                                        cVarK.f5341d.h(iVar7, 1.0f);
                                        cVarK.f5341d.h(iVar8, -1.0f);
                                        cVarK.f5341d.h(iVar10, 1.0f);
                                        cVarK.f5341d.h(iVar9, -1.0f);
                                    }
                                    eVar2.c(cVarK);
                                } else {
                                    i30 = i30;
                                    f3 = f;
                                    bVarArr2 = bVarArr2;
                                }
                                f7 = f8;
                                dVar16 = dVar17;
                            }
                        }
                        i30 = i30;
                        f3 = f;
                        f7 = f7;
                        bVarArr2 = bVarArr2;
                    }
                    i30++;
                    bVarArr2 = bVarArr2;
                    arrayList2 = arrayList;
                    size = i9;
                    f = f3;
                }
            }
            b[] bVarArr3 = bVarArr2;
            if (dVar12 == null || !(dVar12 == dVar13 || z13)) {
                dVar = dVar13;
                if (!z4 || dVar12 == null) {
                    int i33 = 8;
                    if (z2 && dVar12 != null) {
                        int i34 = bVar.f5434j;
                        boolean z14 = i34 > 0 && bVar.f5433i == i34;
                        d dVar18 = dVar12;
                        d dVar19 = dVar18;
                        while (dVar19 != null) {
                            c[] cVarArr12 = dVar19.f5451F;
                            d dVar20 = dVar19.f5472b0[i3];
                            while (dVar20 != null && dVar20.f5466V == i33) {
                                dVar20 = dVar20.f5472b0[i3];
                            }
                            if (dVar19 == dVar12 || dVar19 == dVar || dVar20 == null) {
                                dVar18 = dVar18;
                            } else {
                                if (dVar20 == dVar) {
                                    dVar20 = null;
                                }
                                c cVar17 = cVarArr12[i5];
                                i iVar12 = cVar17.g;
                                int i35 = i5 + 1;
                                i iVar13 = dVar18.f5451F[i35].g;
                                int iC2 = cVar17.c();
                                int iC3 = cVarArr12[i35].c();
                                if (dVar20 != null) {
                                    cVar = dVar20.f5451F[i5];
                                    iVar2 = cVar.g;
                                    c cVar18 = cVar.f5444d;
                                    iVar = cVar18 != null ? cVar18.g : null;
                                } else {
                                    c cVar19 = dVar.f5451F[i5];
                                    i iVar14 = cVar19 != null ? cVar19.g : null;
                                    iVar = cVarArr12[i35].g;
                                    cVar = cVar19;
                                    iVar2 = iVar14;
                                }
                                if (cVar != null) {
                                    iC3 += cVar.c();
                                }
                                int iC4 = iC2 + dVar18.f5451F[i35].c();
                                int i36 = z14 ? 8 : 4;
                                if (iVar12 != null && iVar13 != null && iVar2 != null && iVar != null) {
                                    eVar2.b(iVar12, iVar13, iC4, 0.5f, iVar2, iVar, iC3, i36);
                                }
                                dVar20 = dVar20;
                            }
                            if (dVar19.f5466V != 8) {
                                dVar18 = dVar19;
                            }
                            dVar19 = dVar20;
                            dVar18 = dVar18;
                            i33 = 8;
                        }
                        eVar3 = eVar2;
                        c cVar20 = dVar12.f5451F[i5];
                        c cVar21 = cVarArr[i5].f5444d;
                        int i37 = i5 + 1;
                        c cVar22 = dVar.f5451F[i37];
                        c cVar23 = dVar11.f5451F[i37].f5444d;
                        if (cVar21 != null) {
                            if (dVar12 != dVar) {
                                eVar3.e(cVar20.g, cVar21.g, cVar20.c(), 5);
                            } else if (cVar23 != null) {
                                eVar3.b(cVar20.g, cVar21.g, cVar20.c(), 0.5f, cVar22.g, cVar23.g, cVar22.c(), 5);
                            }
                        }
                        if (cVar23 != null && dVar12 != dVar) {
                            eVar3.e(cVar22.g, cVar23.g, -cVar22.c(), 5);
                        }
                    }
                    if ((z4 || z2) && dVar12 != null && dVar12 != dVar) {
                        cVarArr2 = dVar12.f5451F;
                        c cVar24 = cVarArr2[i5];
                        i8 = i5 + 1;
                        cVar3 = dVar.f5451F[i8];
                        cVar4 = cVar24.f5444d;
                        if (cVar4 != null) {
                            iVar5 = cVar4.g;
                        } else {
                            iVar5 = null;
                        }
                        cVar5 = cVar3.f5444d;
                        if (cVar5 != null) {
                            iVar6 = cVar5.g;
                        } else {
                            iVar6 = null;
                        }
                        if (dVar11 != dVar) {
                            c cVar25 = dVar11.f5451F[i8].f5444d;
                            iVar6 = cVar25 != null ? cVar25.g : null;
                        }
                        if (dVar12 == dVar) {
                            cVar3 = cVarArr2[i8];
                        }
                        if (iVar5 == null && iVar6 != null) {
                            eVar3.b(cVar24.g, iVar5, cVar24.c(), 0.5f, iVar6, cVar3.g, dVar.f5451F[i8].c(), 5);
                        }
                    }
                    i12++;
                    eVar4 = eVar;
                    bVarArr2 = bVarArr3;
                    i11 = i27;
                } else {
                    int i38 = bVar.f5434j;
                    boolean z15 = i38 > 0 && bVar.f5433i == i38;
                    d dVar21 = dVar12;
                    d dVar22 = dVar21;
                    while (dVar21 != null) {
                        c[] cVarArr13 = dVar21.f5451F;
                        d dVar23 = dVar21.f5472b0[i3];
                        while (true) {
                            if (dVar23 == null) {
                                i6 = 8;
                                break;
                            }
                            i6 = 8;
                            if (dVar23.f5466V != 8) {
                                break;
                            } else {
                                dVar23 = dVar23.f5472b0[i3];
                            }
                        }
                        if (dVar23 != null || dVar21 == dVar) {
                            c cVar26 = cVarArr13[i5];
                            i iVar15 = cVar26.g;
                            c cVar27 = cVar26.f5444d;
                            i iVar16 = cVar27 != null ? cVar27.g : null;
                            if (dVar22 != dVar21) {
                                iVar16 = dVar22.f5451F[i5 + 1].g;
                            } else if (dVar21 == dVar12 && dVar22 == dVar21) {
                                c cVar28 = cVarArr[i5].f5444d;
                                iVar16 = cVar28 != null ? cVar28.g : null;
                            }
                            int iC5 = cVar26.c();
                            int i39 = i5 + 1;
                            int iC6 = cVarArr13[i39].c();
                            if (dVar23 != null) {
                                cVar2 = dVar23.f5451F[i5];
                                iVar3 = cVar2.g;
                                iVar4 = cVarArr13[i39].g;
                            } else {
                                cVar2 = dVar11.f5451F[i39].f5444d;
                                iVar3 = cVar2 != null ? cVar2.g : null;
                                iVar4 = cVarArr13[i39].g;
                            }
                            if (cVar2 != null) {
                                iC6 += cVar2.c();
                            }
                            if (dVar22 != null) {
                                iC5 += dVar22.f5451F[i39].c();
                            }
                            if (iVar15 == null || iVar16 == null || iVar3 == null || iVar4 == null) {
                                dVar2 = dVar23;
                                i7 = 8;
                            } else {
                                if (dVar21 == dVar12) {
                                    iC5 = dVar12.f5451F[i5].c();
                                }
                                if (dVar21 == dVar) {
                                    iC6 = dVar.f5451F[i39].c();
                                }
                                dVar2 = dVar23;
                                i7 = 8;
                                eVar2.b(iVar15, iVar16, iC5, 0.5f, iVar3, iVar4, iC6, z15 ? 8 : 5);
                            }
                        } else {
                            dVar2 = dVar23;
                            i7 = i6;
                        }
                        if (dVar21.f5466V != i7) {
                            dVar22 = dVar21;
                        }
                        dVar21 = dVar2;
                        dVar22 = dVar22;
                    }
                }
            } else {
                c cVar29 = cVarArr[i5];
                int i40 = i5 + 1;
                c cVar30 = dVar11.f5451F[i40];
                c cVar31 = cVar29.f5444d;
                i iVar17 = cVar31 != null ? cVar31.g : null;
                c cVar32 = cVar30.f5444d;
                i iVar18 = cVar32 != null ? cVar32.g : null;
                c cVar33 = dVar12.f5451F[i5];
                c cVar34 = dVar13.f5451F[i40];
                if (iVar17 == null || iVar18 == null) {
                    dVar = dVar13;
                } else {
                    i iVar19 = iVar17;
                    dVar = dVar13;
                    eVar2.b(cVar33.g, iVar19, cVar33.c(), i3 == 0 ? dVar14.f5463S : dVar14.f5464T, iVar18, cVar34.g, cVar34.c(), 7);
                }
            }
            eVar3 = eVar2;
            if (z4) {
                cVarArr2 = dVar12.f5451F;
                c cVar210 = cVarArr2[i5];
                i8 = i5 + 1;
                cVar3 = dVar.f5451F[i8];
                cVar4 = cVar210.f5444d;
                if (cVar4 != null) {
                    iVar5 = cVar4.g;
                } else {
                    iVar5 = null;
                }
                cVar5 = cVar3.f5444d;
                if (cVar5 != null) {
                    iVar6 = cVar5.g;
                } else {
                    iVar6 = null;
                }
                if (dVar11 != dVar) {
                    c cVar211 = dVar11.f5451F[i8].f5444d;
                    iVar6 = cVar211 != null ? cVar211.g : null;
                }
                if (dVar12 == dVar) {
                    cVar3 = cVarArr2[i8];
                }
                if (iVar5 == null) {
                }
            } else {
                cVarArr2 = dVar12.f5451F;
                c cVar212 = cVarArr2[i5];
                i8 = i5 + 1;
                cVar3 = dVar.f5451F[i8];
                cVar4 = cVar212.f5444d;
                if (cVar4 != null) {
                    iVar5 = cVar4.g;
                } else {
                    iVar5 = null;
                }
                cVar5 = cVar3.f5444d;
                if (cVar5 != null) {
                    iVar6 = cVar5.g;
                } else {
                    iVar6 = null;
                }
                if (dVar11 != dVar) {
                    c cVar213 = dVar11.f5451F[i8].f5444d;
                    iVar6 = cVar213 != null ? cVar213.g : null;
                }
                if (dVar12 == dVar) {
                    cVar3 = cVarArr2[i8];
                }
                if (iVar5 == null) {
                }
            }
            i12++;
            eVar4 = eVar;
            bVarArr2 = bVarArr3;
            i11 = i27;
        }
    }
}
