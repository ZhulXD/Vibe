package androidx.core.util;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z2) {
        if (!z2) {
            throw new IllegalArgumentException();
        }
    }

    public static float checkArgumentFinite(float f, String str) {
        if (Float.isNaN(f)) {
            throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " must not be NaN"));
        }
        if (Float.isInfinite(f)) {
            throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " must not be infinite"));
        }
        return f;
    }

    public static int checkArgumentInRange(int i3, int i4, int i5, String str) {
        if (i3 < i4) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(str + " is out of range of [" + i4 + ", " + i5 + "] (too low)");
        }
        if (i3 <= i5) {
            return i3;
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException(str + " is out of range of [" + i4 + ", " + i5 + "] (too high)");
    }

    public static int checkArgumentNonnegative(int i3, String str) {
        if (i3 >= 0) {
            return i3;
        }
        throw new IllegalArgumentException(str);
    }

    public static int checkFlagsArgument(int i3, int i4) {
        if ((i3 & i4) == i3) {
            return i3;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i3) + ", but only 0x" + Integer.toHexString(i4) + " are allowed");
    }

    public static <T> T checkNotNull(T t2) {
        t2.getClass();
        return t2;
    }

    public static void checkState(boolean z2, String str) {
        if (!z2) {
            throw new IllegalStateException(str);
        }
    }

    public static <T extends CharSequence> T checkStringNotEmpty(T t2) {
        if (TextUtils.isEmpty(t2)) {
            throw new IllegalArgumentException();
        }
        return t2;
    }

    public static void checkArgument(boolean z2, Object obj) {
        if (!z2) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int checkArgumentNonnegative(int i3) {
        if (i3 >= 0) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    public static <T> T checkNotNull(T t2, Object obj) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z2) {
        checkState(z2, null);
    }

    public static void checkArgument(boolean z2, String str, Object... objArr) {
        if (!z2) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T extends CharSequence> T checkStringNotEmpty(T t2, Object obj) {
        if (TextUtils.isEmpty(t2)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return t2;
    }

    public static <T extends CharSequence> T checkStringNotEmpty(T t2, String str, Object... objArr) {
        if (TextUtils.isEmpty(t2)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t2;
    }

    public static long checkArgumentInRange(long j2, long j3, long j4, String str) {
        if (j2 < j3) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(str + " is out of range of [" + j3 + ", " + j4 + "] (too low)");
        }
        if (j2 <= j4) {
            return j2;
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException(str + " is out of range of [" + j3 + ", " + j4 + "] (too high)");
    }

    public static float checkArgumentInRange(float f, float f3, float f4, String str) {
        if (f < f3) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Float.valueOf(f3), Float.valueOf(f4)));
        }
        if (f <= f4) {
            return f;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Float.valueOf(f3), Float.valueOf(f4)));
    }

    public static double checkArgumentInRange(double d3, double d4, double d5, String str) {
        if (d3 < d4) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Double.valueOf(d4), Double.valueOf(d5)));
        }
        if (d3 <= d5) {
            return d3;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Double.valueOf(d4), Double.valueOf(d5)));
    }
}
