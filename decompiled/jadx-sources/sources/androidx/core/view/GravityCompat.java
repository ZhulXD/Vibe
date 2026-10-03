package androidx.core.view;

import android.graphics.Rect;
import android.view.Gravity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class GravityCompat {
    public static final int END = 8388613;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    private GravityCompat() {
    }

    public static void apply(int i3, int i4, int i5, Rect rect, Rect rect2, int i6) {
        Gravity.apply(i3, i4, i5, rect, rect2, i6);
    }

    public static void applyDisplay(int i3, Rect rect, Rect rect2, int i4) {
        Gravity.applyDisplay(i3, rect, rect2, i4);
    }

    public static int getAbsoluteGravity(int i3, int i4) {
        return Gravity.getAbsoluteGravity(i3, i4);
    }

    public static void apply(int i3, int i4, int i5, Rect rect, int i6, int i7, Rect rect2, int i8) {
        Gravity.apply(i3, i4, i5, rect, i6, i7, rect2, i8);
    }
}
