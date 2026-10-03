package Y0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2382d;

    public f(float f) {
        super(0);
        this.f2382d = f - 0.001f;
    }

    @Override // Y0.e
    public final void j(float f, float f3, float f4, w wVar) {
        double d3 = this.f2382d;
        float fSqrt = (float) ((Math.sqrt(2.0d) * d3) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(d3, 2.0d) - Math.pow(fSqrt, 2.0d));
        wVar.d(f3 - fSqrt, ((float) (-((Math.sqrt(2.0d) * d3) - d3))) + fSqrt2, 270.0f, 0.0f);
        wVar.c(f3, (float) (-((Math.sqrt(2.0d) * d3) - d3)));
        wVar.c(f3 + fSqrt, ((float) (-((Math.sqrt(2.0d) * d3) - d3))) + fSqrt2);
    }
}
