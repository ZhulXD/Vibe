package p019h0;

import p014f0.F;
import p014f0.r;
import p063y0.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r f4365d;

    @Override // p063y0.j
    public final int b(Object obj) {
        F f = (F) obj;
        if (f == null) {
            return 1;
        }
        return f.c();
    }

    @Override // p063y0.j
    public final void c(Object obj, Object obj2) {
        F f = (F) obj2;
        r rVar = this.f4365d;
        if (rVar == null || f == null) {
            return;
        }
        rVar.f4276e.a(f, true);
    }
}
