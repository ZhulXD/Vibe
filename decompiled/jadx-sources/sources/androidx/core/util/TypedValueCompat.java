package androidx.core.util;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class TypedValueCompat {
    private static final float INCHES_PER_MM = 0.03937008f;
    private static final float INCHES_PER_PT = 0.013888889f;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static float deriveDimension(int i3, float f, DisplayMetrics displayMetrics) {
            return TypedValue.deriveDimension(i3, f, displayMetrics);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ComplexDimensionUnit {
    }

    private TypedValueCompat() {
    }

    public static float deriveDimension(int i3, float f, DisplayMetrics displayMetrics) {
        float f3;
        float f4;
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.deriveDimension(i3, f, displayMetrics);
        }
        if (i3 == 0) {
            return f;
        }
        if (i3 == 1) {
            float f5 = displayMetrics.density;
            if (f5 == 0.0f) {
                return 0.0f;
            }
            return f / f5;
        }
        if (i3 == 2) {
            float f6 = displayMetrics.scaledDensity;
            if (f6 == 0.0f) {
                return 0.0f;
            }
            return f / f6;
        }
        if (i3 == 3) {
            float f7 = displayMetrics.xdpi;
            if (f7 == 0.0f) {
                return 0.0f;
            }
            f3 = f / f7;
            f4 = INCHES_PER_PT;
        } else {
            if (i3 == 4) {
                float f8 = displayMetrics.xdpi;
                if (f8 == 0.0f) {
                    return 0.0f;
                }
                return f / f8;
            }
            if (i3 != 5) {
                throw new IllegalArgumentException(E.b.i(i3, "Invalid unitToConvertTo "));
            }
            float f9 = displayMetrics.xdpi;
            if (f9 == 0.0f) {
                return 0.0f;
            }
            f3 = f / f9;
            f4 = INCHES_PER_MM;
        }
        return f3 / f4;
    }

    public static float dpToPx(float f, DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(1, f, displayMetrics);
    }

    @SuppressLint({"WrongConstant"})
    public static int getUnitFromComplexDimension(int i3) {
        return i3 & 15;
    }

    public static float pxToDp(float f, DisplayMetrics displayMetrics) {
        return deriveDimension(1, f, displayMetrics);
    }

    public static float pxToSp(float f, DisplayMetrics displayMetrics) {
        return deriveDimension(2, f, displayMetrics);
    }

    public static float spToPx(float f, DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(2, f, displayMetrics);
    }
}
