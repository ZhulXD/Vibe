package p053v;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5509a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f5511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f5512e;
    public c f;
    public c g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5513h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5514i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5515j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5516k;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5522q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ g f5523r;
    public d b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5510c = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5517l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5518m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5519n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5520o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5521p = 0;

    public f(g gVar, int i3, c cVar, c cVar2, c cVar3, c cVar4, int i4) {
        this.f5523r = gVar;
        this.f5513h = 0;
        this.f5514i = 0;
        this.f5515j = 0;
        this.f5516k = 0;
        this.f5522q = 0;
        this.f5509a = i3;
        this.f5511d = cVar;
        this.f5512e = cVar2;
        this.f = cVar3;
        this.g = cVar4;
        this.f5513h = gVar.f5542j0;
        this.f5514i = gVar.f5538f0;
        this.f5515j = gVar.f5543k0;
        this.f5516k = gVar.f5539g0;
        this.f5522q = i4;
    }

    public final void a(d dVar) {
        int i3 = this.f5509a;
        g gVar = this.f5523r;
        if (i3 == 0) {
            int iD = gVar.D(dVar, this.f5522q);
            if (dVar.f5474c0[0] == 3) {
                this.f5521p++;
                iD = 0;
            }
            this.f5517l = iD + (dVar.f5466V != 8 ? gVar.f5526C0 : 0) + this.f5517l;
            int iC = gVar.C(dVar, this.f5522q);
            if (this.b == null || this.f5510c < iC) {
                this.b = dVar;
                this.f5510c = iC;
                this.f5518m = iC;
            }
        } else {
            int iD2 = gVar.D(dVar, this.f5522q);
            int iC2 = gVar.C(dVar, this.f5522q);
            if (dVar.f5474c0[1] == 3) {
                this.f5521p++;
                iC2 = 0;
            }
            this.f5518m = iC2 + (dVar.f5466V != 8 ? gVar.f5527D0 : 0) + this.f5518m;
            if (this.b == null || this.f5510c < iD2) {
                this.b = dVar;
                this.f5510c = iD2;
                this.f5517l = iD2;
            }
        }
        this.f5520o++;
    }

    public final void b(boolean z2, int i3, boolean z3) {
        g gVar;
        int i4;
        d dVar;
        char c3;
        int i5;
        int i6;
        int i7;
        int i8 = this.f5520o;
        int i9 = 0;
        while (true) {
            gVar = this.f5523r;
            if (i9 >= i8 || (i7 = this.f5519n + i9) >= gVar.f5537O0) {
                break;
            }
            d dVar2 = gVar.N0[i7];
            if (dVar2 != null) {
                dVar2.t();
            }
            i9++;
        }
        if (i8 == 0 || this.b == null) {
            return;
        }
        boolean z4 = z3 && i3 == 0;
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < i8; i12++) {
            int i13 = this.f5519n + (z2 ? (i8 - 1) - i12 : i12);
            if (i13 >= gVar.f5537O0) {
                break;
            }
            if (gVar.N0[i13].f5466V == 0) {
                if (i10 == -1) {
                    i10 = i12;
                }
                i11 = i12;
            }
        }
        if (this.f5509a != 0) {
            d dVar3 = this.b;
            dVar3.f5468X = gVar.f5547q0;
            c cVar = dVar3.f5493x;
            c cVar2 = dVar3.f5495z;
            int i14 = this.f5513h;
            if (i3 > 0) {
                i14 += gVar.f5526C0;
            }
            if (z2) {
                cVar2.a(this.f, i14);
                if (z3) {
                    cVar.a(this.f5511d, this.f5515j);
                }
                if (i3 > 0) {
                    this.f.b.f5493x.a(cVar2, 0);
                }
            } else {
                cVar.a(this.f5511d, i14);
                if (z3) {
                    cVar2.a(this.f, this.f5515j);
                }
                if (i3 > 0) {
                    this.f5511d.b.f5495z.a(cVar, 0);
                }
            }
            d dVar4 = null;
            int i15 = 0;
            while (i15 < i8) {
                int i16 = this.f5519n + i15;
                if (i16 >= gVar.f5537O0) {
                    return;
                }
                d dVar5 = gVar.N0[i16];
                if (i15 == 0) {
                    dVar5.e(dVar5.f5494y, this.f5512e, this.f5514i);
                    int i17 = gVar.f5548r0;
                    float f = gVar.f5553x0;
                    if (this.f5519n == 0) {
                        int i18 = gVar.f5549t0;
                        i4 = -1;
                        if (i18 != -1) {
                            f = gVar.f5555z0;
                        }
                        i17 = i18;
                        dVar5.f5469Y = i17;
                        dVar5.f5464T = f;
                    } else {
                        i4 = -1;
                    }
                    if (z3 && (i18 = gVar.f5551v0) != i4) {
                        f = gVar.f5525B0;
                        i17 = i18;
                    }
                    dVar5.f5469Y = i17;
                    dVar5.f5464T = f;
                }
                if (i15 == i8 - 1) {
                    dVar5.e(dVar5.f5446A, this.g, this.f5516k);
                }
                if (dVar4 != null) {
                    c cVar3 = dVar4.f5446A;
                    c cVar4 = dVar5.f5494y;
                    cVar4.a(cVar3, gVar.f5527D0);
                    if (i15 == i10) {
                        int i19 = this.f5514i;
                        if (cVar4.f()) {
                            cVar4.f = i19;
                        }
                    }
                    cVar3.a(cVar4, 0);
                    if (i15 == i11 + 1) {
                        int i20 = this.f5516k;
                        if (cVar3.f()) {
                            cVar3.f = i20;
                        }
                    }
                }
                if (dVar5 != dVar3) {
                    if (z2) {
                        int i21 = gVar.f5528E0;
                        if (i21 == 0) {
                            dVar5.f5495z.a(cVar2, 0);
                        } else if (i21 == 1) {
                            dVar5.f5493x.a(cVar, 0);
                        } else if (i21 == 2) {
                            dVar5.f5493x.a(cVar, 0);
                            dVar5.f5495z.a(cVar2, 0);
                        }
                    } else {
                        int i22 = gVar.f5528E0;
                        if (i22 == 0) {
                            dVar5.f5493x.a(cVar, 0);
                        } else if (i22 == 1) {
                            dVar5.f5495z.a(cVar2, 0);
                        } else if (i22 == 2) {
                            if (z4) {
                                dVar5.f5493x.a(this.f5511d, this.f5513h);
                                dVar5.f5495z.a(this.f, this.f5515j);
                            } else {
                                dVar5.f5493x.a(cVar, 0);
                                dVar5.f5495z.a(cVar2, 0);
                            }
                        }
                    }
                }
                i15++;
                dVar4 = dVar5;
            }
            return;
        }
        d dVar6 = this.b;
        dVar6.f5469Y = gVar.f5548r0;
        c cVar5 = dVar6.f5446A;
        c cVar6 = dVar6.f5494y;
        int i23 = this.f5514i;
        if (i3 > 0) {
            i23 += gVar.f5527D0;
        }
        cVar6.a(this.f5512e, i23);
        if (z3) {
            cVar5.a(this.g, this.f5516k);
        }
        if (i3 > 0) {
            this.f5512e.b.f5446A.a(cVar6, 0);
        }
        if (gVar.f5529F0 != 3 || dVar6.f5492w) {
            dVar = dVar6;
            break;
        }
        int i24 = 0;
        while (true) {
            if (i24 < i8) {
                int i25 = this.f5519n + (z2 ? (i8 - 1) - i24 : i24);
                if (i25 < gVar.f5537O0) {
                    dVar = gVar.N0[i25];
                    if (dVar.f5492w) {
                        break;
                    } else {
                        i24++;
                    }
                }
            }
            dVar = dVar6;
            break;
        }
        int i26 = 0;
        d dVar7 = null;
        while (i26 < i8) {
            int i27 = z2 ? (i8 - 1) - i26 : i26;
            int i28 = this.f5519n + i27;
            if (i28 >= gVar.f5537O0) {
                return;
            }
            d dVar8 = gVar.N0[i28];
            if (i26 == 0) {
                dVar8.e(dVar8.f5493x, this.f5511d, this.f5513h);
            }
            if (i27 == 0) {
                int i29 = gVar.f5547q0;
                float f3 = gVar.f5552w0;
                if (this.f5519n == 0) {
                    int i30 = gVar.s0;
                    i5 = -1;
                    if (i30 != -1) {
                        f3 = gVar.f5554y0;
                    }
                    i6 = i30;
                    dVar8.f5468X = i6;
                    dVar8.f5463S = f3;
                } else {
                    i5 = -1;
                }
                if (!z3 || (i30 = gVar.f5550u0) == i5) {
                    i6 = i29;
                } else {
                    f3 = gVar.f5524A0;
                    i6 = i30;
                }
                dVar8.f5468X = i6;
                dVar8.f5463S = f3;
            }
            if (i26 == i8 - 1) {
                dVar8.e(dVar8.f5495z, this.f, this.f5515j);
            }
            if (dVar7 != null) {
                c cVar7 = dVar7.f5495z;
                c cVar8 = dVar8.f5493x;
                cVar8.a(cVar7, gVar.f5526C0);
                if (i26 == i10) {
                    int i31 = this.f5513h;
                    if (cVar8.f()) {
                        cVar8.f = i31;
                    }
                }
                cVar7.a(cVar8, 0);
                if (i26 == i11 + 1) {
                    int i32 = this.f5515j;
                    if (cVar7.f()) {
                        cVar7.f = i32;
                    }
                }
            }
            if (dVar8 != dVar6) {
                int i33 = gVar.f5529F0;
                c3 = 3;
                if (i33 == 3 && dVar.f5492w && dVar8 != dVar && dVar8.f5492w) {
                    dVar8.f5447B.a(dVar.f5447B, 0);
                } else if (i33 == 0) {
                    dVar8.f5494y.a(cVar6, 0);
                } else if (i33 == 1) {
                    dVar8.f5446A.a(cVar5, 0);
                } else if (z4) {
                    dVar8.f5494y.a(this.f5512e, this.f5514i);
                    dVar8.f5446A.a(this.g, this.f5516k);
                } else {
                    dVar8.f5494y.a(cVar6, 0);
                    dVar8.f5446A.a(cVar5, 0);
                }
            } else {
                c3 = 3;
            }
            i26++;
            dVar7 = dVar8;
        }
    }

    public final int c() {
        return this.f5509a == 1 ? this.f5518m - this.f5523r.f5527D0 : this.f5518m;
    }

    public final int d() {
        return this.f5509a == 0 ? this.f5517l - this.f5523r.f5526C0 : this.f5517l;
    }

    public final void e(int i3) {
        g gVar;
        int i4;
        int i5 = this.f5521p;
        if (i5 == 0) {
            return;
        }
        int i6 = this.f5520o;
        int i7 = i3 / i5;
        int i8 = 0;
        while (true) {
            gVar = this.f5523r;
            if (i8 >= i6 || (i4 = this.f5519n + i8) >= gVar.f5537O0) {
                break;
            }
            d dVar = gVar.N0[i4];
            if (this.f5509a == 0) {
                if (dVar != null) {
                    int[] iArr = dVar.f5474c0;
                    if (iArr[0] == 3 && dVar.f5479j == 0) {
                        gVar.E(1, i7, iArr[1], dVar.i(), dVar);
                    }
                }
            } else if (dVar != null) {
                int[] iArr2 = dVar.f5474c0;
                if (iArr2[1] == 3 && dVar.f5480k == 0) {
                    int i9 = i7;
                    gVar.E(iArr2[0], dVar.l(), 1, i9, dVar);
                    i7 = i9;
                }
            }
            i8++;
        }
        this.f5517l = 0;
        this.f5518m = 0;
        this.b = null;
        this.f5510c = 0;
        int i10 = this.f5520o;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f5519n + i11;
            if (i12 >= gVar.f5537O0) {
                return;
            }
            d dVar2 = gVar.N0[i12];
            if (this.f5509a == 0) {
                int iL = dVar2.l();
                int i13 = gVar.f5526C0;
                if (dVar2.f5466V == 8) {
                    i13 = 0;
                }
                this.f5517l = iL + i13 + this.f5517l;
                int iC = gVar.C(dVar2, this.f5522q);
                if (this.b == null || this.f5510c < iC) {
                    this.b = dVar2;
                    this.f5510c = iC;
                    this.f5518m = iC;
                }
            } else {
                int iD = gVar.D(dVar2, this.f5522q);
                int iC2 = gVar.C(dVar2, this.f5522q);
                int i14 = gVar.f5527D0;
                if (dVar2.f5466V == 8) {
                    i14 = 0;
                }
                this.f5518m = iC2 + i14 + this.f5518m;
                if (this.b == null || this.f5510c < iD) {
                    this.b = dVar2;
                    this.f5510c = iD;
                    this.f5517l = iD;
                }
            }
        }
    }

    public final void f(int i3, c cVar, c cVar2, c cVar3, c cVar4, int i4, int i5, int i6, int i7, int i8) {
        this.f5509a = i3;
        this.f5511d = cVar;
        this.f5512e = cVar2;
        this.f = cVar3;
        this.g = cVar4;
        this.f5513h = i4;
        this.f5514i = i5;
        this.f5515j = i6;
        this.f5516k = i7;
        this.f5522q = i8;
    }
}
