package p014f0;

import com.google.android.material.datepicker.c;
import p065z0.d;
import p065z0.e;
import p065z0.g;
import p065z0.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E implements F, e {
    public static final d f = g.a(20, new c(5));
    public final h b = new h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public F f4183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4185e;

    public final synchronized void a() {
        this.b.a();
        if (!this.f4184d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f4184d = false;
        if (this.f4185e) {
            e();
        }
    }

    @Override // p065z0.e
    public final h b() {
        return this.b;
    }

    @Override // p014f0.F
    public final int c() {
        return this.f4183c.c();
    }

    @Override // p014f0.F
    public final Class d() {
        return this.f4183c.d();
    }

    @Override // p014f0.F
    public final synchronized void e() {
        this.b.a();
        this.f4185e = true;
        if (!this.f4184d) {
            this.f4183c.e();
            this.f4183c = null;
            f.release(this);
        }
    }

    @Override // p014f0.F
    public final Object get() {
        return this.f4183c.get();
    }
}
