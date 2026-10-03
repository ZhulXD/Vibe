package androidx.emoji2.text;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends com.bumptech.glide.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.c f2883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f2884d;

    public k(com.bumptech.glide.c cVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f2883c = cVar;
        this.f2884d = threadPoolExecutor;
    }

    @Override // com.bumptech.glide.c
    public final void B(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f2884d;
        try {
            this.f2883c.B(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // com.bumptech.glide.c
    public final void C(N1.w wVar) {
        ThreadPoolExecutor threadPoolExecutor = this.f2884d;
        try {
            this.f2883c.C(wVar);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
