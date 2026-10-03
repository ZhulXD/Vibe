package Y0;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class g extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f2383a;
    public Q0.a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f2384c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ColorStateList f2385d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f2386e;
    public PorterDuff.Mode f;
    public Rect g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f2387h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2388i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2389j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2390k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f2391l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2392m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2393n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2394o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2395p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Paint.Style f2396q;

    public g(m mVar) {
        this.f2384c = null;
        this.f2385d = null;
        this.f2386e = null;
        this.f = PorterDuff.Mode.SRC_IN;
        this.g = null;
        this.f2387h = 1.0f;
        this.f2388i = 1.0f;
        this.f2390k = 255;
        this.f2391l = 0.0f;
        this.f2392m = 0.0f;
        this.f2393n = 0;
        this.f2394o = 0;
        this.f2395p = 0;
        this.f2396q = Paint.Style.FILL_AND_STROKE;
        this.f2383a = mVar;
        this.b = null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        h hVar = new h(this);
        hVar.f = true;
        return hVar;
    }

    public g(g gVar) {
        this.f2384c = null;
        this.f2385d = null;
        this.f2386e = null;
        this.f = PorterDuff.Mode.SRC_IN;
        this.g = null;
        this.f2387h = 1.0f;
        this.f2388i = 1.0f;
        this.f2390k = 255;
        this.f2391l = 0.0f;
        this.f2392m = 0.0f;
        this.f2393n = 0;
        this.f2394o = 0;
        this.f2395p = 0;
        this.f2396q = Paint.Style.FILL_AND_STROKE;
        this.f2383a = gVar.f2383a;
        this.b = gVar.b;
        this.f2389j = gVar.f2389j;
        this.f2384c = gVar.f2384c;
        this.f2385d = gVar.f2385d;
        this.f = gVar.f;
        this.f2386e = gVar.f2386e;
        this.f2390k = gVar.f2390k;
        this.f2387h = gVar.f2387h;
        this.f2395p = gVar.f2395p;
        this.f2393n = gVar.f2393n;
        this.f2388i = gVar.f2388i;
        this.f2391l = gVar.f2391l;
        this.f2392m = gVar.f2392m;
        this.f2394o = gVar.f2394o;
        this.f2396q = gVar.f2396q;
        if (gVar.g != null) {
            this.g = new Rect(gVar.g);
        }
    }
}
