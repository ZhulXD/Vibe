package p003b0;

import com.bumptech.glide.manager.n;
import com.bumptech.glide.manager.p;
import java.io.File;
import p014f0.q;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3077a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f3079d;

    public c(q qVar, n nVar) {
        this.f3079d = new p(this);
        this.f3078c = qVar;
        this.b = nVar;
    }

    public void a() {
        e.a((e) this.f3079d, this, false);
    }

    public File b() {
        File file;
        synchronized (((e) this.f3079d)) {
            try {
                d dVar = (d) this.b;
                if (dVar.f != this) {
                    throw new IllegalStateException();
                }
                if (!dVar.f3083e) {
                    ((boolean[]) this.f3078c)[0] = true;
                }
                file = dVar.f3082d[0];
                ((e) this.f3079d).b.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    public c(e eVar, d dVar) {
        this.f3079d = eVar;
        this.b = dVar;
        this.f3078c = dVar.f3083e ? null : new boolean[eVar.f3087h];
    }
}
