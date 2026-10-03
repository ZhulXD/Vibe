package p053v;

import java.util.ArrayList;
import kotlin.collections.unsigned.a;
import p051u.c;
import p051u.e;
import p051u.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends d {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f5556d0 = -1.0f;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f5557e0 = -1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f5558f0 = -1;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public c f5559g0 = this.f5494y;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f5560h0 = 0;

    public h() {
        this.f5452G.clear();
        this.f5452G.add(this.f5559g0);
        int length = this.f5451F.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f5451F[i3] = this.f5559g0;
        }
    }

    @Override // p053v.d
    public final void A(e eVar) {
        if (this.f5454I == null) {
            return;
        }
        c cVar = this.f5559g0;
        eVar.getClass();
        int iM = e.m(cVar);
        if (this.f5560h0 == 1) {
            this.f5458N = iM;
            this.f5459O = 0;
            v(this.f5454I.i());
            y(0);
            return;
        }
        this.f5458N = 0;
        this.f5459O = iM;
        y(this.f5454I.l());
        v(0);
    }

    public final void B(int i3) {
        if (this.f5560h0 == i3) {
            return;
        }
        this.f5560h0 = i3;
        ArrayList arrayList = this.f5452G;
        arrayList.clear();
        if (this.f5560h0 == 1) {
            this.f5559g0 = this.f5493x;
        } else {
            this.f5559g0 = this.f5494y;
        }
        arrayList.add(this.f5559g0);
        c[] cVarArr = this.f5451F;
        int length = cVarArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            cVarArr[i4] = this.f5559g0;
        }
    }

    @Override // p053v.d
    public final void a(e eVar) {
        e eVar2 = (e) this.f5454I;
        if (eVar2 == null) {
            return;
        }
        c cVarG = eVar2.g(2);
        c cVarG2 = eVar2.g(4);
        d dVar = this.f5454I;
        boolean z2 = dVar != null && dVar.f5474c0[0] == 2;
        if (this.f5560h0 == 0) {
            cVarG = eVar2.g(3);
            cVarG2 = eVar2.g(5);
            d dVar2 = this.f5454I;
            z2 = dVar2 != null && dVar2.f5474c0[1] == 2;
        }
        if (this.f5557e0 != -1) {
            i iVarJ = eVar.j(this.f5559g0);
            eVar.e(iVarJ, eVar.j(cVarG), this.f5557e0, 8);
            if (z2) {
                eVar.f(eVar.j(cVarG2), iVarJ, 0, 5);
                return;
            }
            return;
        }
        if (this.f5558f0 != -1) {
            i iVarJ2 = eVar.j(this.f5559g0);
            i iVarJ3 = eVar.j(cVarG2);
            eVar.e(iVarJ2, iVarJ3, -this.f5558f0, 8);
            if (z2) {
                eVar.f(iVarJ2, eVar.j(cVarG), 0, 5);
                eVar.f(iVarJ3, iVarJ2, 0, 5);
                return;
            }
            return;
        }
        if (this.f5556d0 != -1.0f) {
            i iVarJ4 = eVar.j(this.f5559g0);
            i iVarJ5 = eVar.j(cVarG2);
            float f = this.f5556d0;
            c cVarK = eVar.k();
            cVarK.f5341d.h(iVarJ4, -1.0f);
            cVarK.f5341d.h(iVarJ5, f);
            eVar.c(cVarK);
        }
    }

    @Override // p053v.d
    public final boolean b() {
        return true;
    }

    @Override // p053v.d
    public final c g(int i3) {
        switch (p051u.h.a(i3)) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
            case 3:
                if (this.f5560h0 == 1) {
                    return this.f5559g0;
                }
                break;
            case 2:
            case 4:
                if (this.f5560h0 == 0) {
                    return this.f5559g0;
                }
                break;
        }
        throw new AssertionError(a.p(i3));
    }
}
