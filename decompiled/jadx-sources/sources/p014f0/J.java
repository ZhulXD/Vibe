package p014f0;

import A1.C0013d;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.data.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import p009d0.b;
import p009d0.f;
import p019h0.a;
import p025j0.p;
import p063y0.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class J implements InterfaceC0258g, InterfaceC0257f {
    public final C0259h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RunnableC0261j f4200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile int f4201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile C0255d f4202e;
    public volatile Object f;
    public volatile p g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile C0256e f4203h;

    public J(C0259h c0259h, RunnableC0261j runnableC0261j) {
        this.b = c0259h;
        this.f4200c = runnableC0261j;
    }

    @Override // p014f0.InterfaceC0257f
    public final void a(f fVar, Exception exc, e eVar, int i3) {
        this.f4200c.a(fVar, exc, eVar, this.g.f4638c.d());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    @Override // p014f0.InterfaceC0258g
    public final boolean b() {
        boolean z2;
        if (this.f == null) {
            if (this.f4202e != null) {
            }
            this.f4202e = null;
            this.g = null;
            z2 = false;
            while (!z2) {
                ArrayList arrayListB = this.b.b();
                int i3 = this.f4201d;
                this.f4201d = i3 + 1;
                this.g = (p) arrayListB.get(i3);
                if (this.g == null) {
                }
            }
            return z2;
        }
        Object obj = this.f;
        this.f = null;
        try {
            if (d(obj)) {
                if (this.f4202e != null || !this.f4202e.b()) {
                    this.f4202e = null;
                    this.g = null;
                    z2 = false;
                    while (!z2 && this.f4201d < this.b.b().size()) {
                        ArrayList arrayListB2 = this.b.b();
                        int i4 = this.f4201d;
                        this.f4201d = i4 + 1;
                        this.g = (p) arrayListB2.get(i4);
                        if (this.g == null && (this.b.f4225p.a(this.g.f4638c.d()) || this.b.c(this.g.f4638c.a()) != null)) {
                            this.g.f4638c.f(this.b.f4224o, new C0013d(this, this.g, 13, false));
                            z2 = true;
                        }
                    }
                    return z2;
                }
            }
        } catch (IOException e2) {
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e2);
            }
        }
        return true;
    }

    @Override // p014f0.InterfaceC0257f
    public final void c(f fVar, Object obj, e eVar, int i3, f fVar2) {
        this.f4200c.c(fVar, obj, eVar, this.g.f4638c.d(), fVar);
    }

    @Override // p014f0.InterfaceC0258g
    public final void cancel() {
        p pVar = this.g;
        if (pVar != null) {
            pVar.f4638c.cancel();
        }
    }

    public final boolean d(Object obj) throws Throwable {
        Throwable th;
        int i3 = h.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z2 = false;
        try {
            g gVarG = this.b.f4214c.a().g(obj);
            Object objA = gVarG.a();
            b bVarD = this.b.d(objA);
            F.b bVar = new F.b(bVarD, objA, this.b.f4218i, 7);
            f fVar = this.g.f4637a;
            C0259h c0259h = this.b;
            C0256e c0256e = new C0256e(fVar, c0259h.f4223n);
            a aVarA = c0259h.f4217h.a();
            aVarA.j(c0256e, bVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + c0256e + ", data: " + obj + ", encoder: " + bVarD + ", duration: " + h.a(jElapsedRealtimeNanos));
            }
            if (aVarA.h(c0256e) != null) {
                this.f4203h = c0256e;
                this.f4202e = new C0255d(Collections.singletonList(this.g.f4637a), this.b, this);
                this.g.f4638c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f4203h + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f4200c.c(this.g.f4637a, gVarG.a(), this.g.f4638c, this.g.f4638c.d(), this.g.f4637a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z2 = true;
                if (z2) {
                    throw th;
                }
                this.g.f4638c.b();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
