package androidx.core.content.res;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
final class GrowingArrayUtils {
    private GrowingArrayUtils() {
    }

    public static <T> T[] append(T[] tArr, int i3, T t2) {
        if (i3 + 1 > tArr.length) {
            Object[] objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i3));
            System.arraycopy(tArr, 0, objArr, 0, i3);
            tArr = (T[]) objArr;
        }
        tArr[i3] = t2;
        return tArr;
    }

    public static int growSize(int i3) {
        if (i3 <= 4) {
            return 8;
        }
        return i3 * 2;
    }

    public static <T> T[] insert(T[] tArr, int i3, int i4, T t2) {
        if (i3 + 1 <= tArr.length) {
            System.arraycopy(tArr, i4, tArr, i4 + 1, i3 - i4);
            tArr[i4] = t2;
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i3)));
        System.arraycopy(tArr, 0, tArr2, 0, i4);
        tArr2[i4] = t2;
        System.arraycopy(tArr, i4, tArr2, i4 + 1, tArr.length - i4);
        return tArr2;
    }

    public static int[] append(int[] iArr, int i3, int i4) {
        if (i3 + 1 > iArr.length) {
            int[] iArr2 = new int[growSize(i3)];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            iArr = iArr2;
        }
        iArr[i3] = i4;
        return iArr;
    }

    public static int[] insert(int[] iArr, int i3, int i4, int i5) {
        if (i3 + 1 <= iArr.length) {
            System.arraycopy(iArr, i4, iArr, i4 + 1, i3 - i4);
            iArr[i4] = i5;
            return iArr;
        }
        int[] iArr2 = new int[growSize(i3)];
        System.arraycopy(iArr, 0, iArr2, 0, i4);
        iArr2[i4] = i5;
        System.arraycopy(iArr, i4, iArr2, i4 + 1, iArr.length - i4);
        return iArr2;
    }

    public static long[] append(long[] jArr, int i3, long j2) {
        if (i3 + 1 > jArr.length) {
            long[] jArr2 = new long[growSize(i3)];
            System.arraycopy(jArr, 0, jArr2, 0, i3);
            jArr = jArr2;
        }
        jArr[i3] = j2;
        return jArr;
    }

    public static boolean[] append(boolean[] zArr, int i3, boolean z2) {
        if (i3 + 1 > zArr.length) {
            boolean[] zArr2 = new boolean[growSize(i3)];
            System.arraycopy(zArr, 0, zArr2, 0, i3);
            zArr = zArr2;
        }
        zArr[i3] = z2;
        return zArr;
    }

    public static long[] insert(long[] jArr, int i3, int i4, long j2) {
        if (i3 + 1 <= jArr.length) {
            System.arraycopy(jArr, i4, jArr, i4 + 1, i3 - i4);
            jArr[i4] = j2;
            return jArr;
        }
        long[] jArr2 = new long[growSize(i3)];
        System.arraycopy(jArr, 0, jArr2, 0, i4);
        jArr2[i4] = j2;
        System.arraycopy(jArr, i4, jArr2, i4 + 1, jArr.length - i4);
        return jArr2;
    }

    public static boolean[] insert(boolean[] zArr, int i3, int i4, boolean z2) {
        if (i3 + 1 <= zArr.length) {
            System.arraycopy(zArr, i4, zArr, i4 + 1, i3 - i4);
            zArr[i4] = z2;
            return zArr;
        }
        boolean[] zArr2 = new boolean[growSize(i3)];
        System.arraycopy(zArr, 0, zArr2, 0, i4);
        zArr2[i4] = z2;
        System.arraycopy(zArr, i4, zArr2, i4 + 1, zArr.length - i4);
        return zArr2;
    }
}
