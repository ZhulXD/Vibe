package p051u;

import N1.w;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements b {
    public final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f5333c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5332a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5334d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f5335e = new int[8];
    public int[] f = new int[8];
    public float[] g = new float[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5336h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5337i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5338j = false;

    public a(c cVar, w wVar) {
        this.b = cVar;
        this.f5333c = wVar;
    }

    @Override // p051u.b
    public final float a(int i3) {
        int i4 = this.f5336h;
        for (int i5 = 0; i4 != -1 && i5 < this.f5332a; i5++) {
            if (i5 == i3) {
                return this.g[i4];
            }
            i4 = this.f[i4];
        }
        return 0.0f;
    }

    @Override // p051u.b
    public final float b(i iVar, boolean z2) {
        int i3 = this.f5336h;
        if (i3 == -1) {
            return 0.0f;
        }
        int i4 = 0;
        int i5 = -1;
        while (i3 != -1 && i4 < this.f5332a) {
            if (this.f5335e[i3] == iVar.b) {
                if (i3 == this.f5336h) {
                    this.f5336h = this.f[i3];
                } else {
                    int[] iArr = this.f;
                    iArr[i5] = iArr[i3];
                }
                if (z2) {
                    iVar.b(this.b);
                }
                iVar.f5367k--;
                this.f5332a--;
                this.f5335e[i3] = -1;
                if (this.f5338j) {
                    this.f5337i = i3;
                }
                return this.g[i3];
            }
            i4++;
            i5 = i3;
            i3 = this.f[i3];
        }
        return 0.0f;
    }

    @Override // p051u.b
    public final float c(c cVar, boolean z2) {
        float fG = g(cVar.f5339a);
        b(cVar.f5339a, z2);
        b bVar = cVar.f5341d;
        int iD = bVar.d();
        for (int i3 = 0; i3 < iD; i3++) {
            i iVarI = bVar.i(i3);
            f(iVarI, bVar.g(iVarI) * fG, z2);
        }
        return fG;
    }

    @Override // p051u.b
    public final void clear() {
        int i3 = this.f5336h;
        for (int i4 = 0; i3 != -1 && i4 < this.f5332a; i4++) {
            i iVar = ((i[]) this.f5333c.f1495d)[this.f5335e[i3]];
            if (iVar != null) {
                iVar.b(this.b);
            }
            i3 = this.f[i3];
        }
        this.f5336h = -1;
        this.f5337i = -1;
        this.f5338j = false;
        this.f5332a = 0;
    }

    @Override // p051u.b
    public final int d() {
        return this.f5332a;
    }

    @Override // p051u.b
    public final boolean e(i iVar) {
        int i3 = this.f5336h;
        if (i3 != -1) {
            for (int i4 = 0; i3 != -1 && i4 < this.f5332a; i4++) {
                if (this.f5335e[i3] == iVar.b) {
                    return true;
                }
                i3 = this.f[i3];
            }
        }
        return false;
    }

    @Override // p051u.b
    public final void f(i iVar, float f, boolean z2) {
        if (f <= -0.001f || f >= 0.001f) {
            int i3 = this.f5336h;
            c cVar = this.b;
            if (i3 == -1) {
                this.f5336h = 0;
                this.g[0] = f;
                this.f5335e[0] = iVar.b;
                this.f[0] = -1;
                iVar.f5367k++;
                iVar.a(cVar);
                this.f5332a++;
                if (this.f5338j) {
                    return;
                }
                int i4 = this.f5337i + 1;
                this.f5337i = i4;
                int[] iArr = this.f5335e;
                if (i4 >= iArr.length) {
                    this.f5338j = true;
                    this.f5337i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i5 = -1;
            for (int i6 = 0; i3 != -1 && i6 < this.f5332a; i6++) {
                int i7 = this.f5335e[i3];
                int i8 = iVar.b;
                if (i7 == i8) {
                    float[] fArr = this.g;
                    float f3 = fArr[i3] + f;
                    if (f3 > -0.001f && f3 < 0.001f) {
                        f3 = 0.0f;
                    }
                    fArr[i3] = f3;
                    if (f3 == 0.0f) {
                        if (i3 == this.f5336h) {
                            this.f5336h = this.f[i3];
                        } else {
                            int[] iArr2 = this.f;
                            iArr2[i5] = iArr2[i3];
                        }
                        if (z2) {
                            iVar.b(cVar);
                        }
                        if (this.f5338j) {
                            this.f5337i = i3;
                        }
                        iVar.f5367k--;
                        this.f5332a--;
                        return;
                    }
                    return;
                }
                if (i7 < i8) {
                    i5 = i3;
                }
                i3 = this.f[i3];
            }
            int length = this.f5337i;
            int i9 = length + 1;
            if (this.f5338j) {
                int[] iArr3 = this.f5335e;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i9;
            }
            int[] iArr4 = this.f5335e;
            if (length >= iArr4.length && this.f5332a < iArr4.length) {
                int i10 = 0;
                while (true) {
                    int[] iArr5 = this.f5335e;
                    if (i10 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i10] == -1) {
                        length = i10;
                        break;
                    }
                    i10++;
                }
            }
            int[] iArr6 = this.f5335e;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i11 = this.f5334d * 2;
                this.f5334d = i11;
                this.f5338j = false;
                this.f5337i = length - 1;
                this.g = Arrays.copyOf(this.g, i11);
                this.f5335e = Arrays.copyOf(this.f5335e, this.f5334d);
                this.f = Arrays.copyOf(this.f, this.f5334d);
            }
            this.f5335e[length] = iVar.b;
            this.g[length] = f;
            if (i5 != -1) {
                int[] iArr7 = this.f;
                iArr7[length] = iArr7[i5];
                iArr7[i5] = length;
            } else {
                this.f[length] = this.f5336h;
                this.f5336h = length;
            }
            iVar.f5367k++;
            iVar.a(cVar);
            this.f5332a++;
            if (!this.f5338j) {
                this.f5337i++;
            }
            int i12 = this.f5337i;
            int[] iArr8 = this.f5335e;
            if (i12 >= iArr8.length) {
                this.f5338j = true;
                this.f5337i = iArr8.length - 1;
            }
        }
    }

    @Override // p051u.b
    public final float g(i iVar) {
        int i3 = this.f5336h;
        for (int i4 = 0; i3 != -1 && i4 < this.f5332a; i4++) {
            if (this.f5335e[i3] == iVar.b) {
                return this.g[i3];
            }
            i3 = this.f[i3];
        }
        return 0.0f;
    }

    @Override // p051u.b
    public final void h(i iVar, float f) {
        if (f == 0.0f) {
            b(iVar, true);
            return;
        }
        int i3 = this.f5336h;
        c cVar = this.b;
        if (i3 == -1) {
            this.f5336h = 0;
            this.g[0] = f;
            this.f5335e[0] = iVar.b;
            this.f[0] = -1;
            iVar.f5367k++;
            iVar.a(cVar);
            this.f5332a++;
            if (this.f5338j) {
                return;
            }
            int i4 = this.f5337i + 1;
            this.f5337i = i4;
            int[] iArr = this.f5335e;
            if (i4 >= iArr.length) {
                this.f5338j = true;
                this.f5337i = iArr.length - 1;
                return;
            }
            return;
        }
        int i5 = -1;
        for (int i6 = 0; i3 != -1 && i6 < this.f5332a; i6++) {
            int i7 = this.f5335e[i3];
            int i8 = iVar.b;
            if (i7 == i8) {
                this.g[i3] = f;
                return;
            }
            if (i7 < i8) {
                i5 = i3;
            }
            i3 = this.f[i3];
        }
        int length = this.f5337i;
        int i9 = length + 1;
        if (this.f5338j) {
            int[] iArr2 = this.f5335e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i9;
        }
        int[] iArr3 = this.f5335e;
        if (length >= iArr3.length && this.f5332a < iArr3.length) {
            int i10 = 0;
            while (true) {
                int[] iArr4 = this.f5335e;
                if (i10 >= iArr4.length) {
                    break;
                }
                if (iArr4[i10] == -1) {
                    length = i10;
                    break;
                }
                i10++;
            }
        }
        int[] iArr5 = this.f5335e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i11 = this.f5334d * 2;
            this.f5334d = i11;
            this.f5338j = false;
            this.f5337i = length - 1;
            this.g = Arrays.copyOf(this.g, i11);
            this.f5335e = Arrays.copyOf(this.f5335e, this.f5334d);
            this.f = Arrays.copyOf(this.f, this.f5334d);
        }
        this.f5335e[length] = iVar.b;
        this.g[length] = f;
        if (i5 != -1) {
            int[] iArr6 = this.f;
            iArr6[length] = iArr6[i5];
            iArr6[i5] = length;
        } else {
            this.f[length] = this.f5336h;
            this.f5336h = length;
        }
        iVar.f5367k++;
        iVar.a(cVar);
        int i12 = this.f5332a + 1;
        this.f5332a = i12;
        if (!this.f5338j) {
            this.f5337i++;
        }
        int[] iArr7 = this.f5335e;
        if (i12 >= iArr7.length) {
            this.f5338j = true;
        }
        if (this.f5337i >= iArr7.length) {
            this.f5338j = true;
            this.f5337i = iArr7.length - 1;
        }
    }

    @Override // p051u.b
    public final i i(int i3) {
        int i4 = this.f5336h;
        for (int i5 = 0; i4 != -1 && i5 < this.f5332a; i5++) {
            if (i5 == i3) {
                return ((i[]) this.f5333c.f1495d)[this.f5335e[i4]];
            }
            i4 = this.f[i4];
        }
        return null;
    }

    @Override // p051u.b
    public final void j(float f) {
        int i3 = this.f5336h;
        for (int i4 = 0; i3 != -1 && i4 < this.f5332a; i4++) {
            float[] fArr = this.g;
            fArr[i3] = fArr[i3] / f;
            i3 = this.f[i3];
        }
    }

    @Override // p051u.b
    public final void k() {
        int i3 = this.f5336h;
        for (int i4 = 0; i3 != -1 && i4 < this.f5332a; i4++) {
            float[] fArr = this.g;
            fArr[i3] = fArr[i3] * (-1.0f);
            i3 = this.f[i3];
        }
    }

    public final String toString() {
        int i3 = this.f5336h;
        String str = "";
        for (int i4 = 0; i3 != -1 && i4 < this.f5332a; i4++) {
            str = (kotlin.collections.unsigned.a.g(str, " -> ") + this.g[i3] + " : ") + ((i[]) this.f5333c.f1495d)[this.f5335e[i3]];
            i3 = this.f[i3];
        }
        return str;
    }
}
