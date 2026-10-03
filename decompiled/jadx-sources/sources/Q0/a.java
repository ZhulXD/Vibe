package Q0;

import android.content.Context;
import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import com.bumptech.glide.c;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int f = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1832a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f1835e;

    public a(Context context) {
        boolean zJ = c.J(context, R.attr.elevationOverlayEnabled, false);
        int iK = c.k(context, R.attr.elevationOverlayColor, 0);
        int iK2 = c.k(context, R.attr.elevationOverlayAccentColor, 0);
        int iK3 = c.k(context, R.attr.colorSurface, 0);
        float f3 = context.getResources().getDisplayMetrics().density;
        this.f1832a = zJ;
        this.b = iK;
        this.f1833c = iK2;
        this.f1834d = iK3;
        this.f1835e = f3;
    }

    public final int a(int i3, float f3) {
        int i4;
        if (!this.f1832a || ColorUtils.setAlphaComponent(i3, 255) != this.f1834d) {
            return i3;
        }
        float f4 = this.f1835e;
        float fMin = (f4 <= 0.0f || f3 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f3 / f4)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i3);
        int iW = c.w(ColorUtils.setAlphaComponent(i3, 255), fMin, this.b);
        if (fMin > 0.0f && (i4 = this.f1833c) != 0) {
            iW = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i4, f), iW);
        }
        return ColorUtils.setAlphaComponent(iW, iAlpha);
    }
}
