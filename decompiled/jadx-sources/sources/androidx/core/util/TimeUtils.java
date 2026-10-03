package androidx.core.util;

import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private TimeUtils() {
    }

    private static int accumField(int i3, int i4, boolean z2, int i5) {
        if (i3 > 99 || (z2 && i5 >= 3)) {
            return i4 + 3;
        }
        if (i3 > 9 || (z2 && i5 >= 2)) {
            return i4 + 2;
        }
        if (z2 || i3 > 0) {
            return i4 + 1;
        }
        return 0;
    }

    public static void formatDuration(long j2, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j2, 0));
        }
    }

    private static int formatDurationLocked(long j2, int i3) {
        char c3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j3 = j2;
        if (sFormatStr.length < i3) {
            sFormatStr = new char[i3];
        }
        char[] cArr = sFormatStr;
        if (j3 == 0) {
            int i8 = i3 - 1;
            while (i8 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j3 > 0) {
            c3 = '+';
        } else {
            j3 = -j3;
            c3 = '-';
        }
        int i9 = (int) (j3 % 1000);
        int iFloor = (int) Math.floor(j3 / 1000);
        if (iFloor > SECONDS_PER_DAY) {
            i4 = iFloor / SECONDS_PER_DAY;
            iFloor -= SECONDS_PER_DAY * i4;
        } else {
            i4 = 0;
        }
        if (iFloor > SECONDS_PER_HOUR) {
            i5 = iFloor / SECONDS_PER_HOUR;
            iFloor -= i5 * SECONDS_PER_HOUR;
        } else {
            i5 = 0;
        }
        if (iFloor > SECONDS_PER_MINUTE) {
            int i10 = iFloor / SECONDS_PER_MINUTE;
            iFloor -= i10 * SECONDS_PER_MINUTE;
            i6 = i10;
        } else {
            i6 = 0;
        }
        if (i3 != 0) {
            int iAccumField = accumField(i4, 1, false, 0);
            int iAccumField2 = iAccumField + accumField(i5, 1, iAccumField > 0, 2);
            int iAccumField3 = iAccumField2 + accumField(i6, 1, iAccumField2 > 0, 2);
            int iAccumField4 = iAccumField3 + accumField(iFloor, 1, iAccumField3 > 0, 2);
            i7 = 0;
            for (int iAccumField5 = accumField(i9, 2, true, iAccumField4 > 0 ? 3 : 0) + 1 + iAccumField4; iAccumField5 < i3; iAccumField5++) {
                cArr[i7] = ' ';
                i7++;
            }
        } else {
            i7 = 0;
        }
        cArr[i7] = c3;
        int i11 = i7 + 1;
        boolean z2 = i3 != 0;
        int iPrintField = printField(cArr, i4, 'd', i11, false, 0);
        int iPrintField2 = printField(cArr, i5, 'h', iPrintField, iPrintField != i11, z2 ? 2 : 0);
        int iPrintField3 = printField(cArr, i6, 'm', iPrintField2, iPrintField2 != i11, z2 ? 2 : 0);
        int iPrintField4 = printField(cArr, iFloor, 's', iPrintField3, iPrintField3 != i11, z2 ? 2 : 0);
        int iPrintField5 = printField(cArr, i9, 'm', iPrintField4, true, (!z2 || iPrintField4 == i11) ? 0 : 3);
        cArr[iPrintField5] = 's';
        return iPrintField5 + 1;
    }

    private static int printField(char[] cArr, int i3, char c3, int i4, boolean z2, int i5) {
        int i6;
        if (!z2 && i3 <= 0) {
            return i4;
        }
        if ((!z2 || i5 < 3) && i3 <= 99) {
            i6 = i4;
        } else {
            int i7 = i3 / 100;
            cArr[i4] = (char) (i7 + 48);
            i6 = i4 + 1;
            i3 -= i7 * 100;
        }
        if ((z2 && i5 >= 2) || i3 > 9 || i4 != i6) {
            int i8 = i3 / 10;
            cArr[i6] = (char) (i8 + 48);
            i6++;
            i3 -= i8 * 10;
        }
        cArr[i6] = (char) (i3 + 48);
        cArr[i6 + 1] = c3;
        return i6 + 2;
    }

    public static void formatDuration(long j2, PrintWriter printWriter, int i3) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j2, i3)));
        }
    }

    public static void formatDuration(long j2, PrintWriter printWriter) {
        formatDuration(j2, printWriter, 0);
    }

    public static void formatDuration(long j2, long j3, PrintWriter printWriter) {
        if (j2 == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j2 - j3, printWriter, 0);
        }
    }
}
