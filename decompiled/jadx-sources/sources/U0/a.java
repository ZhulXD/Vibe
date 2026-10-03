package U0;

import android.R;
import android.content.res.ColorStateList;
import androidx.core.widget.CompoundButtonCompat;
import com.bumptech.glide.c;
import k.F;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends F {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[][] f2234h = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList f;
    public boolean g;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f == null) {
            int iM = c.m(this, com.minhub.gamehub.R.attr.colorControlActivated);
            int iM2 = c.m(this, com.minhub.gamehub.R.attr.colorOnSurface);
            int iM3 = c.m(this, com.minhub.gamehub.R.attr.colorSurface);
            this.f = new ColorStateList(f2234h, new int[]{c.w(iM3, 1.0f, iM), c.w(iM3, 0.54f, iM2), c.w(iM3, 0.38f, iM2), c.w(iM3, 0.38f, iM2)});
        }
        return this.f;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.g && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.g = z2;
        if (z2) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }
}
