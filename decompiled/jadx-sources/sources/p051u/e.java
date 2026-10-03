package p051u;

import N1.w;
import java.util.ArrayList;
import java.util.Arrays;
import p011e.C0244f;
import p053v.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f5343o = 1000;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static boolean f5344p = true;
    public final g b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c[] f5348e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final w f5352k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f5355n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5345a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5346c = 32;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5347d = 32;
    public boolean f = false;
    public boolean[] g = new boolean[32];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5349h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5350i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5351j = 32;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public i[] f5353l = new i[f5343o];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5354m = 0;

    public e() {
        this.f5348e = null;
        this.f5348e = new c[32];
        q();
        w wVar = new w();
        wVar.f1493a = new C0244f(3);
        wVar.b = new C0244f(3);
        wVar.f1494c = new C0244f(3);
        wVar.f1495d = new i[32];
        this.f5352k = wVar;
        g gVar = new g(wVar);
        gVar.f = new i[128];
        gVar.g = new i[128];
        gVar.f5357h = 0;
        gVar.f5358i = new f(gVar);
        this.b = gVar;
        if (f5344p) {
            this.f5355n = new d(wVar);
        } else {
            this.f5355n = new c(wVar);
        }
    }

    public static int m(Object obj) {
        i iVar = ((c) obj).g;
        if (iVar != null) {
            return (int) (iVar.f5363e + 0.5f);
        }
        return 0;
    }

    public final i a(int i3) {
        i iVar = (i) ((C0244f) this.f5352k.f1494c).b();
        if (iVar == null) {
            iVar = new i(i3);
            iVar.f5368l = i3;
        } else {
            iVar.c();
            iVar.f5368l = i3;
        }
        int i4 = this.f5354m;
        int i5 = f5343o;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            f5343o = i6;
            this.f5353l = (i[]) Arrays.copyOf(this.f5353l, i6);
        }
        i[] iVarArr = this.f5353l;
        int i7 = this.f5354m;
        this.f5354m = i7 + 1;
        iVarArr[i7] = iVar;
        return iVar;
    }

    public final void b(i iVar, i iVar2, int i3, float f, i iVar3, i iVar4, int i4, int i5) {
        c cVarK = k();
        if (iVar2 == iVar3) {
            cVarK.f5341d.h(iVar, 1.0f);
            cVarK.f5341d.h(iVar4, 1.0f);
            cVarK.f5341d.h(iVar2, -2.0f);
        } else if (f == 0.5f) {
            cVarK.f5341d.h(iVar, 1.0f);
            cVarK.f5341d.h(iVar2, -1.0f);
            cVarK.f5341d.h(iVar3, -1.0f);
            cVarK.f5341d.h(iVar4, 1.0f);
            if (i3 > 0 || i4 > 0) {
                cVarK.b = (-i3) + i4;
            }
        } else if (f <= 0.0f) {
            cVarK.f5341d.h(iVar, -1.0f);
            cVarK.f5341d.h(iVar2, 1.0f);
            cVarK.b = i3;
        } else if (f >= 1.0f) {
            cVarK.f5341d.h(iVar4, -1.0f);
            cVarK.f5341d.h(iVar3, 1.0f);
            cVarK.b = -i4;
        } else {
            float f3 = 1.0f - f;
            cVarK.f5341d.h(iVar, f3 * 1.0f);
            cVarK.f5341d.h(iVar2, f3 * (-1.0f));
            cVarK.f5341d.h(iVar3, (-1.0f) * f);
            cVarK.f5341d.h(iVar4, 1.0f * f);
            if (i3 > 0 || i4 > 0) {
                cVarK.b = (i4 * f) + ((-i3) * f3);
            }
        }
        if (i5 != 8) {
            cVarK.a(this, i5);
        }
        c(cVarK);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00be  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e0  */
    public final void c(c cVar) {
        boolean z2;
        boolean z3;
        i iVarE;
        if (this.f5350i + 1 >= this.f5351j || this.f5349h + 1 >= this.f5347d) {
            n();
        }
        if (cVar.f5342e) {
            z2 = false;
        } else {
            ArrayList arrayList = cVar.f5340c;
            if (this.f5348e.length != 0) {
                boolean z4 = false;
                while (!z4) {
                    int iD = cVar.f5341d.d();
                    for (int i3 = 0; i3 < iD; i3++) {
                        i iVarI = cVar.f5341d.i(i3);
                        if (iVarI.f5361c != -1 || iVarI.f) {
                            arrayList.add(iVarI);
                        }
                    }
                    if (arrayList.size() > 0) {
                        int size = arrayList.size();
                        int i4 = 0;
                        while (i4 < size) {
                            Object obj = arrayList.get(i4);
                            i4++;
                            i iVar = (i) obj;
                            if (iVar.f) {
                                cVar.g(iVar, true);
                            } else {
                                cVar.h(this.f5348e[iVar.f5361c], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z4 = true;
                    }
                }
            }
            float f = 0.0f;
            if (cVar.f5339a == null && cVar.b == 0.0f && cVar.f5341d.d() == 0) {
                return;
            }
            float f3 = cVar.b;
            if (f3 < 0.0f) {
                cVar.b = f3 * (-1.0f);
                cVar.f5341d.k();
            }
            int iD2 = cVar.f5341d.d();
            float f4 = 0.0f;
            float f5 = 0.0f;
            i iVar2 = null;
            i iVar3 = null;
            int i5 = 0;
            boolean z5 = false;
            boolean z6 = false;
            while (i5 < iD2) {
                float fA = cVar.f5341d.a(i5);
                i iVarI2 = cVar.f5341d.i(i5);
                float f6 = f;
                if (iVarI2.f5368l == 1) {
                    if (iVar2 == null) {
                        if (iVarI2.f5367k <= 1) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        iVar2 = iVarI2;
                        f4 = fA;
                    } else {
                        if (f4 > fA) {
                            if (iVarI2.f5367k > 1) {
                                z5 = false;
                            }
                            iVar2 = iVarI2;
                            f4 = fA;
                        } else if (z5 || iVarI2.f5367k > 1) {
                        }
                        z5 = true;
                        iVar2 = iVarI2;
                        f4 = fA;
                    }
                } else if (iVar2 == null && fA < f6) {
                    if (iVar3 == null) {
                        if (iVarI2.f5367k <= 1) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        iVar3 = iVarI2;
                        f5 = fA;
                    } else {
                        if (f5 > fA) {
                            if (iVarI2.f5367k > 1) {
                                z6 = false;
                            }
                            iVar3 = iVarI2;
                            f5 = fA;
                        } else if (z6 || iVarI2.f5367k > 1) {
                        }
                        z6 = true;
                        iVar3 = iVarI2;
                        f5 = fA;
                    }
                }
                i5++;
                f = f6;
            }
            float f7 = f;
            if (iVar2 == null) {
                iVar2 = iVar3;
            }
            if (iVar2 == null) {
                z3 = true;
            } else {
                cVar.f(iVar2);
                z3 = false;
            }
            if (cVar.f5341d.d() == 0) {
                cVar.f5342e = true;
            }
            if (z3) {
                if (this.f5349h + 1 >= this.f5347d) {
                    n();
                }
                i iVarA = a(3);
                int i6 = this.f5345a + 1;
                this.f5345a = i6;
                this.f5349h++;
                iVarA.b = i6;
                ((i[]) this.f5352k.f1495d)[i6] = iVarA;
                cVar.f5339a = iVarA;
                h(cVar);
                c cVar2 = this.f5355n;
                cVar2.f5339a = null;
                cVar2.f5341d.clear();
                for (int i7 = 0; i7 < cVar.f5341d.d(); i7++) {
                    cVar2.f5341d.f(cVar.f5341d.i(i7), cVar.f5341d.a(i7), true);
                }
                p(this.f5355n);
                if (iVarA.f5361c == -1) {
                    if (cVar.f5339a == iVarA && (iVarE = cVar.e(null, iVarA)) != null) {
                        cVar.f(iVarE);
                    }
                    if (!cVar.f5342e) {
                        cVar.f5339a.d(cVar);
                    }
                    this.f5350i--;
                }
                z2 = true;
            } else {
                z2 = false;
            }
            i iVar4 = cVar.f5339a;
            if (iVar4 == null) {
                return;
            }
            if (iVar4.f5368l != 1 && cVar.b < f7) {
                return;
            }
        }
        if (z2) {
            return;
        }
        h(cVar);
    }

    public final void d(i iVar, int i3) {
        int i4 = iVar.f5361c;
        if (i4 == -1) {
            iVar.f5363e = i3;
            iVar.f = true;
            int i5 = iVar.f5366j;
            for (int i6 = 0; i6 < i5; i6++) {
                iVar.f5365i[i6].g(iVar, false);
            }
            iVar.f5366j = 0;
            return;
        }
        if (i4 == -1) {
            c cVarK = k();
            cVarK.f5339a = iVar;
            float f = i3;
            iVar.f5363e = f;
            cVarK.b = f;
            cVarK.f5342e = true;
            c(cVarK);
            return;
        }
        c cVar = this.f5348e[i4];
        if (cVar.f5342e) {
            cVar.b = i3;
            return;
        }
        if (cVar.f5341d.d() == 0) {
            cVar.f5342e = true;
            cVar.b = i3;
            return;
        }
        c cVarK2 = k();
        if (i3 < 0) {
            cVarK2.b = i3 * (-1);
            cVarK2.f5341d.h(iVar, 1.0f);
        } else {
            cVarK2.b = i3;
            cVarK2.f5341d.h(iVar, -1.0f);
        }
        c(cVarK2);
    }

    public final void e(i iVar, i iVar2, int i3, int i4) {
        boolean z2 = false;
        if (i4 == 8 && iVar2.f && iVar.f5361c == -1) {
            iVar.f5363e = iVar2.f5363e + i3;
            iVar.f = true;
            int i5 = iVar.f5366j;
            for (int i6 = 0; i6 < i5; i6++) {
                iVar.f5365i[i6].g(iVar, false);
            }
            iVar.f5366j = 0;
            return;
        }
        c cVarK = k();
        if (i3 != 0) {
            if (i3 < 0) {
                i3 *= -1;
                z2 = true;
            }
            cVarK.b = i3;
        }
        if (z2) {
            cVarK.f5341d.h(iVar, 1.0f);
            cVarK.f5341d.h(iVar2, -1.0f);
        } else {
            cVarK.f5341d.h(iVar, -1.0f);
            cVarK.f5341d.h(iVar2, 1.0f);
        }
        if (i4 != 8) {
            cVarK.a(this, i4);
        }
        c(cVarK);
    }

    public final void f(i iVar, i iVar2, int i3, int i4) {
        c cVarK = k();
        i iVarL = l();
        iVarL.f5362d = 0;
        cVarK.b(iVar, iVar2, iVarL, i3);
        if (i4 != 8) {
            cVarK.f5341d.h(i(i4), (int) (cVarK.f5341d.g(iVarL) * (-1.0f)));
        }
        c(cVarK);
    }

    public final void g(i iVar, i iVar2, int i3, int i4) {
        c cVarK = k();
        i iVarL = l();
        iVarL.f5362d = 0;
        cVarK.c(iVar, iVar2, iVarL, i3);
        if (i4 != 8) {
            cVarK.f5341d.h(i(i4), (int) (cVarK.f5341d.g(iVarL) * (-1.0f)));
        }
        c(cVarK);
    }

    public final void h(c cVar) {
        boolean z2 = f5344p;
        w wVar = this.f5352k;
        if (z2) {
            c cVar2 = this.f5348e[this.f5350i];
            if (cVar2 != null) {
                ((C0244f) wVar.f1493a).d(cVar2);
            }
        } else {
            c cVar3 = this.f5348e[this.f5350i];
            if (cVar3 != null) {
                ((C0244f) wVar.b).d(cVar3);
            }
        }
        c[] cVarArr = this.f5348e;
        int i3 = this.f5350i;
        cVarArr[i3] = cVar;
        i iVar = cVar.f5339a;
        iVar.f5361c = i3;
        this.f5350i = i3 + 1;
        iVar.d(cVar);
    }

    public final i i(int i3) {
        if (this.f5349h + 1 >= this.f5347d) {
            n();
        }
        i iVarA = a(4);
        float[] fArr = iVarA.f5364h;
        int i4 = this.f5345a + 1;
        this.f5345a = i4;
        this.f5349h++;
        iVarA.b = i4;
        iVarA.f5362d = i3;
        ((i[]) this.f5352k.f1495d)[i4] = iVarA;
        g gVar = this.b;
        gVar.f5358i.b = iVarA;
        Arrays.fill(fArr, 0.0f);
        fArr[iVarA.f5362d] = 1.0f;
        gVar.i(iVarA);
        return iVarA;
    }

    public final i j(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.f5349h + 1 >= this.f5347d) {
            n();
        }
        if (!(obj instanceof c)) {
            return null;
        }
        c cVar = (c) obj;
        i iVar = cVar.g;
        if (iVar == null) {
            cVar.i();
            iVar = cVar.g;
        }
        int i3 = iVar.b;
        w wVar = this.f5352k;
        if (i3 != -1 && i3 <= this.f5345a && ((i[]) wVar.f1495d)[i3] != null) {
            return iVar;
        }
        if (i3 != -1) {
            iVar.c();
        }
        int i4 = this.f5345a + 1;
        this.f5345a = i4;
        this.f5349h++;
        iVar.b = i4;
        iVar.f5368l = 1;
        ((i[]) wVar.f1495d)[i4] = iVar;
        return iVar;
    }

    public final c k() {
        boolean z2 = f5344p;
        w wVar = this.f5352k;
        if (z2) {
            c cVar = (c) ((C0244f) wVar.f1493a).b();
            if (cVar == null) {
                return new d(wVar);
            }
            cVar.f5339a = null;
            cVar.f5341d.clear();
            cVar.b = 0.0f;
            cVar.f5342e = false;
            return cVar;
        }
        c cVar2 = (c) ((C0244f) wVar.b).b();
        if (cVar2 == null) {
            return new c(wVar);
        }
        cVar2.f5339a = null;
        cVar2.f5341d.clear();
        cVar2.b = 0.0f;
        cVar2.f5342e = false;
        return cVar2;
    }

    public final i l() {
        if (this.f5349h + 1 >= this.f5347d) {
            n();
        }
        i iVarA = a(3);
        int i3 = this.f5345a + 1;
        this.f5345a = i3;
        this.f5349h++;
        iVarA.b = i3;
        ((i[]) this.f5352k.f1495d)[i3] = iVarA;
        return iVarA;
    }

    public final void n() {
        int i3 = this.f5346c * 2;
        this.f5346c = i3;
        this.f5348e = (c[]) Arrays.copyOf(this.f5348e, i3);
        w wVar = this.f5352k;
        wVar.f1495d = (i[]) Arrays.copyOf((i[]) wVar.f1495d, this.f5346c);
        int i4 = this.f5346c;
        this.g = new boolean[i4];
        this.f5347d = i4;
        this.f5351j = i4;
    }

    public final void o(g gVar) {
        w wVar;
        for (int i3 = 0; i3 < this.f5350i; i3++) {
            c cVar = this.f5348e[i3];
            int i4 = 1;
            if (cVar.f5339a.f5368l != 1) {
                float f = 0.0f;
                if (cVar.b < 0.0f) {
                    boolean z2 = false;
                    int i5 = 0;
                    while (!z2) {
                        i5 += i4;
                        float f3 = Float.MAX_VALUE;
                        int i6 = -1;
                        int i7 = -1;
                        int i8 = 0;
                        int i9 = 0;
                        while (true) {
                            int i10 = this.f5350i;
                            wVar = this.f5352k;
                            if (i8 >= i10) {
                                break;
                            }
                            c cVar2 = this.f5348e[i8];
                            if (cVar2.f5339a.f5368l != i4 && !cVar2.f5342e && cVar2.b < f) {
                                int i11 = i4;
                                while (i11 < this.f5349h) {
                                    i iVar = ((i[]) wVar.f1495d)[i11];
                                    float fG = cVar2.f5341d.g(iVar);
                                    if (fG > f) {
                                        for (int i12 = 0; i12 < 9; i12++) {
                                            float f4 = iVar.g[i12] / fG;
                                            if ((f4 < f3 && i12 == i9) || i12 > i9) {
                                                i9 = i12;
                                                f3 = f4;
                                                i6 = i8;
                                                i7 = i11;
                                            }
                                        }
                                    }
                                    i11++;
                                    f = 0.0f;
                                }
                            }
                            i8++;
                            f = 0.0f;
                            i4 = 1;
                        }
                        if (i6 != -1) {
                            c cVar3 = this.f5348e[i6];
                            cVar3.f5339a.f5361c = -1;
                            cVar3.f(((i[]) wVar.f1495d)[i7]);
                            i iVar2 = cVar3.f5339a;
                            iVar2.f5361c = i6;
                            iVar2.d(cVar3);
                        } else {
                            z2 = true;
                        }
                        if (i5 > this.f5349h / 2) {
                            z2 = true;
                        }
                        f = 0.0f;
                        i4 = 1;
                    }
                    break;
                }
            }
        }
        p(gVar);
        for (int i13 = 0; i13 < this.f5350i; i13++) {
            c cVar4 = this.f5348e[i13];
            cVar4.f5339a.f5363e = cVar4.b;
        }
    }

    public final void p(c cVar) {
        for (int i3 = 0; i3 < this.f5349h; i3++) {
            this.g[i3] = false;
        }
        boolean z2 = false;
        int i4 = 0;
        while (!z2) {
            i4++;
            if (i4 >= this.f5349h * 2) {
                return;
            }
            i iVar = cVar.f5339a;
            if (iVar != null) {
                this.g[iVar.b] = true;
            }
            i iVarD = cVar.d(this.g);
            if (iVarD != null) {
                boolean[] zArr = this.g;
                int i5 = iVarD.b;
                if (zArr[i5]) {
                    return;
                } else {
                    zArr[i5] = true;
                }
            }
            if (iVarD != null) {
                float f = Float.MAX_VALUE;
                int i6 = -1;
                for (int i7 = 0; i7 < this.f5350i; i7++) {
                    c cVar2 = this.f5348e[i7];
                    if (cVar2.f5339a.f5368l != 1 && !cVar2.f5342e && cVar2.f5341d.e(iVarD)) {
                        float fG = cVar2.f5341d.g(iVarD);
                        if (fG < 0.0f) {
                            float f3 = (-cVar2.b) / fG;
                            if (f3 < f) {
                                i6 = i7;
                                f = f3;
                            }
                        }
                    }
                }
                if (i6 > -1) {
                    c cVar3 = this.f5348e[i6];
                    cVar3.f5339a.f5361c = -1;
                    cVar3.f(iVarD);
                    i iVar2 = cVar3.f5339a;
                    iVar2.f5361c = i6;
                    iVar2.d(cVar3);
                }
            } else {
                z2 = true;
            }
        }
    }

    public final void q() {
        boolean z2 = f5344p;
        w wVar = this.f5352k;
        int i3 = 0;
        if (z2) {
            while (true) {
                c[] cVarArr = this.f5348e;
                if (i3 >= cVarArr.length) {
                    return;
                }
                c cVar = cVarArr[i3];
                if (cVar != null) {
                    ((C0244f) wVar.f1493a).d(cVar);
                }
                this.f5348e[i3] = null;
                i3++;
            }
        } else {
            while (true) {
                c[] cVarArr2 = this.f5348e;
                if (i3 >= cVarArr2.length) {
                    return;
                }
                c cVar2 = cVarArr2[i3];
                if (cVar2 != null) {
                    ((C0244f) wVar.b).d(cVar2);
                }
                this.f5348e[i3] = null;
                i3++;
            }
        }
    }

    public final void r() {
        w wVar;
        int i3 = 0;
        while (true) {
            wVar = this.f5352k;
            i[] iVarArr = (i[]) wVar.f1495d;
            if (i3 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i3];
            if (iVar != null) {
                iVar.c();
            }
            i3++;
        }
        C0244f c0244f = (C0244f) wVar.f1494c;
        i[] iVarArr2 = this.f5353l;
        int length = this.f5354m;
        c0244f.getClass();
        if (length > iVarArr2.length) {
            length = iVarArr2.length;
        }
        for (int i4 = 0; i4 < length; i4++) {
            i iVar2 = iVarArr2[i4];
            int i5 = c0244f.b;
            Object[] objArr = (Object[]) c0244f.f4145c;
            if (i5 < objArr.length) {
                objArr[i5] = iVar2;
                c0244f.b = i5 + 1;
            }
        }
        this.f5354m = 0;
        Arrays.fill((i[]) wVar.f1495d, (Object) null);
        this.f5345a = 0;
        g gVar = this.b;
        gVar.f5357h = 0;
        gVar.b = 0.0f;
        this.f5349h = 1;
        for (int i6 = 0; i6 < this.f5350i; i6++) {
            this.f5348e[i6].getClass();
        }
        q();
        this.f5350i = 0;
        if (f5344p) {
            this.f5355n = new d(wVar);
        } else {
            this.f5355n = new c(wVar);
        }
    }
}
