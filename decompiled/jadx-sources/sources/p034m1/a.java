package p034m1;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeZone f5150a = TimeZone.getTimeZone("UTC");

    public static boolean a(String str, int i3, char c3) {
        return i3 < str.length() && str.charAt(i3) == c3;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0202  */
    /* JADX WARN: Code duplicated, block: B:103:0x0208  */
    /* JADX WARN: Code duplicated, block: B:66:0x00fa A[Catch: IllegalArgumentException -> 0x00bc, NumberFormatException -> 0x00bf, IndexOutOfBoundsException -> 0x00c2, TRY_LEAVE, TryCatch #2 {IndexOutOfBoundsException -> 0x00c2, NumberFormatException -> 0x00bf, IllegalArgumentException -> 0x00bc, blocks: (B:3:0x0004, B:5:0x0017, B:6:0x0019, B:8:0x0025, B:9:0x0027, B:11:0x0037, B:13:0x003d, B:17:0x0055, B:19:0x0065, B:20:0x0067, B:22:0x0073, B:23:0x0076, B:25:0x007c, B:29:0x0086, B:34:0x0096, B:36:0x009e, B:37:0x00a2, B:39:0x00a8, B:44:0x00b5, B:53:0x00c9, B:64:0x00f4, B:66:0x00fa, B:92:0x01ac, B:74:0x010c, B:75:0x0127, B:76:0x0128, B:80:0x0145, B:82:0x0152, B:85:0x015b, B:87:0x017a, B:90:0x0189, B:91:0x01ab, B:79:0x0134, B:94:0x01dd, B:95:0x01e4, B:57:0x00d9, B:58:0x00dc, B:52:0x00c5), top: B:106:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0102  */
    /* JADX WARN: Code duplicated, block: B:70:0x0105  */
    /* JADX WARN: Code duplicated, block: B:78:0x0133  */
    /* JADX WARN: Code duplicated, block: B:79:0x0134 A[Catch: IllegalArgumentException -> 0x00bc, NumberFormatException -> 0x00bf, IndexOutOfBoundsException -> 0x00c2, TryCatch #2 {IndexOutOfBoundsException -> 0x00c2, NumberFormatException -> 0x00bf, IllegalArgumentException -> 0x00bc, blocks: (B:3:0x0004, B:5:0x0017, B:6:0x0019, B:8:0x0025, B:9:0x0027, B:11:0x0037, B:13:0x003d, B:17:0x0055, B:19:0x0065, B:20:0x0067, B:22:0x0073, B:23:0x0076, B:25:0x007c, B:29:0x0086, B:34:0x0096, B:36:0x009e, B:37:0x00a2, B:39:0x00a8, B:44:0x00b5, B:53:0x00c9, B:64:0x00f4, B:66:0x00fa, B:92:0x01ac, B:74:0x010c, B:75:0x0127, B:76:0x0128, B:80:0x0145, B:82:0x0152, B:85:0x015b, B:87:0x017a, B:90:0x0189, B:91:0x01ab, B:79:0x0134, B:94:0x01dd, B:95:0x01e4, B:57:0x00d9, B:58:0x00dc, B:52:0x00c5), top: B:106:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01dd A[Catch: IllegalArgumentException -> 0x00bc, NumberFormatException -> 0x00bf, IndexOutOfBoundsException -> 0x00c2, TryCatch #2 {IndexOutOfBoundsException -> 0x00c2, NumberFormatException -> 0x00bf, IllegalArgumentException -> 0x00bc, blocks: (B:3:0x0004, B:5:0x0017, B:6:0x0019, B:8:0x0025, B:9:0x0027, B:11:0x0037, B:13:0x003d, B:17:0x0055, B:19:0x0065, B:20:0x0067, B:22:0x0073, B:23:0x0076, B:25:0x007c, B:29:0x0086, B:34:0x0096, B:36:0x009e, B:37:0x00a2, B:39:0x00a8, B:44:0x00b5, B:53:0x00c9, B:64:0x00f4, B:66:0x00fa, B:92:0x01ac, B:74:0x010c, B:75:0x0127, B:76:0x0128, B:80:0x0145, B:82:0x0152, B:85:0x015b, B:87:0x017a, B:90:0x0189, B:91:0x01ab, B:79:0x0134, B:94:0x01dd, B:95:0x01e4, B:57:0x00d9, B:58:0x00dc, B:52:0x00c5), top: B:106:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:98:0x01e9  */
    /* JADX WARN: Instruction removed from duplicated block: B:103:0x0208, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:79:0x0134, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:98:0x01e9, please report this as an issue */
    public static Date b(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i3;
        int i4;
        int iC;
        int iC2;
        char cCharAt;
        TimeZone timeZone;
        String strSubstring;
        int length;
        String str3;
        String id;
        char cCharAt2;
        int length2;
        try {
            int index = parsePosition.getIndex();
            int i5 = index + 4;
            int iC3 = c(str, index, i5);
            if (a(str, i5, '-')) {
                i5 = index + 5;
            }
            int i6 = i5 + 2;
            int iC4 = c(str, i5, i6);
            if (a(str, i6, '-')) {
                i6 = i5 + 3;
            }
            int i7 = i6 + 2;
            int iC5 = c(str, i6, i7);
            boolean zA = a(str, i7, 'T');
            if (!zA && str.length() <= i7) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(iC3, iC4 - 1, iC5);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i7);
                return gregorianCalendar.getTime();
            }
            if (zA) {
                int i8 = i6 + 5;
                int iC6 = c(str, i6 + 3, i8);
                if (a(str, i8, ':')) {
                    i8 = i6 + 6;
                }
                int i9 = i8 + 2;
                int iC7 = c(str, i8, i9);
                if (a(str, i9, ':')) {
                    i9 = i8 + 3;
                }
                if (str.length() <= i9 || (cCharAt2 = str.charAt(i9)) == 'Z' || cCharAt2 == '+' || cCharAt2 == '-') {
                    i7 = i9;
                    i3 = iC6;
                    i4 = iC7;
                } else {
                    int i10 = i9 + 2;
                    iC2 = c(str, i9, i10);
                    if (iC2 > 59 && iC2 < 63) {
                        iC2 = 59;
                    }
                    if (a(str, i10, '.')) {
                        int i11 = i9 + 3;
                        int i12 = i9 + 4;
                        while (true) {
                            if (i12 >= str.length()) {
                                length2 = str.length();
                                break;
                            }
                            char cCharAt3 = str.charAt(i12);
                            if (cCharAt3 >= '0' && cCharAt3 <= '9') {
                                i12++;
                            }
                            length2 = i12;
                            break;
                        }
                        int iMin = Math.min(length2, i9 + 6);
                        iC = c(str, i11, iMin);
                        int i13 = iMin - i11;
                        if (i13 == 1) {
                            iC *= 100;
                        } else if (i13 == 2) {
                            iC *= 10;
                        }
                        i3 = iC6;
                        i7 = length2;
                        i4 = iC7;
                    } else {
                        i3 = iC6;
                        i7 = i10;
                        i4 = iC7;
                        iC = 0;
                    }
                }
                if (str.length() > i7) {
                    throw new IllegalArgumentException("No time zone indicator");
                }
                cCharAt = str.charAt(i7);
                timeZone = f5150a;
                if (cCharAt == 'Z') {
                    length = i7 + 1;
                } else {
                    if (cCharAt == '+' && cCharAt != '-') {
                        throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                    }
                    strSubstring = str.substring(i7);
                    if (strSubstring.length() >= 5) {
                        strSubstring = strSubstring + "00";
                    }
                    length = i7 + strSubstring.length();
                    if (!"+0000".equals(strSubstring) && !"+00:00".equals(strSubstring)) {
                        str3 = "GMT" + strSubstring;
                        timeZone = TimeZone.getTimeZone(str3);
                        id = timeZone.getID();
                        if (!id.equals(str3) && !id.replace(":", "").equals(str3)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone.getID());
                        }
                    }
                }
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                gregorianCalendar2.setLenient(false);
                gregorianCalendar2.set(1, iC3);
                gregorianCalendar2.set(2, iC4 - 1);
                gregorianCalendar2.set(5, iC5);
                gregorianCalendar2.set(11, i3);
                gregorianCalendar2.set(12, i4);
                gregorianCalendar2.set(13, iC2);
                gregorianCalendar2.set(14, iC);
                parsePosition.setIndex(length);
                return gregorianCalendar2.getTime();
            }
            i3 = 0;
            i4 = 0;
            iC = 0;
            iC2 = 0;
            if (str.length() > i7) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            cCharAt = str.charAt(i7);
            timeZone = f5150a;
            if (cCharAt == 'Z') {
                length = i7 + 1;
            } else {
                if (cCharAt == '+') {
                }
                strSubstring = str.substring(i7);
                if (strSubstring.length() >= 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i7 + strSubstring.length();
                if (!"+0000".equals(strSubstring)) {
                    str3 = "GMT" + strSubstring;
                    timeZone = TimeZone.getTimeZone(str3);
                    id = timeZone.getID();
                    if (!id.equals(str3)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone.getID());
                    }
                }
            }
            GregorianCalendar gregorianCalendar3 = new GregorianCalendar(timeZone);
            gregorianCalendar3.setLenient(false);
            gregorianCalendar3.set(1, iC3);
            gregorianCalendar3.set(2, iC4 - 1);
            gregorianCalendar3.set(5, iC5);
            gregorianCalendar3.set(11, i3);
            gregorianCalendar3.set(12, i4);
            gregorianCalendar3.set(13, iC2);
            gregorianCalendar3.set(14, iC);
            parsePosition.setIndex(length);
            return gregorianCalendar3.getTime();
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + Typography.quote;
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (NumberFormatException e3) {
            e = e3;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + Typography.quote;
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException2 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        } catch (IllegalArgumentException e4) {
            e = e4;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + Typography.quote;
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException3 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException3.initCause(e);
            throw parseException3;
        }
    }

    public static int c(String str, int i3, int i4) {
        int i5;
        int i6;
        if (i3 < 0 || i4 > str.length() || i3 > i4) {
            throw new NumberFormatException(str);
        }
        if (i3 < i4) {
            i6 = i3 + 1;
            int iDigit = Character.digit(str.charAt(i3), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i3, i4));
            }
            i5 = -iDigit;
        } else {
            i5 = 0;
            i6 = i3;
        }
        while (i6 < i4) {
            int i7 = i6 + 1;
            int iDigit2 = Character.digit(str.charAt(i6), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i3, i4));
            }
            i5 = (i5 * 10) - iDigit2;
            i6 = i7;
        }
        return -i5;
    }
}
