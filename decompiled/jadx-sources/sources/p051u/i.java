package p051u;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5360a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f5363e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5368l;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5361c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5362d = 0;
    public boolean f = false;
    public final float[] g = new float[9];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f5364h = new float[9];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c[] f5365i = new c[16];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5366j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5367k = 0;

    public i(int i3) {
        this.f5368l = i3;
    }

    public final void a(c cVar) {
        int i3 = 0;
        while (true) {
            int i4 = this.f5366j;
            if (i3 >= i4) {
                c[] cVarArr = this.f5365i;
                if (i4 >= cVarArr.length) {
                    this.f5365i = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
                }
                c[] cVarArr2 = this.f5365i;
                int i5 = this.f5366j;
                cVarArr2[i5] = cVar;
                this.f5366j = i5 + 1;
                return;
            }
            if (this.f5365i[i3] == cVar) {
                return;
            } else {
                i3++;
            }
        }
    }

    public final void b(c cVar) {
        int i3 = this.f5366j;
        int i4 = 0;
        while (i4 < i3) {
            if (this.f5365i[i4] == cVar) {
                while (i4 < i3 - 1) {
                    c[] cVarArr = this.f5365i;
                    int i5 = i4 + 1;
                    cVarArr[i4] = cVarArr[i5];
                    i4 = i5;
                }
                this.f5366j--;
                return;
            }
            i4++;
        }
    }

    public final void c() {
        this.f5368l = 5;
        this.f5362d = 0;
        this.b = -1;
        this.f5361c = -1;
        this.f5363e = 0.0f;
        this.f = false;
        int i3 = this.f5366j;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f5365i[i4] = null;
        }
        this.f5366j = 0;
        this.f5367k = 0;
        this.f5360a = false;
        Arrays.fill(this.f5364h, 0.0f);
    }

    public final void d(c cVar) {
        int i3 = this.f5366j;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f5365i[i4].h(cVar, false);
        }
        this.f5366j = 0;
    }

    public final String toString() {
        return "" + this.b;
    }
}
