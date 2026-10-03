package p052u0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements d, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f5389a;
    public final d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile c f5390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile c f5391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5392e = 3;
    public int f = 3;

    public b(Object obj, d dVar) {
        this.f5389a = obj;
        this.b = dVar;
    }

    @Override // p052u0.d, p052u0.c
    public final boolean a() {
        boolean z2;
        synchronized (this.f5389a) {
            try {
                z2 = this.f5390c.a() || this.f5391d.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.d
    public final boolean b(c cVar) {
        boolean z2;
        boolean zEquals;
        int i3;
        synchronized (this.f5389a) {
            d dVar = this.b;
            z2 = false;
            if (dVar == null || dVar.b(this)) {
                if (this.f5392e != 5) {
                    zEquals = cVar.equals(this.f5390c);
                } else {
                    zEquals = cVar.equals(this.f5391d) && ((i3 = this.f) == 4 || i3 == 5);
                }
                if (zEquals) {
                    z2 = true;
                }
            }
        }
        return z2;
    }

    @Override // p052u0.c
    public final boolean c(c cVar) {
        if (cVar instanceof b) {
            b bVar = (b) cVar;
            if (this.f5390c.c(bVar.f5390c) && this.f5391d.c(bVar.f5391d)) {
                return true;
            }
        }
        return false;
    }

    @Override // p052u0.c
    public final void clear() {
        synchronized (this.f5389a) {
            try {
                this.f5392e = 3;
                this.f5390c.clear();
                if (this.f != 3) {
                    this.f = 3;
                    this.f5391d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p052u0.d
    public final boolean d(c cVar) {
        boolean z2;
        synchronized (this.f5389a) {
            d dVar = this.b;
            z2 = (dVar == null || dVar.d(this)) && cVar.equals(this.f5390c);
        }
        return z2;
    }

    @Override // p052u0.c
    public final boolean e() {
        boolean z2;
        synchronized (this.f5389a) {
            try {
                z2 = this.f5392e == 3 && this.f == 3;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.d
    public final void f(c cVar) {
        synchronized (this.f5389a) {
            try {
                if (cVar.equals(this.f5390c)) {
                    this.f5392e = 4;
                } else if (cVar.equals(this.f5391d)) {
                    this.f = 4;
                }
                d dVar = this.b;
                if (dVar != null) {
                    dVar.f(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p052u0.c
    public final void g() {
        synchronized (this.f5389a) {
            try {
                if (this.f5392e != 1) {
                    this.f5392e = 1;
                    this.f5390c.g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p052u0.d
    public final d getRoot() {
        d root;
        synchronized (this.f5389a) {
            try {
                d dVar = this.b;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // p052u0.d
    public final void h(c cVar) {
        synchronized (this.f5389a) {
            try {
                if (cVar.equals(this.f5391d)) {
                    this.f = 5;
                    d dVar = this.b;
                    if (dVar != null) {
                        dVar.h(this);
                    }
                    return;
                }
                this.f5392e = 5;
                if (this.f != 1) {
                    this.f = 1;
                    this.f5391d.g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p052u0.c
    public final boolean i() {
        boolean z2;
        synchronized (this.f5389a) {
            try {
                z2 = this.f5392e == 4 || this.f == 4;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.c
    public final boolean isRunning() {
        boolean z2;
        synchronized (this.f5389a) {
            try {
                z2 = true;
                if (this.f5392e != 1 && this.f != 1) {
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.d
    public final boolean j(c cVar) {
        boolean z2;
        synchronized (this.f5389a) {
            d dVar = this.b;
            z2 = dVar == null || dVar.j(this);
        }
        return z2;
    }

    @Override // p052u0.c
    public final void pause() {
        synchronized (this.f5389a) {
            try {
                if (this.f5392e == 1) {
                    this.f5392e = 2;
                    this.f5390c.pause();
                }
                if (this.f == 1) {
                    this.f = 2;
                    this.f5391d.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
