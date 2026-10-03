package T;

import android.content.res.ColorStateList;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.DrawableCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Animatable2.AnimationCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ L0.a f2075a;

    public b(L0.a aVar) {
        this.f2075a = aVar;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ColorStateList colorStateList = this.f2075a.b.f1267p;
        if (colorStateList != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        L0.c cVar = this.f2075a.b;
        ColorStateList colorStateList = cVar.f1267p;
        if (colorStateList != null) {
            DrawableCompat.setTint(drawable, colorStateList.getColorForState(cVar.f1271t, colorStateList.getDefaultColor()));
        }
    }
}
