package k;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MotionEventCompat;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: renamed from: k.p0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0309p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f4896a = {R.attr.state_checked};
    public static final int[] b = new int[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Rect f4897c = new Rect();

    public static void a(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 29 || i3 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f4896a);
        } else {
            drawable.setState(b);
        }
        drawable.setState(state);
    }

    public static Rect b(Drawable drawable) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 29) {
            Insets insetsA = AbstractC0307o0.a(drawable);
            return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
        }
        Drawable drawableUnwrap = DrawableCompat.unwrap(drawable);
        if (i3 >= 29) {
            boolean z2 = AbstractC0305n0.f4888a;
        } else if (AbstractC0305n0.f4888a) {
            try {
                Object objInvoke = AbstractC0305n0.b.invoke(drawableUnwrap, null);
                if (objInvoke != null) {
                    return new Rect(AbstractC0305n0.f4889c.getInt(objInvoke), AbstractC0305n0.f4890d.getInt(objInvoke), AbstractC0305n0.f4891e.getInt(objInvoke), AbstractC0305n0.f.getInt(objInvoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f4897c;
    }

    public static PorterDuff.Mode c(int i3, PorterDuff.Mode mode) {
        if (i3 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i3 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i3 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i3) {
            case MotionEventCompat.AXIS_RZ /* 14 */:
                return PorterDuff.Mode.MULTIPLY;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
