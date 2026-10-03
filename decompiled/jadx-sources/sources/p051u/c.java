package p051u;

import N1.w;
import java.util.ArrayList;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f5341d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i f5339a = null;
    public float b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f5340c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5342e = false;

    public c(w wVar) {
        this.f5341d = new a(this, wVar);
    }

    public final void a(e eVar, int i3) {
        this.f5341d.h(eVar.i(i3), 1.0f);
        this.f5341d.h(eVar.i(i3), -1.0f);
    }

    public final void b(i iVar, i iVar2, i iVar3, int i3) {
        boolean z2 = false;
        if (i3 != 0) {
            if (i3 < 0) {
                i3 *= -1;
                z2 = true;
            }
            this.b = i3;
        }
        if (z2) {
            this.f5341d.h(iVar, 1.0f);
            this.f5341d.h(iVar2, -1.0f);
            this.f5341d.h(iVar3, -1.0f);
        } else {
            this.f5341d.h(iVar, -1.0f);
            this.f5341d.h(iVar2, 1.0f);
            this.f5341d.h(iVar3, 1.0f);
        }
    }

    public final void c(i iVar, i iVar2, i iVar3, int i3) {
        boolean z2 = false;
        if (i3 != 0) {
            if (i3 < 0) {
                i3 *= -1;
                z2 = true;
            }
            this.b = i3;
        }
        if (z2) {
            this.f5341d.h(iVar, 1.0f);
            this.f5341d.h(iVar2, -1.0f);
            this.f5341d.h(iVar3, 1.0f);
        } else {
            this.f5341d.h(iVar, -1.0f);
            this.f5341d.h(iVar2, 1.0f);
            this.f5341d.h(iVar3, -1.0f);
        }
    }

    public i d(boolean[] zArr) {
        return e(zArr, null);
    }

    public final i e(boolean[] zArr, i iVar) {
        int i3;
        int iD = this.f5341d.d();
        i iVar2 = null;
        float f = 0.0f;
        for (int i4 = 0; i4 < iD; i4++) {
            float fA = this.f5341d.a(i4);
            if (fA < 0.0f) {
                i iVarI = this.f5341d.i(i4);
                if ((zArr == null || !zArr[iVarI.b]) && iVarI != iVar && (((i3 = iVarI.f5368l) == 3 || i3 == 4) && fA < f)) {
                    f = fA;
                    iVar2 = iVarI;
                }
            }
        }
        return iVar2;
    }

    public final void f(i iVar) {
        i iVar2 = this.f5339a;
        if (iVar2 != null) {
            this.f5341d.h(iVar2, -1.0f);
            this.f5339a = null;
        }
        float fB = this.f5341d.b(iVar, true) * (-1.0f);
        this.f5339a = iVar;
        if (fB == 1.0f) {
            return;
        }
        this.b /= fB;
        this.f5341d.j(fB);
    }

    public final void g(i iVar, boolean z2) {
        if (iVar.f) {
            float fG = this.f5341d.g(iVar);
            this.b = (iVar.f5363e * fG) + this.b;
            this.f5341d.b(iVar, z2);
            if (z2) {
                iVar.b(this);
            }
        }
    }

    public void h(c cVar, boolean z2) {
        float fC = this.f5341d.c(cVar, z2);
        this.b = (cVar.b * fC) + this.b;
        if (z2) {
            cVar.f5339a.b(this);
        }
    }

    public String toString() {
        boolean z2;
        String strG = a.g(this.f5339a == null ? "0" : "" + this.f5339a, " = ");
        if (this.b != 0.0f) {
            strG = strG + this.b;
            z2 = true;
        } else {
            z2 = false;
        }
        int iD = this.f5341d.d();
        for (int i3 = 0; i3 < iD; i3++) {
            i iVarI = this.f5341d.i(i3);
            if (iVarI != null) {
                float fA = this.f5341d.a(i3);
                if (fA != 0.0f) {
                    String string = iVarI.toString();
                    if (z2) {
                        if (fA > 0.0f) {
                            strG = a.g(strG, " + ");
                        } else {
                            strG = a.g(strG, " - ");
                            fA *= -1.0f;
                        }
                    } else if (fA < 0.0f) {
                        strG = a.g(strG, "- ");
                        fA *= -1.0f;
                    }
                    strG = fA == 1.0f ? a.g(strG, string) : strG + fA + " " + string;
                    z2 = true;
                }
            }
        }
        return !z2 ? a.g(strG, "0.0") : strG;
    }
}
