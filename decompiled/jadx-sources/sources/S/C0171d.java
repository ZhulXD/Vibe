package S;

import android.view.ViewGroup;

/* JADX INFO: renamed from: S.d, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0171d extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1977a = false;
    public final ViewGroup b;

    public C0171d(ViewGroup viewGroup) {
        this.b = viewGroup;
    }

    @Override // S.w, S.t
    public final void a(v vVar) {
        if (!this.f1977a) {
            com.bumptech.glide.d.Y(this.b, false);
        }
        vVar.B(this);
    }

    @Override // S.w, S.t
    public final void b() {
        com.bumptech.glide.d.Y(this.b, false);
    }

    @Override // S.w, S.t
    public final void c() {
        com.bumptech.glide.d.Y(this.b, true);
    }

    @Override // S.w, S.t
    public final void e(v vVar) {
        com.bumptech.glide.d.Y(this.b, false);
        this.f1977a = true;
    }
}
