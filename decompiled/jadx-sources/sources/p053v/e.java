package p053v;

import F.b;
import N1.w;
import java.util.ArrayList;
import java.util.Arrays;
import p051u.g;
import p051u.i;
import p056w.c;
import p056w.j;
import p056w.l;
import p056w.m;
import p059x.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends d {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public ArrayList f5496d0 = new ArrayList();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final b f5497e0 = new b(this);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final p056w.e f5498f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public f f5499g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f5500h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final p051u.e f5501i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f5502j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f5503k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f5504l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f5505m0;
    public b[] n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public b[] f5506o0;
    public int p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f5507q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f5508r0;

    public e() {
        p056w.e eVar = new p056w.e();
        eVar.b = true;
        eVar.f5586c = true;
        eVar.f5588e = new ArrayList();
        new ArrayList();
        eVar.f = null;
        eVar.g = new p056w.b();
        eVar.f5589h = new ArrayList();
        eVar.f5585a = this;
        eVar.f5587d = this;
        this.f5498f0 = eVar;
        this.f5499g0 = null;
        this.f5500h0 = false;
        this.f5501i0 = new p051u.e();
        this.f5504l0 = 0;
        this.f5505m0 = 0;
        this.n0 = new b[4];
        this.f5506o0 = new b[4];
        this.p0 = 263;
        this.f5507q0 = false;
        this.f5508r0 = false;
    }

    public final void B(d dVar, int i3) {
        if (i3 == 0) {
            int i4 = this.f5504l0 + 1;
            b[] bVarArr = this.f5506o0;
            if (i4 >= bVarArr.length) {
                this.f5506o0 = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
            }
            b[] bVarArr2 = this.f5506o0;
            int i5 = this.f5504l0;
            bVarArr2[i5] = new b(dVar, 0, this.f5500h0);
            this.f5504l0 = i5 + 1;
            return;
        }
        if (i3 == 1) {
            int i6 = this.f5505m0 + 1;
            b[] bVarArr3 = this.n0;
            if (i6 >= bVarArr3.length) {
                this.n0 = (b[]) Arrays.copyOf(bVarArr3, bVarArr3.length * 2);
            }
            b[] bVarArr4 = this.n0;
            int i7 = this.f5505m0;
            bVarArr4[i7] = new b(dVar, 1, this.f5500h0);
            this.f5505m0 = i7 + 1;
        }
    }

    public final void C(p051u.e eVar) {
        int i3;
        int i4;
        a(eVar);
        int size = this.f5496d0.size();
        char c3 = 0;
        int i5 = 0;
        boolean z2 = false;
        while (true) {
            i3 = 1;
            if (i5 >= size) {
                break;
            }
            d dVar = (d) this.f5496d0.get(i5);
            boolean[] zArr = dVar.f5453H;
            zArr[0] = false;
            zArr[1] = false;
            if (dVar instanceof a) {
                z2 = true;
            }
            i5++;
        }
        if (z2) {
            for (int i6 = 0; i6 < size; i6++) {
                d dVar2 = (d) this.f5496d0.get(i6);
                if (dVar2 instanceof a) {
                    a aVar = (a) dVar2;
                    for (int i7 = 0; i7 < aVar.f5562e0; i7++) {
                        d dVar3 = aVar.f5561d0[i7];
                        int i8 = aVar.f5425f0;
                        if (i8 == 0 || i8 == 1) {
                            dVar3.f5453H[0] = true;
                        } else if (i8 == 2 || i8 == 3) {
                            dVar3.f5453H[1] = true;
                        }
                    }
                }
            }
        }
        for (int i9 = 0; i9 < size; i9++) {
            d dVar4 = (d) this.f5496d0.get(i9);
            dVar4.getClass();
            if ((dVar4 instanceof g) || (dVar4 instanceof h)) {
                dVar4.a(eVar);
            }
        }
        int i10 = 0;
        while (i10 < size) {
            d dVar5 = (d) this.f5496d0.get(i10);
            if (dVar5 instanceof e) {
                int[] iArr = dVar5.f5474c0;
                int i11 = iArr[c3];
                int i12 = iArr[i3];
                if (i11 == 2) {
                    dVar5.w(i3);
                }
                if (i12 == 2) {
                    dVar5.x(i3);
                }
                dVar5.a(eVar);
                if (i11 == 2) {
                    dVar5.w(i11);
                }
                if (i12 == 2) {
                    dVar5.x(i12);
                }
                i4 = i3;
            } else {
                dVar5.f5477h = -1;
                c cVar = dVar5.f5447B;
                int[] iArr2 = dVar5.f5474c0;
                c cVar2 = dVar5.f5446A;
                c cVar3 = dVar5.f5494y;
                c cVar4 = dVar5.f5495z;
                c cVar5 = dVar5.f5493x;
                dVar5.f5478i = -1;
                int[] iArr3 = this.f5474c0;
                i4 = i3;
                if (iArr3[c3] != 2 && iArr2[c3] == 4) {
                    int i13 = cVar5.f5445e;
                    int iL = l() - cVar4.f5445e;
                    cVar5.g = eVar.j(cVar5);
                    cVar4.g = eVar.j(cVar4);
                    eVar.d(cVar5.g, i13);
                    eVar.d(cVar4.g, iL);
                    dVar5.f5477h = 2;
                    dVar5.f5458N = i13;
                    int i14 = iL - i13;
                    dVar5.f5455J = i14;
                    int i15 = dVar5.f5461Q;
                    if (i14 < i15) {
                        dVar5.f5455J = i15;
                    }
                }
                if (iArr3[i4] != 2 && iArr2[i4] == 4) {
                    int i16 = cVar3.f5445e;
                    int i17 = i() - cVar2.f5445e;
                    cVar3.g = eVar.j(cVar3);
                    cVar2.g = eVar.j(cVar2);
                    eVar.d(cVar3.g, i16);
                    eVar.d(cVar2.g, i17);
                    if (dVar5.f5460P > 0 || dVar5.f5466V == 8) {
                        i iVarJ = eVar.j(cVar);
                        cVar.g = iVarJ;
                        eVar.d(iVarJ, dVar5.f5460P + i16);
                    }
                    dVar5.f5478i = 2;
                    dVar5.f5459O = i16;
                    int i18 = i17 - i16;
                    dVar5.K = i18;
                    int i19 = dVar5.f5462R;
                    if (i18 < i19) {
                        dVar5.K = i19;
                    }
                }
                if (!(dVar5 instanceof g) && !(dVar5 instanceof h)) {
                    dVar5.a(eVar);
                }
            }
            i10++;
            i3 = i4;
            c3 = 0;
        }
        int i20 = i3;
        if (this.f5504l0 > 0) {
            j.a(this, eVar, 0);
        }
        if (this.f5505m0 > 0) {
            j.a(this, eVar, i20);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean D(int i3, boolean z2) {
        boolean z3;
        int i4;
        int i5;
        boolean z4;
        boolean z5;
        p056w.e eVar = this.f5498f0;
        ArrayList arrayList = eVar.f5588e;
        e eVar2 = eVar.f5585a;
        int i6 = 0;
        int iH = eVar2.h(0);
        int[] iArr = eVar2.f5474c0;
        l lVar = eVar2.f5476e;
        j jVar = eVar2.f5475d;
        int iH2 = eVar2.h(1);
        int iM = eVar2.m();
        int iN = eVar2.n();
        if (z2 && (iH == 2 || iH2 == 2)) {
            int size = arrayList.size();
            while (true) {
                if (i6 >= size) {
                    z5 = z2;
                    break;
                }
                Object obj = arrayList.get(i6);
                i6++;
                m mVar = (m) obj;
                if (mVar.f == i3 && !mVar.k()) {
                    z5 = false;
                    break;
                }
            }
            if (i3 == 0) {
                if (z5 && iH == 2) {
                    eVar2.w(1);
                    eVar2.y(eVar.d(eVar2, 0));
                    jVar.f5607e.d(eVar2.l());
                }
            } else if (z5 && iH2 == 2) {
                eVar2.x(1);
                eVar2.v(eVar.d(eVar2, 1));
                lVar.f5607e.d(eVar2.i());
            }
        }
        if (i3 == 0) {
            i4 = 0;
            int i7 = iArr[0];
            if (i7 == 1 || i7 == 4) {
                int iL = eVar2.l() + iM;
                jVar.f5609i.d(iL);
                jVar.f5607e.d(iL - iM);
                z3 = true;
                i5 = 1;
            } else {
                z3 = true;
                i5 = i4;
            }
        } else {
            z3 = true;
            i4 = 0;
            int i8 = iArr[1];
            if (i8 == 1 || i8 == 4) {
                int i9 = eVar2.i() + iN;
                lVar.f5609i.d(i9);
                lVar.f5607e.d(i9 - iN);
                i5 = 1;
            } else {
                i5 = i4;
            }
        }
        eVar.g();
        int size2 = arrayList.size();
        int i10 = i4;
        while (i10 < size2) {
            Object obj2 = arrayList.get(i10);
            i10++;
            m mVar2 = (m) obj2;
            if (mVar2.f == i3 && (mVar2.b != eVar2 || mVar2.g)) {
                mVar2.e();
            }
        }
        int size3 = arrayList.size();
        int i11 = i4;
        while (i11 < size3) {
            Object obj3 = arrayList.get(i11);
            i11++;
            m mVar3 = (m) obj3;
            if (mVar3.f == i3 && (i5 != 0 || mVar3.b != eVar2)) {
                if (!mVar3.f5608h.f5596j || !mVar3.f5609i.f5596j || (!(mVar3 instanceof c) && !mVar3.f5607e.f5596j)) {
                    z4 = i4;
                    eVar2.w(iH);
                    eVar2.x(iH2);
                    return z4;
                }
            }
        }
        z4 = z3;
        eVar2.w(iH);
        eVar2.x(iH2);
        return z4;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:60:0x0107 A[LOOP:3: B:59:0x0105->B:60:0x0107, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:61:0x0115  */
    /* JADX WARN: Code duplicated, block: B:63:0x011c A[LOOP:5: B:62:0x011a->B:63:0x011c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x018e  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:96:0x01db  */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v44 */
    public final void E() {
        boolean z2;
        boolean z3;
        boolean[] zArr;
        int i3;
        boolean z4;
        int iMax;
        boolean z5;
        boolean z6;
        int iMax2;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        ?? r2;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        int size;
        int i4;
        boolean z16;
        boolean z17 = false;
        this.f5458N = 0;
        this.f5459O = 0;
        int iMax3 = Math.max(0, l());
        int iMax4 = Math.max(0, i());
        this.f5507q0 = false;
        this.f5508r0 = false;
        int i5 = this.p0;
        boolean z18 = true;
        boolean z19 = (i5 & 64) == 64 || (i5 & 128) == 128;
        p051u.e eVar = this.f5501i0;
        eVar.getClass();
        eVar.f = false;
        if (this.p0 != 0 && z19) {
            eVar.f = true;
        }
        int[] iArr = this.f5474c0;
        int i6 = iArr[1];
        int i7 = iArr[0];
        ArrayList arrayList = this.f5496d0;
        int i8 = 2;
        boolean z20 = i7 == 2 || i6 == 2;
        this.f5504l0 = 0;
        this.f5505m0 = 0;
        int size2 = arrayList.size();
        for (int i9 = 0; i9 < size2; i9++) {
            d dVar = (d) this.f5496d0.get(i9);
            if (dVar instanceof e) {
                ((e) dVar).E();
            }
        }
        int i10 = 0;
        boolean z21 = false;
        boolean z22 = true;
        while (z22) {
            boolean z23 = z18;
            int i11 = i10 + 1;
            try {
                eVar.r();
                this.f5504l0 = z17 ? 1 : 0;
                this.f5505m0 = z17 ? 1 : 0;
                f(eVar);
                int i12 = z17 ? 1 : 0;
                while (i12 < size2) {
                    z2 = z17;
                    try {
                        ((d) this.f5496d0.get(i12)).f(eVar);
                        i12++;
                        z17 = z2 ? 1 : 0;
                    } catch (Exception e2) {
                        e = e2;
                        z16 = z22;
                        e.printStackTrace();
                        System.out.println("EXCEPTION : " + e);
                        z3 = z16;
                        zArr = j.f5563a;
                        if (z3) {
                            zArr[i8] = z2;
                            A(eVar);
                            size = this.f5496d0.size();
                            for (i4 = z2 ? 1 : 0; i4 < size; i4++) {
                                ((d) this.f5496d0.get(i4)).A(eVar);
                            }
                        } else {
                            A(eVar);
                            for (i3 = z2 ? 1 : 0; i3 < size2; i3++) {
                                ((d) this.f5496d0.get(i3)).A(eVar);
                            }
                        }
                        if (z20) {
                            z4 = z2 ? 1 : 0;
                        } else {
                            z4 = z2 ? 1 : 0;
                        }
                        z4 = z15;
                        z4 = z15;
                        iMax = Math.max(this.f5461Q, l());
                        z6 = z4;
                        z5 = z21;
                        if (iMax > l()) {
                            y(iMax);
                            iArr[z2 ? 1 : 0] = z23 ? 1 : 0;
                            boolean z24 = z23 ? 1 : 0;
                            z5 = z24 ? 1 : 0;
                            z6 = z24;
                        }
                        iMax2 = Math.max(this.f5462R, i());
                        z8 = z6;
                        z7 = z5;
                        if (iMax2 > i()) {
                            v(iMax2);
                            iArr[z23 ? 1 : 0] = z23 ? 1 : 0;
                            z14 = z23 ? 1 : 0;
                            z7 = z14 ? 1 : 0;
                        }
                        if (z7) {
                            z8 = z14;
                            i8 = 2;
                            z10 = z8;
                            z9 = z7;
                        } else {
                            if (iArr[z2 ? 1 : 0] == 2) {
                                z8 = z14;
                                r2 = z23 ? 1 : 0;
                                z13 = z8;
                                z12 = z7;
                            } else {
                                z8 = z14;
                                r2 = z23 ? 1 : 0;
                                z13 = z8;
                                z12 = z7;
                            }
                            i8 = 2;
                            z10 = z13;
                            z10 = z13;
                            z9 = z12;
                            z9 = z12;
                            if (iArr[r2] != 2) {
                            }
                            i10 = i11;
                            z17 = z2 ? 1 : 0;
                            iArr = iArr;
                            z18 = true;
                            z22 = z11;
                            z21 = z9;
                        }
                        z10 = z13;
                        z9 = z12;
                        z11 = z10;
                        i10 = i11;
                        z17 = z2 ? 1 : 0;
                        iArr = iArr;
                        z18 = true;
                        z22 = z11;
                        z21 = z9;
                    }
                }
                z2 = z17;
                C(eVar);
                try {
                    g gVar = eVar.b;
                    if (eVar.f) {
                        int i13 = z2 ? 1 : 0;
                        while (true) {
                            if (i13 >= eVar.f5350i) {
                                for (int i14 = z2 ? 1 : 0; i14 < eVar.f5350i; i14++) {
                                    p051u.c cVar = eVar.f5348e[i14];
                                    cVar.f5339a.f5363e = cVar.b;
                                }
                                break;
                            }
                            if (!eVar.f5348e[i13].f5342e) {
                                eVar.o(gVar);
                                break;
                            }
                            i13++;
                        }
                    } else {
                        eVar.o(gVar);
                    }
                    z3 = z23 ? 1 : 0;
                } catch (Exception e3) {
                    e = e3;
                    z16 = z23 ? 1 : 0;
                    e.printStackTrace();
                    System.out.println("EXCEPTION : " + e);
                    z3 = z16;
                }
            } catch (Exception e4) {
                e = e4;
                z2 = z17 ? 1 : 0;
                z16 = z22;
            }
            zArr = j.f5563a;
            if (z3) {
                zArr[i8] = z2;
                A(eVar);
                size = this.f5496d0.size();
                while (i4 < size) {
                    ((d) this.f5496d0.get(i4)).A(eVar);
                }
            } else {
                A(eVar);
                while (i3 < size2) {
                    ((d) this.f5496d0.get(i3)).A(eVar);
                }
            }
            if (z20 || i11 >= 8 || !zArr[i8]) {
                z4 = z2 ? 1 : 0;
            } else {
                int i15 = z2 ? 1 : 0;
                int iMax5 = i15;
                int iMax6 = iMax5;
                while (i15 < size2) {
                    d dVar2 = (d) this.f5496d0.get(i15);
                    iMax5 = Math.max(iMax5, dVar2.l() + dVar2.f5458N);
                    iMax6 = Math.max(iMax6, dVar2.i() + dVar2.f5459O);
                    i15++;
                }
                int iMax7 = Math.max(this.f5461Q, iMax5);
                int iMax8 = Math.max(this.f5462R, iMax6);
                int i16 = i8;
                if (i7 != i16 || l() >= iMax7) {
                    z4 = z2 ? 1 : 0;
                    z21 = z21;
                } else {
                    y(iMax7);
                    iArr[z2 ? 1 : 0] = i16;
                    z15 = z23 ? 1 : 0;
                    z21 = z15 ? 1 : 0;
                }
                if (i6 == i16 && i() < iMax8) {
                    z4 = z15;
                    v(iMax8);
                    iArr[z23 ? 1 : 0] = i16;
                    z4 = z23 ? 1 : 0;
                    z21 = z4 ? 1 : 0;
                }
            }
            z4 = z15;
            z4 = z15;
            iMax = Math.max(this.f5461Q, l());
            z6 = z4;
            z5 = z21;
            if (iMax > l()) {
                y(iMax);
                iArr[z2 ? 1 : 0] = z23 ? 1 : 0;
                boolean z25 = z23 ? 1 : 0;
                z5 = z25 ? 1 : 0;
                z6 = z25;
            }
            iMax2 = Math.max(this.f5462R, i());
            z8 = z6;
            z7 = z5;
            if (iMax2 > i()) {
                v(iMax2);
                iArr[z23 ? 1 : 0] = z23 ? 1 : 0;
                z14 = z23 ? 1 : 0;
                z7 = z14 ? 1 : 0;
            }
            if (z7) {
                if (iArr[z2 ? 1 : 0] == 2 || iMax3 <= 0 || l() <= iMax3) {
                    z8 = z14;
                    r2 = z23 ? 1 : 0;
                    z13 = z8;
                    z12 = z7;
                } else {
                    boolean z26 = z23 ? 1 : 0;
                    this.f5507q0 = z26;
                    iArr[z2 ? 1 : 0] = z26 ? 1 : 0;
                    y(iMax3);
                    boolean z27 = z26 ? 1 : 0;
                    z12 = z27 ? 1 : 0;
                    z13 = z27;
                    r2 = z26;
                }
                i8 = 2;
                z10 = z13;
                z10 = z13;
                z9 = z12;
                z9 = z12;
                if (iArr[r2] != 2 && iMax4 > 0 && i() > iMax4) {
                    z10 = z13;
                    z9 = z12;
                    this.f5508r0 = r2;
                    iArr[r2] = r2;
                    v(iMax4);
                    z11 = true;
                    z9 = true;
                }
                i10 = i11;
                z17 = z2 ? 1 : 0;
                iArr = iArr;
                z18 = true;
                z22 = z11;
                z21 = z9;
            } else {
                z8 = z14;
                i8 = 2;
                z10 = z8;
                z9 = z7;
            }
            z10 = z13;
            z9 = z12;
            z11 = z10;
            i10 = i11;
            z17 = z2 ? 1 : 0;
            iArr = iArr;
            z18 = true;
            z22 = z11;
            z21 = z9;
        }
        boolean z28 = z17 ? 1 : 0;
        int[] iArr2 = iArr;
        this.f5496d0 = arrayList;
        if (z21) {
            iArr2[z28 ? 1 : 0] = i7;
            iArr2[1] = i6;
        }
        u(eVar.f5352k);
    }

    @Override // p053v.d
    public final void s() {
        this.f5501i0.r();
        this.f5502j0 = 0;
        this.f5503k0 = 0;
        this.f5496d0.clear();
        super.s();
    }

    @Override // p053v.d
    public final void u(w wVar) {
        super.u(wVar);
        int size = this.f5496d0.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((d) this.f5496d0.get(i3)).u(wVar);
        }
    }

    @Override // p053v.d
    public final void z(boolean z2, boolean z3) {
        super.z(z2, z3);
        int size = this.f5496d0.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((d) this.f5496d0.get(i3)).z(z2, z3);
        }
    }
}
