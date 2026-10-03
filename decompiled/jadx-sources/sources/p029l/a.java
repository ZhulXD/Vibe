package p029l;

import android.os.Looper;
import com.bumptech.glide.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile a f5027d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final N.c f5028e = new N.c(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f5029c = new d();

    public static a b0() {
        if (f5027d != null) {
            return f5027d;
        }
        synchronized (a.class) {
            try {
                if (f5027d == null) {
                    f5027d = new a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5027d;
    }

    public final void c0(Runnable runnable) {
        d dVar = this.f5029c;
        if (dVar.f5033e == null) {
            synchronized (dVar.f5031c) {
                try {
                    if (dVar.f5033e == null) {
                        dVar.f5033e = d.b0(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        dVar.f5033e.post(runnable);
    }
}
