package p053v;

import p051u.c;
import p051u.e;
import p051u.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends i {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f5425f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f5426g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f5427h0;

    @Override // p053v.d
    public final void a(e eVar) {
        boolean z2;
        int i3;
        int i4;
        c[] cVarArr = this.f5451F;
        c cVar = this.f5493x;
        cVarArr[0] = cVar;
        int i5 = 2;
        c cVar2 = this.f5494y;
        cVarArr[2] = cVar2;
        c cVar3 = this.f5495z;
        cVarArr[1] = cVar3;
        c cVar4 = this.f5446A;
        cVarArr[3] = cVar4;
        for (c cVar5 : cVarArr) {
            cVar5.g = eVar.j(cVar5);
        }
        int i6 = this.f5425f0;
        if (i6 < 0 || i6 >= 4) {
            return;
        }
        c cVar6 = cVarArr[i6];
        int i7 = 0;
        while (true) {
            if (i7 >= this.f5562e0) {
                z2 = false;
                break;
            }
            d dVar = this.f5561d0[i7];
            if ((this.f5426g0 || dVar.b()) && ((((i4 = this.f5425f0) == 0 || i4 == 1) && dVar.f5474c0[0] == 3 && dVar.f5493x.f5444d != null && dVar.f5495z.f5444d != null) || ((i4 == 2 || i4 == 3) && dVar.f5474c0[1] == 3 && dVar.f5494y.f5444d != null && dVar.f5446A.f5444d != null))) {
                z2 = true;
                break;
            }
            i7++;
        }
        boolean z3 = cVar.e() || cVar3.e();
        boolean z4 = cVar2.e() || cVar4.e();
        int i8 = !(!z2 && (((i3 = this.f5425f0) == 0 && z3) || ((i3 == 2 && z4) || ((i3 == 1 && z3) || (i3 == 3 && z4))))) ? 4 : 5;
        int i9 = 0;
        while (i9 < this.f5562e0) {
            d dVar2 = this.f5561d0[i9];
            if (this.f5426g0 || dVar2.b()) {
                i iVarJ = eVar.j(dVar2.f5451F[this.f5425f0]);
                c[] cVarArr2 = dVar2.f5451F;
                int i10 = this.f5425f0;
                c cVar7 = cVarArr2[i10];
                cVar7.g = iVarJ;
                c cVar8 = cVar7.f5444d;
                int i11 = (cVar8 == null || cVar8.b != this) ? 0 : cVar7.f5445e;
                if (i10 == 0 || i10 == i5) {
                    i iVar = cVar6.g;
                    int i12 = this.f5427h0 - i11;
                    c cVarK = eVar.k();
                    i iVarL = eVar.l();
                    iVarL.f5362d = 0;
                    cVarK.c(iVar, iVarJ, iVarL, i12);
                    eVar.c(cVarK);
                } else {
                    i iVar2 = cVar6.g;
                    int i13 = this.f5427h0 + i11;
                    c cVarK2 = eVar.k();
                    i iVarL2 = eVar.l();
                    iVarL2.f5362d = 0;
                    cVarK2.b(iVar2, iVarJ, iVarL2, i13);
                    eVar.c(cVarK2);
                }
                eVar.e(cVar6.g, iVarJ, this.f5427h0 + i11, i8);
            }
            i9++;
            i5 = 2;
        }
        int i14 = this.f5425f0;
        if (i14 == 0) {
            eVar.e(cVar3.g, cVar.g, 0, 8);
            eVar.e(cVar.g, this.f5454I.f5495z.g, 0, 4);
            eVar.e(cVar.g, this.f5454I.f5493x.g, 0, 0);
            return;
        }
        if (i14 == 1) {
            eVar.e(cVar.g, cVar3.g, 0, 8);
            eVar.e(cVar.g, this.f5454I.f5493x.g, 0, 4);
            eVar.e(cVar.g, this.f5454I.f5495z.g, 0, 0);
        } else if (i14 == 2) {
            eVar.e(cVar4.g, cVar2.g, 0, 8);
            eVar.e(cVar2.g, this.f5454I.f5446A.g, 0, 4);
            eVar.e(cVar2.g, this.f5454I.f5494y.g, 0, 0);
        } else if (i14 == 3) {
            eVar.e(cVar2.g, cVar4.g, 0, 8);
            eVar.e(cVar2.g, this.f5454I.f5494y.g, 0, 4);
            eVar.e(cVar2.g, this.f5454I.f5446A.g, 0, 0);
        }
    }

    @Override // p053v.d
    public final boolean b() {
        return true;
    }

    @Override // p053v.d
    public final String toString() {
        String strI = kotlin.collections.unsigned.a.i(new StringBuilder("[Barrier] "), this.f5467W, " {");
        for (int i3 = 0; i3 < this.f5562e0; i3++) {
            d dVar = this.f5561d0[i3];
            if (i3 > 0) {
                strI = kotlin.collections.unsigned.a.g(strI, ", ");
            }
            strI = strI + dVar.f5467W;
        }
        return kotlin.collections.unsigned.a.g(strI, "}");
    }
}
