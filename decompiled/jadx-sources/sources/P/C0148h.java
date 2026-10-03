package P;

/* JADX INFO: renamed from: P.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0148h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1686a = 0;
    public C0148h b;

    public final void a(int i3) {
        if (i3 < 64) {
            this.f1686a &= ~(1 << i3);
            return;
        }
        C0148h c0148h = this.b;
        if (c0148h != null) {
            c0148h.a(i3 - 64);
        }
    }

    public final int b(int i3) {
        C0148h c0148h = this.b;
        if (c0148h == null) {
            return i3 >= 64 ? Long.bitCount(this.f1686a) : Long.bitCount(this.f1686a & ((1 << i3) - 1));
        }
        if (i3 < 64) {
            return Long.bitCount(this.f1686a & ((1 << i3) - 1));
        }
        return Long.bitCount(this.f1686a) + c0148h.b(i3 - 64);
    }

    public final void c() {
        if (this.b == null) {
            this.b = new C0148h();
        }
    }

    public final boolean d(int i3) {
        if (i3 < 64) {
            return (this.f1686a & (1 << i3)) != 0;
        }
        c();
        return this.b.d(i3 - 64);
    }

    public final void e(int i3, boolean z2) {
        if (i3 >= 64) {
            c();
            this.b.e(i3 - 64, z2);
            return;
        }
        long j2 = this.f1686a;
        boolean z3 = (Long.MIN_VALUE & j2) != 0;
        long j3 = (1 << i3) - 1;
        this.f1686a = ((j2 & (~j3)) << 1) | (j2 & j3);
        if (z2) {
            h(i3);
        } else {
            a(i3);
        }
        if (z3 || this.b != null) {
            c();
            this.b.e(0, z3);
        }
    }

    public final boolean f(int i3) {
        if (i3 >= 64) {
            c();
            return this.b.f(i3 - 64);
        }
        long j2 = 1 << i3;
        long j3 = this.f1686a;
        boolean z2 = (j3 & j2) != 0;
        long j4 = j3 & (~j2);
        this.f1686a = j4;
        long j5 = j2 - 1;
        this.f1686a = (j4 & j5) | Long.rotateRight((~j5) & j4, 1);
        C0148h c0148h = this.b;
        if (c0148h != null) {
            if (c0148h.d(0)) {
                h(63);
            }
            this.b.f(0);
        }
        return z2;
    }

    public final void g() {
        this.f1686a = 0L;
        C0148h c0148h = this.b;
        if (c0148h != null) {
            c0148h.g();
        }
    }

    public final void h(int i3) {
        if (i3 < 64) {
            this.f1686a |= 1 << i3;
        } else {
            c();
            this.b.h(i3 - 64);
        }
    }

    public final String toString() {
        if (this.b == null) {
            return Long.toBinaryString(this.f1686a);
        }
        return this.b.toString() + "xx" + Long.toBinaryString(this.f1686a);
    }
}
