package p051u;

import N1.w;
import java.util.Arrays;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5369a = 16;
    public final int[] b = new int[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f5370c = new int[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f5371d = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f5372e = new float[16];
    public int[] f = new int[16];
    public int[] g = new int[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5373h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5374i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d f5375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final w f5376k;

    public j(d dVar, w wVar) {
        this.f5375j = dVar;
        this.f5376k = wVar;
        clear();
    }

    @Override // p051u.b
    public final float a(int i3) {
        int i4 = this.f5373h;
        int i5 = this.f5374i;
        for (int i6 = 0; i6 < i4; i6++) {
            if (i6 == i3) {
                return this.f5372e[i5];
            }
            i5 = this.g[i5];
            if (i5 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // p051u.b
    public final float b(i iVar, boolean z2) {
        int[] iArr;
        int i3;
        int iN = n(iVar);
        if (iN == -1) {
            return 0.0f;
        }
        int i4 = iVar.b;
        int i5 = i4 % 16;
        int[] iArr2 = this.b;
        int i6 = iArr2[i5];
        if (i6 != -1) {
            if (this.f5371d[i6] == i4) {
                int[] iArr3 = this.f5370c;
                iArr2[i5] = iArr3[i6];
                iArr3[i6] = -1;
            } else {
                while (true) {
                    iArr = this.f5370c;
                    i3 = iArr[i6];
                    if (i3 == -1 || this.f5371d[i3] == i4) {
                        break;
                    }
                    i6 = i3;
                }
                if (i3 != -1 && this.f5371d[i3] == i4) {
                    iArr[i6] = iArr[i3];
                    iArr[i3] = -1;
                }
            }
        }
        float f = this.f5372e[iN];
        if (this.f5374i == iN) {
            this.f5374i = this.g[iN];
        }
        this.f5371d[iN] = -1;
        int[] iArr4 = this.f;
        int i7 = iArr4[iN];
        if (i7 != -1) {
            int[] iArr5 = this.g;
            iArr5[i7] = iArr5[iN];
        }
        int i8 = this.g[iN];
        if (i8 != -1) {
            iArr4[i8] = iArr4[iN];
        }
        this.f5373h--;
        iVar.f5367k--;
        if (z2) {
            iVar.b(this.f5375j);
        }
        return f;
    }

    @Override // p051u.b
    public final float c(c cVar, boolean z2) {
        float fG = g(cVar.f5339a);
        b(cVar.f5339a, z2);
        j jVar = (j) cVar.f5341d;
        int i3 = jVar.f5373h;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = jVar.f5371d[i5];
            if (i6 != -1) {
                f(((i[]) this.f5376k.f1495d)[i6], jVar.f5372e[i5] * fG, z2);
                i4++;
            }
            i5++;
        }
        return fG;
    }

    @Override // p051u.b
    public final void clear() {
        int i3 = this.f5373h;
        for (int i4 = 0; i4 < i3; i4++) {
            i iVarI = i(i4);
            if (iVarI != null) {
                iVarI.b(this.f5375j);
            }
        }
        for (int i5 = 0; i5 < this.f5369a; i5++) {
            this.f5371d[i5] = -1;
            this.f5370c[i5] = -1;
        }
        for (int i6 = 0; i6 < 16; i6++) {
            this.b[i6] = -1;
        }
        this.f5373h = 0;
        this.f5374i = -1;
    }

    @Override // p051u.b
    public final int d() {
        return this.f5373h;
    }

    @Override // p051u.b
    public final boolean e(i iVar) {
        return n(iVar) != -1;
    }

    @Override // p051u.b
    public final void f(i iVar, float f, boolean z2) {
        if (f <= -0.001f || f >= 0.001f) {
            int iN = n(iVar);
            if (iN == -1) {
                h(iVar, f);
                return;
            }
            float[] fArr = this.f5372e;
            float f3 = fArr[iN] + f;
            fArr[iN] = f3;
            if (f3 <= -0.001f || f3 >= 0.001f) {
                return;
            }
            fArr[iN] = 0.0f;
            b(iVar, z2);
        }
    }

    @Override // p051u.b
    public final float g(i iVar) {
        int iN = n(iVar);
        if (iN != -1) {
            return this.f5372e[iN];
        }
        return 0.0f;
    }

    @Override // p051u.b
    public final void h(i iVar, float f) {
        if (f > -0.001f && f < 0.001f) {
            b(iVar, true);
            return;
        }
        int i3 = 0;
        if (this.f5373h == 0) {
            m(0, iVar, f);
            l(iVar, 0);
            this.f5374i = 0;
            return;
        }
        int iN = n(iVar);
        if (iN != -1) {
            this.f5372e[iN] = f;
            return;
        }
        int i4 = this.f5373h + 1;
        int i5 = this.f5369a;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            this.f5371d = Arrays.copyOf(this.f5371d, i6);
            this.f5372e = Arrays.copyOf(this.f5372e, i6);
            this.f = Arrays.copyOf(this.f, i6);
            this.g = Arrays.copyOf(this.g, i6);
            this.f5370c = Arrays.copyOf(this.f5370c, i6);
            for (int i7 = this.f5369a; i7 < i6; i7++) {
                this.f5371d[i7] = -1;
                this.f5370c[i7] = -1;
            }
            this.f5369a = i6;
        }
        int i8 = this.f5373h;
        int i9 = this.f5374i;
        int i10 = -1;
        for (int i11 = 0; i11 < i8; i11++) {
            int i12 = this.f5371d[i9];
            int i13 = iVar.b;
            if (i12 == i13) {
                this.f5372e[i9] = f;
                return;
            }
            if (i12 < i13) {
                i10 = i9;
            }
            i9 = this.g[i9];
            if (i9 == -1) {
                break;
            }
        }
        while (true) {
            if (i3 >= this.f5369a) {
                i3 = -1;
                break;
            } else if (this.f5371d[i3] == -1) {
                break;
            } else {
                i3++;
            }
        }
        m(i3, iVar, f);
        if (i10 != -1) {
            this.f[i3] = i10;
            int[] iArr = this.g;
            iArr[i3] = iArr[i10];
            iArr[i10] = i3;
        } else {
            this.f[i3] = -1;
            if (this.f5373h > 0) {
                this.g[i3] = this.f5374i;
                this.f5374i = i3;
            } else {
                this.g[i3] = -1;
            }
        }
        int i14 = this.g[i3];
        if (i14 != -1) {
            this.f[i14] = i3;
        }
        l(iVar, i3);
    }

    @Override // p051u.b
    public final i i(int i3) {
        int i4 = this.f5373h;
        if (i4 == 0) {
            return null;
        }
        int i5 = this.f5374i;
        for (int i6 = 0; i6 < i4; i6++) {
            if (i6 == i3 && i5 != -1) {
                return ((i[]) this.f5376k.f1495d)[this.f5371d[i5]];
            }
            i5 = this.g[i5];
            if (i5 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // p051u.b
    public final void j(float f) {
        int i3 = this.f5373h;
        int i4 = this.f5374i;
        for (int i5 = 0; i5 < i3; i5++) {
            float[] fArr = this.f5372e;
            fArr[i4] = fArr[i4] / f;
            i4 = this.g[i4];
            if (i4 == -1) {
                return;
            }
        }
    }

    @Override // p051u.b
    public final void k() {
        int i3 = this.f5373h;
        int i4 = this.f5374i;
        for (int i5 = 0; i5 < i3; i5++) {
            float[] fArr = this.f5372e;
            fArr[i4] = fArr[i4] * (-1.0f);
            i4 = this.g[i4];
            if (i4 == -1) {
                return;
            }
        }
    }

    public final void l(i iVar, int i3) {
        int[] iArr;
        int i4 = iVar.b % 16;
        int[] iArr2 = this.b;
        int i5 = iArr2[i4];
        if (i5 == -1) {
            iArr2[i4] = i3;
        } else {
            while (true) {
                iArr = this.f5370c;
                int i6 = iArr[i5];
                if (i6 == -1) {
                    break;
                } else {
                    i5 = i6;
                }
            }
            iArr[i5] = i3;
        }
        this.f5370c[i3] = -1;
    }

    public final void m(int i3, i iVar, float f) {
        this.f5371d[i3] = iVar.b;
        this.f5372e[i3] = f;
        this.f[i3] = -1;
        this.g[i3] = -1;
        iVar.a(this.f5375j);
        iVar.f5367k++;
        this.f5373h++;
    }

    public final int n(i iVar) {
        if (this.f5373h == 0) {
            return -1;
        }
        int i3 = iVar.b;
        int i4 = this.b[i3 % 16];
        if (i4 == -1) {
            return -1;
        }
        if (this.f5371d[i4] == i3) {
            return i4;
        }
        do {
            i4 = this.f5370c[i4];
            if (i4 == -1) {
                break;
            }
        } while (this.f5371d[i4] != i3);
        if (i4 != -1 && this.f5371d[i4] == i3) {
            return i4;
        }
        return -1;
    }

    public final String toString() {
        String strG = hashCode() + " { ";
        int i3 = this.f5373h;
        for (int i4 = 0; i4 < i3; i4++) {
            i iVarI = i(i4);
            if (iVarI != null) {
                String str = strG + iVarI + " = " + a(i4) + " ";
                int iN = n(iVarI);
                String strG2 = a.g(str, "[p: ");
                int i5 = this.f[iN];
                w wVar = this.f5376k;
                String strG3 = a.g(i5 != -1 ? strG2 + ((i[]) wVar.f1495d)[this.f5371d[this.f[iN]]] : a.g(strG2, "none"), ", n: ");
                strG = a.g(this.g[iN] != -1 ? strG3 + ((i[]) wVar.f1495d)[this.f5371d[this.g[iN]]] : a.g(strG3, "none"), "]");
            }
        }
        return a.g(strG, " }");
    }
}
