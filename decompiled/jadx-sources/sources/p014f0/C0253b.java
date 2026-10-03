package p014f0;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import p009d0.f;

/* JADX INFO: renamed from: f0.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0253b extends WeakReference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4204a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public F f4205c;

    public C0253b(f fVar, z zVar, ReferenceQueue referenceQueue) {
        super(zVar, referenceQueue);
        p063y0.f.c(fVar, "Argument must not be null");
        this.f4204a = fVar;
        boolean z2 = zVar.b;
        this.f4205c = null;
        this.b = z2;
    }
}
