package Y0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends p000a.a {
    @Override // p000a.a
    public final void i(w wVar, float f, float f3) {
        wVar.d(0.0f, f3 * f, 180.0f, 90.0f);
        float f4 = f3 * 2.0f * f;
        s sVar = new s(0.0f, 0.0f, f4, f4);
        sVar.f = 180.0f;
        sVar.g = 90.0f;
        wVar.g.add(sVar);
        q qVar = new q(sVar);
        wVar.a(180.0f);
        wVar.f2465h.add(qVar);
        wVar.f2464e = 270.0f;
        float f5 = (0.0f + f4) * 0.5f;
        float f6 = (f4 - 0.0f) / 2.0f;
        double d3 = 270.0f;
        wVar.f2462c = (((float) Math.cos(Math.toRadians(d3))) * f6) + f5;
        wVar.f2463d = (f6 * ((float) Math.sin(Math.toRadians(d3)))) + f5;
    }
}
