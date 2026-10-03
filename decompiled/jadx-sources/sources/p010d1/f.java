package p010d1;

import Y0.g;
import Y0.m;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends g {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final RectF f3887r;

    public f(m mVar, RectF rectF) {
        super(mVar);
        this.f3887r = rectF;
    }

    @Override // Y0.g, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        g gVar = new g(this);
        gVar.f3889y = this;
        gVar.invalidateSelf();
        return gVar;
    }

    public f(f fVar) {
        super(fVar);
        this.f3887r = fVar.f3887r;
    }
}
