package kotlin.time;

import E.b;
import com.minhub.gamehub.hub.catalog.h;
import java.io.IOException;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.unsigned.a;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\f\n\u0002\u0010\u0015\n\u0002\b\u0006\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0003\u001a'\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a'\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0015H\u0000\u001a\u0014\u0010'\u001a\u00020\u0015*\u00020\u00152\u0006\u0010%\u001a\u00020\u0001H\u0002\u001a\u0014\u0010-\u001a\u00020\u0012*\u00020\u00102\u0006\u0010.\u001a\u00020\u0015H\u0002\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0000\u0010\u0005\"\u001f\u0010\u0006\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0006\u0010\u0005\"\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0015X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010*\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010+\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"isDistantPast", "", "Lkotlin/time/Instant;", "isDistantPast$annotations", "(Lkotlin/time/Instant;)V", "(Lkotlin/time/Instant;)Z", "isDistantFuture", "isDistantFuture$annotations", "DISTANT_PAST_SECONDS", "", "DISTANT_FUTURE_SECONDS", "MIN_SECOND", "MAX_SECOND", "parseIso", "Lkotlin/time/InstantParseResult;", "isoString", "", "formatIso", "", "instant", "DAYS_PER_CYCLE", "", "DAYS_0000_TO_1970", "safeAddOrElse", "a", "b", "action", "Lkotlin/Function0;", "", "safeMultiplyOrElse", "SECONDS_PER_HOUR", "SECONDS_PER_MINUTE", "HOURS_PER_DAY", "SECONDS_PER_DAY", "NANOS_PER_SECOND", "NANOS_PER_MILLI", "MILLIS_PER_SECOND", "isLeapYear", "year", "monthLength", "POWERS_OF_TEN", "", "asciiDigitPositionsInIsoStringAfterYear", "colonsInIsoOffsetString", "asciiDigitsInIsoOffsetString", "truncateForErrorMessage", "maxLength", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,864:1\n1#2:865\n479#3,28:866\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n689#1:866,28\n*E\n"})
public final class InstantKt {
    private static final int DAYS_0000_TO_1970 = 719528;
    private static final int DAYS_PER_CYCLE = 146097;
    private static final long DISTANT_FUTURE_SECONDS = 3093527980800L;
    private static final long DISTANT_PAST_SECONDS = -3217862419201L;
    private static final int HOURS_PER_DAY = 24;
    private static final long MAX_SECOND = 31556889864403199L;
    private static final int MILLIS_PER_SECOND = 1000;
    private static final long MIN_SECOND = -31557014167219200L;
    private static final int NANOS_PER_MILLI = 1000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    public static final int NANOS_PER_SECOND = 1000000000;
    private static final int[] POWERS_OF_TEN = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, NANOS_PER_SECOND};
    private static final int[] asciiDigitPositionsInIsoStringAfterYear = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};
    private static final int[] colonsInIsoOffsetString = {3, 6};
    private static final int[] asciiDigitsInIsoOffsetString = {1, 2, 4, 5, 7, 8};

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final String formatIso(Instant instant) throws IOException {
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        UnboundLocalDateTime unboundLocalDateTimeFromInstant = UnboundLocalDateTime.INSTANCE.fromInstant(instant);
        int year = unboundLocalDateTimeFromInstant.getYear();
        int i3 = 0;
        if (Math.abs(year) < 1000) {
            StringBuilder sb2 = new StringBuilder();
            if (year >= 0) {
                sb2.append(year + 10000);
                Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(0), "deleteCharAt(...)");
            } else {
                sb2.append(year - 10000);
                Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(1), "deleteCharAt(...)");
            }
            sb.append((CharSequence) sb2);
        } else {
            if (year >= 10000) {
                sb.append('+');
            }
            sb.append(year);
        }
        sb.append('-');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getMonth());
        sb.append('-');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getDay());
        sb.append('T');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getHour());
        sb.append(':');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getMinute());
        sb.append(':');
        formatIso$lambda$13$appendTwoDigits(sb, sb, unboundLocalDateTimeFromInstant.getSecond());
        if (unboundLocalDateTimeFromInstant.getNanosecond() != 0) {
            sb.append('.');
            while (true) {
                int nanosecond = unboundLocalDateTimeFromInstant.getNanosecond();
                iArr = POWERS_OF_TEN;
                int i4 = i3 + 1;
                if (nanosecond % iArr[i4] != 0) {
                    break;
                }
                i3 = i4;
            }
            int i5 = i3 - (i3 % 3);
            String strValueOf = String.valueOf((unboundLocalDateTimeFromInstant.getNanosecond() / iArr[i5]) + iArr[9 - i5]);
            Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = strValueOf.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            sb.append(strSubstring);
        }
        sb.append('Z');
        return sb.toString();
    }

    private static final void formatIso$lambda$13$appendTwoDigits(Appendable appendable, StringBuilder sb, int i3) throws IOException {
        if (i3 < 10) {
            appendable.append('0');
        }
        sb.append(i3);
    }

    private static final boolean isDistantFuture(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        return instant.compareTo(Instant.INSTANCE.getDISTANT_FUTURE()) >= 0;
    }

    private static final boolean isDistantPast(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        return instant.compareTo(Instant.INSTANCE.getDISTANT_PAST()) <= 0;
    }

    public static final boolean isLeapYear(int i3) {
        if ((i3 & 3) == 0) {
            return i3 % 100 != 0 || i3 % 400 == 0;
        }
        return false;
    }

    private static final int monthLength(int i3, boolean z2) {
        if (i3 != 2) {
            return (i3 == 4 || i3 == 6 || i3 == 9 || i3 == 11) ? 30 : 31;
        }
        return z2 ? 29 : 28;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final InstantParseResult parseIso(CharSequence charSequence) {
        int i3;
        int i4;
        int i5;
        int i6;
        char cCharAt;
        char cCharAt2;
        if (charSequence.length() == 0) {
            return new InstantParseResult.Failure("An empty string is not a valid Instant", charSequence);
        }
        char cCharAt3 = charSequence.charAt(0);
        if (cCharAt3 == '+' || cCharAt3 == '-') {
            i3 = 1;
        } else {
            i3 = 0;
            cCharAt3 = ' ';
        }
        int iCharAt = 0;
        int i7 = i3;
        while (i7 < charSequence.length() && '0' <= (cCharAt2 = charSequence.charAt(i7)) && cCharAt2 < ':') {
            iCharAt = (iCharAt * 10) + (charSequence.charAt(i7) - '0');
            i7++;
        }
        int i8 = i7 - i3;
        if (i8 > 10) {
            return parseIso$parseFailure(charSequence, b.j(i8, "Expected at most 10 digits for the year number, got ", " digits"));
        }
        if (i8 == 10 && Intrinsics.compare((int) charSequence.charAt(i3), 50) >= 0) {
            return parseIso$parseFailure(charSequence, b.j(i8, "Expected at most 9 digits for the year number or year 1000000000, got ", " digits"));
        }
        if (i8 < 4) {
            return parseIso$parseFailure(charSequence, b.j(i8, "The year number must be padded to 4 digits, got ", " digits"));
        }
        if (cCharAt3 == '+' && i8 == 4) {
            return parseIso$parseFailure(charSequence, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
        }
        if (cCharAt3 == ' ' && i8 != 4) {
            return parseIso$parseFailure(charSequence, "A '+' or '-' sign is required for year numbers longer than 4 digits");
        }
        if (cCharAt3 == '-') {
            iCharAt = -iCharAt;
        }
        int i9 = iCharAt;
        int i10 = i7 + 16;
        if (charSequence.length() < i10) {
            return parseIso$parseFailure(charSequence, "The input string is too short");
        }
        InstantParseResult.Failure iso$expect = parseIso$expect(charSequence, "'-'", i7, new h(6));
        if (iso$expect != null) {
            return iso$expect;
        }
        InstantParseResult.Failure iso$expect2 = parseIso$expect(charSequence, "'-'", i7 + 3, new h(7));
        if (iso$expect2 != null) {
            return iso$expect2;
        }
        InstantParseResult.Failure iso$expect3 = parseIso$expect(charSequence, "'T' or 't'", i7 + 6, new h(8));
        if (iso$expect3 != null) {
            return iso$expect3;
        }
        InstantParseResult.Failure iso$expect4 = parseIso$expect(charSequence, "':'", i7 + 9, new h(9));
        if (iso$expect4 != null) {
            return iso$expect4;
        }
        InstantParseResult.Failure iso$expect5 = parseIso$expect(charSequence, "':'", i7 + 12, new h(10));
        if (iso$expect5 != null) {
            return iso$expect5;
        }
        for (int i11 : asciiDigitPositionsInIsoStringAfterYear) {
            InstantParseResult.Failure iso$expect6 = parseIso$expect(charSequence, "an ASCII digit", i11 + i7, new h(11));
            if (iso$expect6 != null) {
                return iso$expect6;
            }
        }
        int iso$twoDigitNumber = parseIso$twoDigitNumber(charSequence, i7 + 1);
        int iso$twoDigitNumber2 = parseIso$twoDigitNumber(charSequence, i7 + 4);
        int iso$twoDigitNumber3 = parseIso$twoDigitNumber(charSequence, i7 + 7);
        int iso$twoDigitNumber4 = parseIso$twoDigitNumber(charSequence, i7 + 10);
        int iso$twoDigitNumber5 = parseIso$twoDigitNumber(charSequence, i7 + 13);
        int i12 = i7 + 15;
        if (charSequence.charAt(i12) == '.') {
            i12 = i10;
            int iCharAt2 = 0;
            while (i12 < charSequence.length() && '0' <= (cCharAt = charSequence.charAt(i12)) && cCharAt < ':') {
                iCharAt2 = (iCharAt2 * 10) + (charSequence.charAt(i12) - '0');
                i12++;
            }
            int i13 = i12 - i10;
            if (1 > i13 || i13 >= 10) {
                return parseIso$parseFailure(charSequence, b.j(i13, "1..9 digits are supported for the fraction of the second, got ", " digits"));
            }
            i4 = iCharAt2 * POWERS_OF_TEN[9 - i13];
        } else {
            i4 = 0;
        }
        if (i12 >= charSequence.length()) {
            return parseIso$parseFailure(charSequence, "The UTC offset at the end of the string is missing");
        }
        char cCharAt4 = charSequence.charAt(i12);
        if (cCharAt4 == '+' || cCharAt4 == '-') {
            int length = charSequence.length() - i12;
            if (length > 9) {
                return parseIso$parseFailure(charSequence, a.i(new StringBuilder("The UTC offset string \""), truncateForErrorMessage(charSequence.subSequence(i12, charSequence.length()).toString(), 16), "\" is too long"));
            }
            if (length % 3 != 0) {
                return parseIso$parseFailure(charSequence, "Invalid UTC offset string \"" + charSequence.subSequence(i12, charSequence.length()).toString() + Typography.quote);
            }
            for (int i14 : colonsInIsoOffsetString) {
                int i15 = i12 + i14;
                if (i15 >= charSequence.length()) {
                    break;
                }
                if (charSequence.charAt(i15) != ':') {
                    StringBuilder sbO = b.o(i15, "Expected ':' at index ", ", got '");
                    sbO.append(charSequence.charAt(i15));
                    sbO.append('\'');
                    return parseIso$parseFailure(charSequence, sbO.toString());
                }
            }
            int[] iArr = asciiDigitsInIsoOffsetString;
            int length2 = iArr.length;
            int i16 = 0;
            while (i16 < length2) {
                int i17 = iArr[i16] + i12;
                if (i17 >= charSequence.length()) {
                    break;
                }
                char cCharAt5 = charSequence.charAt(i17);
                int[] iArr2 = iArr;
                if ('0' > cCharAt5 || cCharAt5 >= ':') {
                    StringBuilder sbO2 = b.o(i17, "Expected an ASCII digit at index ", ", got '");
                    sbO2.append(charSequence.charAt(i17));
                    sbO2.append('\'');
                    return parseIso$parseFailure(charSequence, sbO2.toString());
                }
                i16++;
                iArr = iArr2;
            }
            int iso$twoDigitNumber6 = parseIso$twoDigitNumber(charSequence, i12 + 1);
            i5 = 3;
            int iso$twoDigitNumber7 = length > 3 ? parseIso$twoDigitNumber(charSequence, i12 + 4) : 0;
            int iso$twoDigitNumber8 = length > 6 ? parseIso$twoDigitNumber(charSequence, i12 + 7) : 0;
            if (iso$twoDigitNumber7 > 59) {
                return parseIso$parseFailure(charSequence, b.i(iso$twoDigitNumber7, "Expected offset-minute-of-hour in 0..59, got "));
            }
            if (iso$twoDigitNumber8 > 59) {
                return parseIso$parseFailure(charSequence, b.i(iso$twoDigitNumber8, "Expected offset-second-of-minute in 0..59, got "));
            }
            if (iso$twoDigitNumber6 > 17 && (iso$twoDigitNumber6 != 18 || iso$twoDigitNumber7 != 0 || iso$twoDigitNumber8 != 0)) {
                return parseIso$parseFailure(charSequence, "Expected an offset in -18:00..+18:00, got " + charSequence.subSequence(i12, charSequence.length()).toString());
            }
            i6 = (cCharAt4 == '-' ? -1 : 1) * ((iso$twoDigitNumber7 * SECONDS_PER_MINUTE) + (iso$twoDigitNumber6 * SECONDS_PER_HOUR) + iso$twoDigitNumber8);
        } else {
            if (cCharAt4 != 'Z' && cCharAt4 != 'z') {
                return parseIso$parseFailure(charSequence, "Expected the UTC offset at position " + i12 + ", got '" + cCharAt4 + '\'');
            }
            int i18 = i12 + 1;
            if (charSequence.length() != i18) {
                return parseIso$parseFailure(charSequence, b.i(i18, "Extra text after the instant at position "));
            }
            i6 = 0;
            i5 = 3;
        }
        if (1 > iso$twoDigitNumber || iso$twoDigitNumber >= 13) {
            return parseIso$parseFailure(charSequence, b.i(iso$twoDigitNumber, "Expected a month number in 1..12, got "));
        }
        if (1 > iso$twoDigitNumber2 || iso$twoDigitNumber2 > monthLength(iso$twoDigitNumber, isLeapYear(i9))) {
            StringBuilder sbP = b.p("Expected a valid day-of-month for month ", iso$twoDigitNumber, i9, " of year ", ", got ");
            sbP.append(iso$twoDigitNumber2);
            return parseIso$parseFailure(charSequence, sbP.toString());
        }
        if (iso$twoDigitNumber3 > 23) {
            return parseIso$parseFailure(charSequence, b.i(iso$twoDigitNumber3, "Expected hour in 0..23, got "));
        }
        if (iso$twoDigitNumber4 > 59) {
            return parseIso$parseFailure(charSequence, b.i(iso$twoDigitNumber4, "Expected minute-of-hour in 0..59, got "));
        }
        if (iso$twoDigitNumber5 > 59) {
            return parseIso$parseFailure(charSequence, b.i(iso$twoDigitNumber5, "Expected second-of-minute in 0..59, got "));
        }
        UnboundLocalDateTime unboundLocalDateTime = new UnboundLocalDateTime(i9, iso$twoDigitNumber, iso$twoDigitNumber2, iso$twoDigitNumber3, iso$twoDigitNumber4, iso$twoDigitNumber5, i4);
        long year = unboundLocalDateTime.getYear();
        long j2 = ((long) 365) * year;
        long month = (year >= 0 ? ((year + ((long) 399)) / ((long) 400)) + (((((long) i5) + year) / ((long) 4)) - ((((long) 99) + year) / ((long) 100))) + j2 : j2 - ((year / ((long) (-400))) + ((year / ((long) (-4))) - (year / ((long) (-100)))))) + ((long) (((unboundLocalDateTime.getMonth() * 367) - 362) / 12)) + ((long) (unboundLocalDateTime.getDay() - 1));
        if (unboundLocalDateTime.getMonth() > 2) {
            month = !isLeapYear(unboundLocalDateTime.getYear()) ? month - 2 : (-1) + month;
        }
        return new InstantParseResult.Success((((month - ((long) DAYS_0000_TO_1970)) * ((long) SECONDS_PER_DAY)) + ((long) (((unboundLocalDateTime.getMinute() * SECONDS_PER_MINUTE) + (unboundLocalDateTime.getHour() * SECONDS_PER_HOUR)) + unboundLocalDateTime.getSecond()))) - ((long) i6), unboundLocalDateTime.getNanosecond());
    }

    private static final InstantParseResult.Failure parseIso$expect(CharSequence charSequence, String str, int i3, Function1<? super Character, Boolean> function1) {
        char cCharAt = charSequence.charAt(i3);
        if (function1.invoke(Character.valueOf(cCharAt)).booleanValue()) {
            return null;
        }
        return parseIso$parseFailure(charSequence, "Expected " + str + ", but got '" + cCharAt + "' at position " + i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$0(char c3) {
        return c3 == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$10(char c3) {
        return '0' <= c3 && c3 < ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$2(char c3) {
        return c3 == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$4(char c3) {
        return c3 == 'T' || c3 == 't';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$6(char c3) {
        return c3 == ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$8(char c3) {
        return c3 == ':';
    }

    private static final InstantParseResult.Failure parseIso$parseFailure(CharSequence charSequence, String str) {
        return new InstantParseResult.Failure(str + " when parsing an Instant from \"" + truncateForErrorMessage(charSequence, 64) + Typography.quote, charSequence);
    }

    private static final int parseIso$twoDigitNumber(CharSequence charSequence, int i3) {
        return (charSequence.charAt(i3 + 1) - '0') + ((charSequence.charAt(i3) - '0') * 10);
    }

    private static final long safeAddOrElse(long j2, long j3, Function0 function0) {
        long j4 = j2 + j3;
        if ((j2 ^ j4) >= 0 || (j2 ^ j3) < 0) {
            return j4;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    private static final long safeMultiplyOrElse(long j2, long j3, Function0 function0) {
        if (j3 == 1) {
            return j2;
        }
        if (j2 == 1) {
            return j3;
        }
        if (j2 == 0 || j3 == 0) {
            return 0L;
        }
        long j4 = j2 * j3;
        if (j4 / j3 == j2 && ((j2 != Long.MIN_VALUE || j3 != -1) && (j3 != Long.MIN_VALUE || j2 != -1))) {
            return j4;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage(CharSequence charSequence, int i3) {
        if (charSequence.length() <= i3) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i3).toString() + "...";
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantFuture$annotations(Instant instant) {
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantPast$annotations(Instant instant) {
    }
}
