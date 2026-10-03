package T;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2079a;
    public final Object b;

    public /* synthetic */ e(int i3, Object obj) {
        this.f2079a = i3;
        this.b = obj;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        switch (this.f2079a) {
            case 0:
                return ((Drawable.ConstantState) this.b).canApplyTheme();
            default:
                return super.canApplyTheme();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        switch (this.f2079a) {
            case 0:
                return ((Drawable.ConstantState) this.b).getChangingConfigurations();
            default:
                return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        switch (this.f2079a) {
            case 0:
                f fVar = new f(null, 0);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.b).newDrawable();
                fVar.b = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.g);
                return fVar;
            default:
                return new p042q0.b(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        switch (this.f2079a) {
            case 0:
                f fVar = new f(null, 0);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.b).newDrawable(resources);
                fVar.b = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.g);
                return fVar;
            default:
                return new p042q0.b(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        switch (this.f2079a) {
            case 0:
                f fVar = new f(null, 0);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.b).newDrawable(resources, theme);
                fVar.b = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.g);
                return fVar;
            default:
                return super.newDrawable(resources, theme);
        }
    }
}
