package p051u;

import C1.T;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends c {
    public i[] f;
    public i[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5357h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f f5358i;

    @Override // p051u.c
    public final i d(boolean[] zArr) {
        int i3 = -1;
        for (int i4 = 0; i4 < this.f5357h; i4++) {
            i[] iVarArr = this.f;
            i iVar = iVarArr[i4];
            if (!zArr[iVar.b]) {
                f fVar = this.f5358i;
                fVar.b = iVar;
                int i5 = 8;
                if (i3 != -1) {
                    i iVar2 = iVarArr[i3];
                    while (i5 >= 0) {
                        float f = iVar2.f5364h[i5];
                        float f3 = fVar.b.f5364h[i5];
                        if (f3 != f) {
                            if (f3 >= f) {
                                break;
                            }
                            i3 = i4;
                            break;
                            break;
                        }
                        i5--;
                    }
                } else {
                    while (i5 >= 0) {
                        float f4 = fVar.b.f5364h[i5];
                        if (f4 > 0.0f) {
                            break;
                        }
                        if (f4 < 0.0f) {
                            i3 = i4;
                            break;
                        }
                        i5--;
                    }
                }
            }
        }
        if (i3 == -1) {
            return null;
        }
        return this.f[i3];
    }

    @Override // p051u.c
    public final void h(c cVar, boolean z2) {
        i iVar = cVar.f5339a;
        if (iVar == null) {
            return;
        }
        float[] fArr = iVar.f5364h;
        b bVar = cVar.f5341d;
        int iD = bVar.d();
        for (int i3 = 0; i3 < iD; i3++) {
            i iVarI = bVar.i(i3);
            float fA = bVar.a(i3);
            f fVar = this.f5358i;
            fVar.b = iVarI;
            if (iVarI.f5360a) {
                boolean z3 = true;
                for (int i4 = 0; i4 < 9; i4++) {
                    float[] fArr2 = fVar.b.f5364h;
                    float f = (fArr[i4] * fA) + fArr2[i4];
                    fArr2[i4] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        fVar.b.f5364h[i4] = 0.0f;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    fVar.f5356c.j(fVar.b);
                }
            } else {
                for (int i5 = 0; i5 < 9; i5++) {
                    float f3 = fArr[i5];
                    if (f3 != 0.0f) {
                        float f4 = f3 * fA;
                        if (Math.abs(f4) < 1.0E-4f) {
                            f4 = 0.0f;
                        }
                        fVar.b.f5364h[i5] = f4;
                    } else {
                        fVar.b.f5364h[i5] = 0.0f;
                    }
                }
                i(iVarI);
            }
            this.b = (cVar.b * fA) + this.b;
        }
        j(iVar);
    }

    public final void i(i iVar) {
        int i3;
        int i4 = this.f5357h + 1;
        i[] iVarArr = this.f;
        if (i4 > iVarArr.length) {
            i[] iVarArr2 = (i[]) Arrays.copyOf(iVarArr, iVarArr.length * 2);
            this.f = iVarArr2;
            this.g = (i[]) Arrays.copyOf(iVarArr2, iVarArr2.length * 2);
        }
        i[] iVarArr3 = this.f;
        int i5 = this.f5357h;
        iVarArr3[i5] = iVar;
        int i6 = i5 + 1;
        this.f5357h = i6;
        if (i6 > 1 && iVarArr3[i5].b > iVar.b) {
            int i7 = 0;
            while (true) {
                i3 = this.f5357h;
                if (i7 >= i3) {
                    break;
                }
                this.g[i7] = this.f[i7];
                i7++;
            }
            Arrays.sort(this.g, 0, i3, new T(11));
            for (int i8 = 0; i8 < this.f5357h; i8++) {
                this.f[i8] = this.g[i8];
            }
        }
        iVar.f5360a = true;
        iVar.a(this);
    }

    public final void j(i iVar) {
        int i3 = 0;
        while (i3 < this.f5357h) {
            if (this.f[i3] == iVar) {
                while (true) {
                    int i4 = this.f5357h;
                    if (i3 >= i4 - 1) {
                        this.f5357h = i4 - 1;
                        iVar.f5360a = false;
                        return;
                    } else {
                        i[] iVarArr = this.f;
                        int i5 = i3 + 1;
                        iVarArr[i3] = iVarArr[i5];
                        i3 = i5;
                    }
                }
            } else {
                i3++;
            }
        }
    }

    @Override // p051u.c
    public final String toString() {
        f fVar = this.f5358i;
        String str = " goal -> (" + this.b + ") : ";
        for (int i3 = 0; i3 < this.f5357h; i3++) {
            fVar.b = this.f[i3];
            str = str + fVar + " ";
        }
        return str;
    }
}
