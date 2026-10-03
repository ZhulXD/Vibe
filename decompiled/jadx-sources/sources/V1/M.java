package V1;

import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M extends N {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0189e f2269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ P f2270e;

    public M(P p2, long j2, C0189e c0189e) {
        this.f2270e = p2;
        this.b = j2;
        this.f2271c = -1;
        this.f2269d = c0189e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2269d.z(this.f2270e, Unit.INSTANCE);
    }

    @Override // V1.N
    public final String toString() {
        return super.toString() + this.f2269d;
    }
}
