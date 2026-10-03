package T;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2115a;
    public m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f2116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f2117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2118e;
    public Bitmap f;
    public ColorStateList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f2119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Paint f2123l;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f2115a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new p(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new p(this);
    }
}
