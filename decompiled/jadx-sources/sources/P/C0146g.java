package P;

import A1.C0009b;

/* JADX INFO: renamed from: P.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0146g implements O {
    public final O b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1671c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1672d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1673e = -1;

    public C0146g(C0009b c0009b) {
        this.b = c0009b;
    }

    @Override // P.O
    public final void a(int i3, int i4) {
        int i5;
        if (this.f1671c == 2 && (i5 = this.f1672d) >= i3 && i5 <= i3 + i4) {
            this.f1673e += i4;
            this.f1672d = i3;
        } else {
            c();
            this.f1672d = i3;
            this.f1673e = i4;
            this.f1671c = 2;
        }
    }

    @Override // P.O
    public final void b(int i3, int i4) {
        c();
        this.b.b(i3, i4);
    }

    public final void c() {
        int i3 = this.f1671c;
        if (i3 == 0) {
            return;
        }
        O o2 = this.b;
        if (i3 == 1) {
            o2.i(this.f1672d, this.f1673e);
        } else if (i3 == 2) {
            o2.a(this.f1672d, this.f1673e);
        } else if (i3 == 3) {
            o2.g(this.f1672d, this.f1673e);
        }
        this.f1671c = 0;
    }

    @Override // P.O
    public final void g(int i3, int i4) {
        int i5;
        int i6;
        int i7;
        if (this.f1671c == 3 && i3 <= (i6 = this.f1673e + (i5 = this.f1672d)) && (i7 = i3 + i4) >= i5) {
            this.f1672d = Math.min(i3, i5);
            this.f1673e = Math.max(i6, i7) - this.f1672d;
        } else {
            c();
            this.f1672d = i3;
            this.f1673e = i4;
            this.f1671c = 3;
        }
    }

    @Override // P.O
    public final void i(int i3, int i4) {
        int i5;
        if (this.f1671c == 1 && i3 >= (i5 = this.f1672d)) {
            int i6 = this.f1673e;
            if (i3 <= i5 + i6) {
                this.f1673e = i6 + i4;
                this.f1672d = Math.min(i3, i5);
                return;
            }
        }
        c();
        this.f1672d = i3;
        this.f1673e = i4;
        this.f1671c = 1;
    }
}
