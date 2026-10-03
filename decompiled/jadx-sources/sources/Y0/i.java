package Y0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f2417d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2418e;

    public i(f fVar, float f) {
        super(0);
        this.f2417d = fVar;
        this.f2418e = f;
    }

    @Override // Y0.e
    public final boolean i() {
        return true;
    }

    @Override // Y0.e
    public final void j(float f, float f3, float f4, w wVar) {
        this.f2417d.j(f, f3 - this.f2418e, f4, wVar);
    }
}
