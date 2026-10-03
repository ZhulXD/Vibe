package V0;

import A1.C0009b;
import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Typeface f2235m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C0009b f2236n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2237o;

    public a(C0009b c0009b, Typeface typeface) {
        this.f2235m = typeface;
        this.f2236n = c0009b;
    }

    @Override // p000a.a
    public final void w(int i3) {
        if (this.f2237o) {
            return;
        }
        R0.c cVar = (R0.c) this.f2236n.b;
        if (cVar.j(this.f2235m)) {
            cVar.h(false);
        }
    }

    @Override // p000a.a
    public final void x(Typeface typeface, boolean z2) {
        if (this.f2237o) {
            return;
        }
        R0.c cVar = (R0.c) this.f2236n.b;
        if (cVar.j(typeface)) {
            cVar.h(false);
        }
    }
}
