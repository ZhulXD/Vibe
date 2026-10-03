package p014f0;

import p009d0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z implements F {
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4306c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final F f4307d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final y f4308e;
    public final f f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4309h;

    public z(F f, boolean z2, boolean z3, f fVar, y yVar) {
        p063y0.f.c(f, "Argument must not be null");
        this.f4307d = f;
        this.b = z2;
        this.f4306c = z3;
        this.f = fVar;
        p063y0.f.c(yVar, "Argument must not be null");
        this.f4308e = yVar;
    }

    public final synchronized void a() {
        if (this.f4309h) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.g++;
    }

    public final void b() {
        boolean z2;
        synchronized (this) {
            int i3 = this.g;
            if (i3 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z2 = true;
            int i4 = i3 - 1;
            this.g = i4;
            if (i4 != 0) {
                z2 = false;
            }
        }
        if (z2) {
            ((r) this.f4308e).e(this.f, this);
        }
    }

    @Override // p014f0.F
    public final int c() {
        return this.f4307d.c();
    }

    @Override // p014f0.F
    public final Class d() {
        return this.f4307d.d();
    }

    @Override // p014f0.F
    public final synchronized void e() {
        if (this.g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f4309h) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f4309h = true;
        if (this.f4306c) {
            this.f4307d.e();
        }
    }

    @Override // p014f0.F
    public final Object get() {
        return this.f4307d.get();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.b + ", listener=" + this.f4308e + ", key=" + this.f + ", acquired=" + this.g + ", isRecycled=" + this.f4309h + ", resource=" + this.f4307d + '}';
    }
}
