package p022i0;

import E0.d;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f4425a;
    public final String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f4427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicInteger f4428e = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f4426c = d.f4429a;

    public c(b bVar, String str, boolean z2) {
        this.f4425a = bVar;
        this.b = str;
        this.f4427d = z2;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        d dVar = new d(6, this, runnable);
        this.f4425a.getClass();
        a aVar = new a(dVar);
        aVar.setName("glide-" + this.b + "-thread-" + this.f4428e.getAndIncrement());
        return aVar;
    }
}
