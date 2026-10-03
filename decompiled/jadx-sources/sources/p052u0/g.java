package p052u0;

import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements d, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f5419a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile f f5420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile c f5421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5422e = 3;
    public int f = 3;
    public boolean g;

    public g(Object obj, d dVar) {
        this.b = obj;
        this.f5419a = dVar;
    }

    @Override // p052u0.d, p052u0.c
    public final boolean a() {
        boolean z2;
        synchronized (this.b) {
            try {
                z2 = this.f5421d.a() || this.f5420c.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.d
    public final boolean b(c cVar) {
        boolean z2;
        synchronized (this.b) {
            try {
                d dVar = this.f5419a;
                z2 = (dVar == null || dVar.b(this)) && cVar.equals(this.f5420c) && !a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.c
    public final boolean c(c cVar) {
        if (!(cVar instanceof g)) {
            return false;
        }
        g gVar = (g) cVar;
        if (this.f5420c == null) {
            if (gVar.f5420c != null) {
                return false;
            }
        } else if (!this.f5420c.c(gVar.f5420c)) {
            return false;
        }
        if (this.f5421d == null) {
            return gVar.f5421d == null;
        }
        return this.f5421d.c(gVar.f5421d);
    }

    @Override // p052u0.c
    public final void clear() {
        synchronized (this.b) {
            this.g = false;
            this.f5422e = 3;
            this.f = 3;
            this.f5421d.clear();
            this.f5420c.clear();
        }
    }

    @Override // p052u0.d
    public final boolean d(c cVar) {
        boolean z2;
        synchronized (this.b) {
            try {
                d dVar = this.f5419a;
                z2 = (dVar == null || dVar.d(this)) && cVar.equals(this.f5420c) && this.f5422e != 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.c
    public final boolean e() {
        boolean z2;
        synchronized (this.b) {
            z2 = this.f5422e == 3;
        }
        return z2;
    }

    @Override // p052u0.d
    public final void f(c cVar) {
        synchronized (this.b) {
            try {
                if (cVar.equals(this.f5421d)) {
                    this.f = 4;
                    return;
                }
                this.f5422e = 4;
                d dVar = this.f5419a;
                if (dVar != null) {
                    dVar.f(this);
                }
                if (!a.a(this.f)) {
                    this.f5421d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p052u0.c
    public final void g() {
        synchronized (this.b) {
            try {
                this.g = true;
                try {
                    if (this.f5422e != 4 && this.f != 1) {
                        this.f = 1;
                        this.f5421d.g();
                    }
                    if (this.g && this.f5422e != 1) {
                        this.f5422e = 1;
                        this.f5420c.g();
                    }
                    this.g = false;
                } catch (Throwable th) {
                    this.g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // p052u0.d
    public final d getRoot() {
        d root;
        synchronized (this.b) {
            try {
                d dVar = this.f5419a;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // p052u0.d
    public final void h(c cVar) {
        synchronized (this.b) {
            try {
                if (!cVar.equals(this.f5420c)) {
                    this.f = 5;
                    return;
                }
                this.f5422e = 5;
                d dVar = this.f5419a;
                if (dVar != null) {
                    dVar.h(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p052u0.c
    public final boolean i() {
        boolean z2;
        synchronized (this.b) {
            z2 = this.f5422e == 4;
        }
        return z2;
    }

    @Override // p052u0.c
    public final boolean isRunning() {
        boolean z2;
        synchronized (this.b) {
            z2 = true;
            if (this.f5422e != 1) {
                z2 = false;
            }
        }
        return z2;
    }

    @Override // p052u0.d
    public final boolean j(c cVar) {
        boolean z2;
        synchronized (this.b) {
            try {
                d dVar = this.f5419a;
                z2 = (dVar == null || dVar.j(this)) && (cVar.equals(this.f5420c) || this.f5422e != 4);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    @Override // p052u0.c
    public final void pause() {
        synchronized (this.b) {
            try {
                if (!a.a(this.f)) {
                    this.f = 2;
                    this.f5421d.pause();
                }
                if (!a.a(this.f5422e)) {
                    this.f5422e = 2;
                    this.f5420c.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
