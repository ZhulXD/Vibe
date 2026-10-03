package B0;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f290a = new LinearInterpolator();
    public static final L.a b = new L.a(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final L.a f291c = new L.a(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final L.a f292d = new L.a(L.a.f1252e);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DecelerateInterpolator f293e = new DecelerateInterpolator();

    public static float a(float f, float f3, float f4) {
        return ((f3 - f) * f4) + f;
    }

    public static float b(float f, float f3, float f4, float f5, float f6) {
        if (f6 <= f4) {
            return f;
        }
        return f6 >= f5 ? f3 : a(f, f3, (f6 - f4) / (f5 - f4));
    }

    public static int c(int i3, float f, int i4) {
        return Math.round(f * (i4 - i3)) + i3;
    }
}
