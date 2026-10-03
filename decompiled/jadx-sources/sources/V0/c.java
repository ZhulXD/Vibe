package V0;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Context f2239m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ TextPaint f2240n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ p000a.a f2241o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ d f2242p;

    public c(d dVar, Context context, TextPaint textPaint, p000a.a aVar) {
        this.f2242p = dVar;
        this.f2239m = context;
        this.f2240n = textPaint;
        this.f2241o = aVar;
    }

    @Override // p000a.a
    public final void w(int i3) {
        this.f2241o.w(i3);
    }

    @Override // p000a.a
    public final void x(Typeface typeface, boolean z2) {
        this.f2242p.f(this.f2239m, this.f2240n, typeface);
        this.f2241o.x(typeface, z2);
    }
}
