package p014f0;

import A1.C0009b;
import A1.C0021h;
import com.google.android.material.datepicker.c;
import java.io.File;
import p019h0.a;
import p019h0.d;
import p063y0.f;
import p063y0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements g {
    public volatile Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4271c;

    public /* synthetic */ q(Object obj) {
        this.f4271c = obj;
    }

    public a a() {
        if (((a) this.b) == null) {
            synchronized (this) {
                try {
                    if (((a) this.b) == null) {
                        File cacheDir = ((C0021h) ((C0009b) this.f4271c).b).f192c.getCacheDir();
                        d dVar = null;
                        File file = cacheDir == null ? null : new File(cacheDir, "image_manager_disk_cache");
                        if (file != null && (file.isDirectory() || file.mkdirs())) {
                            dVar = new d(file);
                        }
                        this.b = dVar;
                    }
                    if (((a) this.b) == null) {
                        this.b = new c(8);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (a) this.b;
    }

    @Override // p063y0.g
    public Object get() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        Object obj = ((g) this.f4271c).get();
                        f.c(obj, "Argument must not be null");
                        this.b = obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
