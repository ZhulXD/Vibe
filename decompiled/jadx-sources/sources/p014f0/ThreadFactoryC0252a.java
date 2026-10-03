package p014f0;

import A1.u0;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: renamed from: f0.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC0252a implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(new u0(10, runnable), "glide-active-resources");
    }
}
