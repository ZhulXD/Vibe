package androidx.core.math;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static int addExact(int i3, int i4) {
        int i5 = i3 + i4;
        if ((i3 >= 0) == (i4 >= 0)) {
            if ((i3 >= 0) != (i5 >= 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return i5;
    }

    public static double clamp(double d3, double d4, double d5) {
        if (d3 < d4) {
            return d4;
        }
        return d3 > d5 ? d5 : d3;
    }

    public static int decrementExact(int i3) {
        if (i3 != Integer.MIN_VALUE) {
            return i3 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int incrementExact(int i3) {
        if (i3 != Integer.MAX_VALUE) {
            return i3 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int multiplyExact(int i3, int i4) {
        int i5 = i3 * i4;
        if (i3 == 0 || i4 == 0 || (i5 / i3 == i4 && i5 / i4 == i3)) {
            return i5;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int negateExact(int i3) {
        if (i3 != Integer.MIN_VALUE) {
            return -i3;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int subtractExact(int i3, int i4) {
        int i5 = i3 - i4;
        if ((i3 < 0) != (i4 < 0)) {
            if ((i3 < 0) != (i5 < 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return i5;
    }

    public static int toIntExact(long j2) {
        if (j2 > 2147483647L || j2 < -2147483648L) {
            throw new ArithmeticException("integer overflow");
        }
        return (int) j2;
    }

    public static long addExact(long j2, long j3) {
        long j4 = j2 + j3;
        if ((j2 >= 0) == (j3 >= 0)) {
            if ((j2 >= 0) != (j4 >= 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return j4;
    }

    public static float clamp(float f, float f3, float f4) {
        if (f < f3) {
            return f3;
        }
        return f > f4 ? f4 : f;
    }

    public static long decrementExact(long j2) {
        if (j2 != Long.MIN_VALUE) {
            return j2 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long incrementExact(long j2) {
        if (j2 != Long.MAX_VALUE) {
            return j2 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long negateExact(long j2) {
        if (j2 != Long.MIN_VALUE) {
            return -j2;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long subtractExact(long j2, long j3) {
        long j4 = j2 - j3;
        if ((j2 < 0) != (j3 < 0)) {
            if ((j2 < 0) != (j4 < 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return j4;
    }

    public static int clamp(int i3, int i4, int i5) {
        if (i3 < i4) {
            return i4;
        }
        return i3 > i5 ? i5 : i3;
    }

    public static long multiplyExact(long j2, long j3) {
        long j4 = j2 * j3;
        if (j2 == 0 || j3 == 0 || (j4 / j2 == j3 && j4 / j3 == j2)) {
            return j4;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long clamp(long j2, long j3, long j4) {
        if (j2 < j3) {
            return j3;
        }
        return j2 > j4 ? j4 : j2;
    }
}
