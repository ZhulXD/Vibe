package S;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class H {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final M f1959a;
    public static final C0169b b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f1959a = new N();
        } else {
            f1959a = new M();
        }
        b = new C0169b(Float.class, "translationAlpha", 5);
        new C0169b(Rect.class, "clipBounds", 6);
    }

    public static void a(View view, int i3, int i4, int i5, int i6) {
        f1959a.P(view, i3, i4, i5, i6);
    }

    public static void b(View view, int i3) {
        f1959a.L(view, i3);
    }
}
