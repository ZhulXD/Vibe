package p053v;

import java.util.ArrayList;
import p051u.e;
import p056w.b;
import p059x.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends i {

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public float f5524A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public float f5525B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public int f5526C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public int f5527D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public int f5528E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public int f5529F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public int f5530G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public int f5531H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public int f5532I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public ArrayList f5533J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public d[] f5534K0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public d[] f5535L0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public int[] f5536M0;
    public d[] N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public int f5537O0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f5538f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f5539g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f5540h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f5541i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f5542j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f5543k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f5544l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f5545m0;
    public int n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public b f5546o0;
    public f p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f5547q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f5548r0;
    public int s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f5549t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f5550u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f5551v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public float f5552w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public float f5553x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public float f5554y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public float f5555z0;

    @Override // p053v.i
    public final void B() {
        for (int i3 = 0; i3 < this.f5562e0; i3++) {
            d dVar = this.f5561d0[i3];
        }
    }

    public final int C(d dVar, int i3) {
        d dVar2;
        if (dVar != null) {
            int[] iArr = dVar.f5474c0;
            if (iArr[1] == 3) {
                int i4 = dVar.f5480k;
                if (i4 != 0) {
                    if (i4 == 2) {
                        int i5 = (int) (dVar.f5487r * i3);
                        if (i5 != dVar.i()) {
                            E(iArr[0], dVar.l(), 1, i5, dVar);
                        }
                        return i5;
                    }
                    dVar2 = dVar;
                    if (i4 == 1) {
                        return dVar2.i();
                    }
                    if (i4 == 3) {
                        return (int) ((dVar2.l() * dVar2.f5456L) + 0.5f);
                    }
                }
            } else {
                dVar2 = dVar;
            }
            return dVar2.i();
        }
        return 0;
    }

    public final int D(d dVar, int i3) {
        d dVar2;
        if (dVar != null) {
            int[] iArr = dVar.f5474c0;
            if (iArr[0] == 3) {
                int i4 = dVar.f5479j;
                if (i4 != 0) {
                    if (i4 == 2) {
                        int i5 = (int) (dVar.f5484o * i3);
                        if (i5 != dVar.l()) {
                            E(1, i5, iArr[1], dVar.i(), dVar);
                        }
                        return i5;
                    }
                    dVar2 = dVar;
                    if (i4 == 1) {
                        return dVar2.l();
                    }
                    if (i4 == 3) {
                        return (int) ((dVar2.i() * dVar2.f5456L) + 0.5f);
                    }
                }
            } else {
                dVar2 = dVar;
            }
            return dVar2.l();
        }
        return 0;
    }

    public final void E(int i3, int i4, int i5, int i6, d dVar) {
        f fVar;
        d dVar2;
        b bVar = this.f5546o0;
        while (true) {
            fVar = this.p0;
            if (fVar != null || (dVar2 = this.f5454I) == null) {
                break;
            } else {
                this.p0 = ((e) dVar2).f5499g0;
            }
        }
        bVar.f5576a = i3;
        bVar.b = i5;
        bVar.f5577c = i4;
        bVar.f5578d = i6;
        fVar.a(dVar, bVar);
        dVar.y(bVar.f5579e);
        dVar.v(bVar.f);
        dVar.f5492w = bVar.f5580h;
        int i7 = bVar.g;
        dVar.f5460P = i7;
        dVar.f5492w = i7 > 0;
    }

    @Override // p053v.d
    public final void a(e eVar) {
        d dVar;
        ArrayList arrayList = this.f5533J0;
        super.a(eVar);
        d dVar2 = this.f5454I;
        boolean z2 = dVar2 != null ? ((e) dVar2).f5500h0 : false;
        int i3 = this.f5530G0;
        if (i3 != 0) {
            if (i3 == 1) {
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    ((f) arrayList.get(i4)).b(z2, i4, i4 == size + (-1));
                    i4++;
                }
            } else if (i3 == 2 && this.f5536M0 != null && this.f5535L0 != null && this.f5534K0 != null) {
                for (int i5 = 0; i5 < this.f5537O0; i5++) {
                    this.N0[i5].t();
                }
                int[] iArr = this.f5536M0;
                int i6 = iArr[0];
                int i7 = iArr[1];
                d dVar3 = null;
                for (int i8 = 0; i8 < i6; i8++) {
                    d dVar4 = this.f5535L0[z2 ? (i6 - i8) - 1 : i8];
                    if (dVar4 != null) {
                        c cVar = dVar4.f5493x;
                        if (dVar4.f5466V != 8) {
                            if (i8 == 0) {
                                dVar4.e(cVar, this.f5493x, this.f5542j0);
                                dVar4.f5468X = this.f5547q0;
                                dVar4.f5463S = this.f5552w0;
                            }
                            if (i8 == i6 - 1) {
                                dVar4.e(dVar4.f5495z, this.f5495z, this.f5543k0);
                            }
                            if (i8 > 0) {
                                dVar4.e(cVar, dVar3.f5495z, this.f5526C0);
                                dVar3.e(dVar3.f5495z, cVar, 0);
                            }
                            dVar3 = dVar4;
                        }
                    }
                }
                for (int i9 = 0; i9 < i7; i9++) {
                    d dVar5 = this.f5534K0[i9];
                    if (dVar5 != null) {
                        c cVar2 = dVar5.f5494y;
                        if (dVar5.f5466V != 8) {
                            if (i9 == 0) {
                                dVar5.e(cVar2, this.f5494y, this.f5538f0);
                                dVar5.f5469Y = this.f5548r0;
                                dVar5.f5464T = this.f5553x0;
                            }
                            if (i9 == i7 - 1) {
                                dVar5.e(dVar5.f5446A, this.f5446A, this.f5539g0);
                            }
                            if (i9 > 0) {
                                dVar5.e(cVar2, dVar3.f5446A, this.f5527D0);
                                dVar3.e(dVar3.f5446A, cVar2, 0);
                            }
                            dVar3 = dVar5;
                        }
                    }
                }
                for (int i10 = 0; i10 < i6; i10++) {
                    for (int i11 = 0; i11 < i7; i11++) {
                        int i12 = (i11 * i6) + i10;
                        if (this.f5532I0 == 1) {
                            i12 = (i10 * i7) + i11;
                        }
                        d[] dVarArr = this.N0;
                        if (i12 < dVarArr.length && (dVar = dVarArr[i12]) != null && dVar.f5466V != 8) {
                            d dVar6 = this.f5535L0[i10];
                            d dVar7 = this.f5534K0[i11];
                            if (dVar != dVar6) {
                                dVar.e(dVar.f5493x, dVar6.f5493x, 0);
                                dVar.e(dVar.f5495z, dVar6.f5495z, 0);
                            }
                            if (dVar != dVar7) {
                                dVar.e(dVar.f5494y, dVar7.f5494y, 0);
                                dVar.e(dVar.f5446A, dVar7.f5446A, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((f) arrayList.get(0)).b(z2, 0, true);
        }
        this.f5544l0 = false;
    }
}
