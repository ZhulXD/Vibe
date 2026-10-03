package kotlin.text;

import java.util.Arrays;
import kotlin.ExperimentalStdlibApi;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0019\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0001\n\u0000\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010\u000b\u001a\u00020\u0001*\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a,\u0010\u0012\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a,\u0010\u0016\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a,\u0010\u0017\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a,\u0010\u0018\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u001a<\u0010\u0019\u001a\u00020\u0010*\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0002\u001a,\u0010\u0019\u001a\u00020\u0010*\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0002\u001a(\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0002\u001a@\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0000\u001a\u0010\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*H\u0002\u001a\u0016\u0010+\u001a\u00020\f*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010+\u001a\u00020\f*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002\u001a&\u0010,\u001a\u0004\u0018\u00010\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a&\u0010-\u001a\u0004\u0018\u00010\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a&\u0010.\u001a\u0004\u0018\u00010\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a$\u0010/\u001a\u00020\f*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a\u0014\u00100\u001a\u000201*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0002\u001a@\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0000\u001a \u00104\u001a\u00020*2\u0006\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u0010H\u0002\u001a \u00108\u001a\u00020*2\u0006\u00104\u001a\u00020*2\u0006\u00105\u001a\u00020*2\u0006\u00107\u001a\u00020\u0010H\u0002\u001a\u001c\u00109\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u0002012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010:\u001a\u000201*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010:\u001a\u000201*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020;2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010<\u001a\u00020;*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010<\u001a\u00020;*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010=\u001a\u00020\u0010*\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010=\u001a\u00020\u0010*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0016\u0010\u000b\u001a\u00020\u0001*\u00020*2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0016\u0010>\u001a\u00020**\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a*\u0010>\u001a\u00020**\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0000\u001a$\u0010?\u001a\u00020\u0001*\u00020*2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020\u00012\u0006\u0010C\u001a\u00020\u0010H\u0002\u001a\u001c\u0010D\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0002\u001a,\u0010E\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a,\u0010G\u001a\u00020**\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a<\u0010H\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010J\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u00012\u0006\u0010L\u001a\u00020M2\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a$\u0010N\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010F\u001a\u00020\u0010H\u0002\u001a\u001c\u0010O\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a\u001c\u0010P\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a\u001c\u0010Q\u001a\u00020**\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u001a5\u0010R\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010S\u001a\u00020\u00012\u0006\u0010L\u001a\u00020M2\u0006\u0010T\u001a\u00020\u0001H\u0082\b\u001a\u0015\u0010U\u001a\u00020\u0010*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0082\b\u001a\u0015\u0010V\u001a\u00020**\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0082\b\u001a,\u0010W\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010X\u001a\u00020\u00012\u0006\u0010Y\u001a\u00020\u0010H\u0002\u001a,\u0010Z\u001a\u00020I*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010S\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\u0001H\u0002\u001a,\u0010[\u001a\u00020I*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010J\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\\\u001a\u00020]*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006^"}, d2 = {"LOWER_CASE_HEX_DIGITS", "", "UPPER_CASE_HEX_DIGITS", "BYTE_TO_LOWER_CASE_HEX_DIGITS", "", "getBYTE_TO_LOWER_CASE_HEX_DIGITS", "()[I", "BYTE_TO_UPPER_CASE_HEX_DIGITS", "HEX_DIGITS_TO_DECIMAL", "HEX_DIGITS_TO_LONG_DECIMAL", "", "toHexString", "", "format", "Lkotlin/text/HexFormat;", "startIndex", "", "endIndex", "toHexStringNoLineAndGroupSeparator", "bytesFormat", "Lkotlin/text/HexFormat$BytesHexFormat;", "byteToDigits", "toHexStringShortByteSeparatorNoPrefixAndSuffix", "toHexStringNoLineAndGroupSeparatorSlowPath", "toHexStringSlowPath", "formatByteAt", "index", "bytePrefix", "byteSuffix", "destination", "", "destinationOffset", "formattedStringLength", "numberOfBytes", "byteSeparatorLength", "bytePrefixLength", "byteSuffixLength", "bytesPerLine", "bytesPerGroup", "groupSeparatorLength", "checkFormatLength", "formatLength", "", "hexToByteArray", "hexToByteArrayNoLineAndGroupSeparator", "hexToByteArrayShortByteSeparatorNoPrefixAndSuffix", "hexToByteArrayNoLineAndGroupSeparatorSlowPath", "hexToByteArraySlowPath", "parseByteAt", "", "parsedByteArrayMaxSize", "stringLength", "charsPerSet", "charsPerElement", "elementsPerSet", "elementSeparatorLength", "wholeElementsPerSet", "checkNewLineAt", "hexToByte", "", "hexToShort", "hexToInt", "hexToLong", "toHexStringImpl", "numberFormat", "Lkotlin/text/HexFormat$NumberHexFormat;", "digits", "bits", "toCharArrayIfNotEmpty", "hexToIntImpl", "typeHexLength", "hexToLongImpl", "checkPrefixSuffixNumberOfDigits", "", "prefix", "suffix", "ignoreCase", "", "checkNumberOfDigits", "checkZeroDigits", "parseInt", "parseLong", "checkContainsAt", "part", "partName", "decimalFromHexDigitAt", "longDecimalFromHexDigitAt", "throwInvalidNumberOfDigits", "specifier", "expected", "throwNotContainedAt", "throwInvalidPrefixSuffix", "throwInvalidDigitAt", "", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1237:1\n1186#1,7:1239\n1186#1,7:1246\n1186#1,7:1253\n1186#1,7:1260\n1186#1,7:1267\n1186#1,7:1274\n1186#1,7:1281\n1186#1,7:1288\n1197#1,5:1295\n1197#1,5:1300\n1186#1,7:1305\n1186#1,7:1312\n1197#1,5:1319\n1206#1,5:1324\n1#2:1238\n1188#3,3:1329\n1188#3,3:1332\n1188#3,3:1335\n1188#3,3:1338\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n450#1:1239,7\n482#1:1246,7\n486#1:1253,7\n489#1:1260,7\n529#1:1267,7\n532#1:1274,7\n537#1:1281,7\n542#1:1288,7\n549#1:1295,5\n550#1:1300,5\n1141#1:1305,7\n1143#1:1312,7\n1171#1:1319,5\n1179#1:1324,5\n42#1:1329,3\n43#1:1332,3\n54#1:1335,3\n55#1:1338,3\n*E\n"})
public final class HexExtensionsKt {
    private static final int[] BYTE_TO_LOWER_CASE_HEX_DIGITS;
    private static final int[] BYTE_TO_UPPER_CASE_HEX_DIGITS;
    private static final int[] HEX_DIGITS_TO_DECIMAL;
    private static final long[] HEX_DIGITS_TO_LONG_DECIMAL;
    private static final String LOWER_CASE_HEX_DIGITS = "0123456789abcdef";
    private static final String UPPER_CASE_HEX_DIGITS = "0123456789ABCDEF";

    static {
        int[] iArr = new int[256];
        int i3 = 0;
        for (int i4 = 0; i4 < 256; i4++) {
            iArr[i4] = LOWER_CASE_HEX_DIGITS.charAt(i4 & 15) | (LOWER_CASE_HEX_DIGITS.charAt(i4 >> 4) << '\b');
        }
        BYTE_TO_LOWER_CASE_HEX_DIGITS = iArr;
        int[] iArr2 = new int[256];
        for (int i5 = 0; i5 < 256; i5++) {
            iArr2[i5] = UPPER_CASE_HEX_DIGITS.charAt(i5 & 15) | (UPPER_CASE_HEX_DIGITS.charAt(i5 >> 4) << '\b');
        }
        BYTE_TO_UPPER_CASE_HEX_DIGITS = iArr2;
        int[] iArr3 = new int[256];
        for (int i6 = 0; i6 < 256; i6++) {
            iArr3[i6] = -1;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < LOWER_CASE_HEX_DIGITS.length()) {
            iArr3[LOWER_CASE_HEX_DIGITS.charAt(i7)] = i8;
            i7++;
            i8++;
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < UPPER_CASE_HEX_DIGITS.length()) {
            iArr3[UPPER_CASE_HEX_DIGITS.charAt(i9)] = i10;
            i9++;
            i10++;
        }
        HEX_DIGITS_TO_DECIMAL = iArr3;
        long[] jArr = new long[256];
        for (int i11 = 0; i11 < 256; i11++) {
            jArr[i11] = -1;
        }
        int i12 = 0;
        int i13 = 0;
        while (i12 < LOWER_CASE_HEX_DIGITS.length()) {
            jArr[LOWER_CASE_HEX_DIGITS.charAt(i12)] = i13;
            i12++;
            i13++;
        }
        int i14 = 0;
        while (i3 < UPPER_CASE_HEX_DIGITS.length()) {
            jArr[UPPER_CASE_HEX_DIGITS.charAt(i3)] = i14;
            i3++;
            i14++;
        }
        HEX_DIGITS_TO_LONG_DECIMAL = jArr;
    }

    private static final long charsPerSet(long j2, int i3, int i4) {
        if (i3 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j3 = i3;
        return ((j3 - 1) * ((long) i4)) + (j2 * j3);
    }

    private static final int checkContainsAt(String str, int i3, int i4, String str2, boolean z2, String str3) {
        if (str2.length() == 0) {
            return i3;
        }
        int length = str2.length();
        for (int i5 = 0; i5 < length; i5++) {
            if (!CharsKt__CharKt.equals(str2.charAt(i5), str.charAt(i3 + i5), z2)) {
                throwNotContainedAt(str, i3, i4, str2, str3);
            }
        }
        return str2.length() + i3;
    }

    private static final int checkFormatLength(long j2) {
        if (0 <= j2 && j2 <= 2147483647L) {
            return (int) j2;
        }
        throw new IllegalArgumentException("The resulting string length is too big: " + ((Object) ULong.m229toStringimpl(ULong.m183constructorimpl(j2))));
    }

    private static final int checkNewLineAt(String str, int i3, int i4) {
        if (str.charAt(i3) == '\r') {
            int i5 = i3 + 1;
            return (i5 >= i4 || str.charAt(i5) != '\n') ? i5 : i3 + 2;
        }
        if (str.charAt(i3) == '\n') {
            return i3 + 1;
        }
        StringBuilder sbO = E.b.o(i3, "Expected a new line at index ", ", but was ");
        sbO.append(str.charAt(i3));
        throw new NumberFormatException(sbO.toString());
    }

    private static final void checkNumberOfDigits(String str, int i3, int i4, int i5) {
        int i6 = i4 - i3;
        if (i6 < 1) {
            throwInvalidNumberOfDigits(str, i3, i4, "at least", 1);
        } else if (i6 > i5) {
            checkZeroDigits(str, i3, (i6 + i3) - i5);
        }
    }

    private static final void checkPrefixSuffixNumberOfDigits(String str, int i3, int i4, String str2, String str3, boolean z2, int i5) {
        if ((i4 - i3) - str2.length() <= str3.length()) {
            throwInvalidPrefixSuffix(str, i3, i4, str2, str3);
        }
        if (str2.length() != 0) {
            int length = str2.length();
            for (int i6 = 0; i6 < length; i6++) {
                if (!CharsKt__CharKt.equals(str2.charAt(i6), str.charAt(i3 + i6), z2)) {
                    throwNotContainedAt(str, i3, i4, str2, "prefix");
                }
            }
            i3 += str2.length();
        }
        int length2 = i4 - str3.length();
        if (str3.length() != 0) {
            int length3 = str3.length();
            for (int i7 = 0; i7 < length3; i7++) {
                if (!CharsKt__CharKt.equals(str3.charAt(i7), str.charAt(length2 + i7), z2)) {
                    throwNotContainedAt(str, length2, i4, str3, "suffix");
                }
            }
        }
        checkNumberOfDigits(str, i3, length2, i5);
    }

    private static final void checkZeroDigits(String str, int i3, int i4) {
        while (i3 < i4) {
            if (str.charAt(i3) != '0') {
                StringBuilder sbO = E.b.o(i3, "Expected the hexadecimal digit '0' at index ", ", but was '");
                sbO.append(str.charAt(i3));
                sbO.append("'.\nThe result won't fit the type being parsed.");
                throw new NumberFormatException(sbO.toString());
            }
            i3++;
        }
    }

    private static final int decimalFromHexDigitAt(String str, int i3) {
        int i4;
        char cCharAt = str.charAt(i3);
        if ((cCharAt >>> '\b') == 0 && (i4 = HEX_DIGITS_TO_DECIMAL[cCharAt]) >= 0) {
            return i4;
        }
        throwInvalidDigitAt(str, i3);
        throw new KotlinNothingValueException();
    }

    private static final int formatByteAt(byte[] bArr, int i3, String str, String str2, int[] iArr, char[] cArr, int i4) {
        return toCharArrayIfNotEmpty(str2, cArr, formatByteAt(bArr, i3, iArr, cArr, toCharArrayIfNotEmpty(str, cArr, i4)));
    }

    private static final int formattedStringLength(int i3, int i4, int i5, int i6) {
        if (i3 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j2 = i4;
        return checkFormatLength((((long) i3) * (((((long) i5) + 2) + ((long) i6)) + j2)) - j2);
    }

    public static final int[] getBYTE_TO_LOWER_CASE_HEX_DIGITS() {
        return BYTE_TO_LOWER_CASE_HEX_DIGITS;
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte hexToByte(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToByte(str, 0, str.length(), format);
    }

    public static /* synthetic */ byte hexToByte$default(String str, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte[] hexToByteArray(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToByteArray(str, 0, str.length(), format);
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, hexFormat);
    }

    private static final byte[] hexToByteArrayNoLineAndGroupSeparator(String str, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat) {
        return bytesHexFormat.getShortByteSeparatorNoPrefixAndSuffix() ? hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(str, i3, i4, bytesHexFormat) : hexToByteArrayNoLineAndGroupSeparatorSlowPath(str, i3, i4, bytesHexFormat);
    }

    private static final byte[] hexToByteArrayNoLineAndGroupSeparatorSlowPath(String str, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat) {
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        long length = byteSeparator.length();
        long length2 = ((long) bytePrefix.length()) + 2 + ((long) byteSuffix.length()) + length;
        long j2 = i4 - i3;
        int i5 = (int) ((j2 + length) / length2);
        if ((((long) i5) * length2) - length != j2) {
            return null;
        }
        boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
        byte[] bArr = new byte[i5];
        if (bytePrefix.length() != 0) {
            int length3 = bytePrefix.length();
            for (int i6 = 0; i6 < length3; i6++) {
                if (!CharsKt__CharKt.equals(bytePrefix.charAt(i6), str.charAt(i3 + i6), ignoreCase$kotlin_stdlib)) {
                    throwNotContainedAt(str, i3, i4, bytePrefix, "byte prefix");
                }
            }
            i3 += bytePrefix.length();
        }
        String strH = kotlin.collections.unsigned.a.h(byteSuffix, byteSeparator, bytePrefix);
        int i7 = i5 - 1;
        for (int i8 = 0; i8 < i7; i8++) {
            bArr[i8] = parseByteAt(str, i3);
            i3 += 2;
            if (strH.length() != 0) {
                int length4 = strH.length();
                for (int i9 = 0; i9 < length4; i9++) {
                    if (!CharsKt__CharKt.equals(strH.charAt(i9), str.charAt(i3 + i9), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, i3, i4, strH, "byte suffix + byte separator + byte prefix");
                    }
                }
                i3 = strH.length() + i3;
            }
        }
        bArr[i7] = parseByteAt(str, i3);
        int i10 = i3 + 2;
        if (byteSuffix.length() == 0) {
            return bArr;
        }
        int length5 = byteSuffix.length();
        for (int i11 = 0; i11 < length5; i11++) {
            if (!CharsKt__CharKt.equals(byteSuffix.charAt(i11), str.charAt(i10 + i11), ignoreCase$kotlin_stdlib)) {
                throwNotContainedAt(str, i10, i4, byteSuffix, "byte suffix");
            }
        }
        return bArr;
    }

    private static final byte[] hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(String str, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat) {
        int length = bytesHexFormat.getByteSeparator().length();
        if (length > 1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i5 = i4 - i3;
        int i6 = 2;
        if (length == 0) {
            if ((i5 & 1) != 0) {
                return null;
            }
            int i7 = i5 >> 1;
            byte[] bArr = new byte[i7];
            int i8 = 0;
            for (int i9 = 0; i9 < i7; i9++) {
                bArr[i9] = parseByteAt(str, i8);
                i8 += 2;
            }
            return bArr;
        }
        if (i5 % 3 != 2) {
            return null;
        }
        int i10 = (i5 / 3) + 1;
        byte[] bArr2 = new byte[i10];
        char cCharAt = bytesHexFormat.getByteSeparator().charAt(0);
        bArr2[0] = parseByteAt(str, 0);
        for (int i11 = 1; i11 < i10; i11++) {
            if (str.charAt(i6) != cCharAt) {
                String byteSeparator = bytesHexFormat.getByteSeparator();
                boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
                if (byteSeparator.length() != 0) {
                    int length2 = byteSeparator.length();
                    for (int i12 = 0; i12 < length2; i12++) {
                        if (!CharsKt__CharKt.equals(byteSeparator.charAt(i12), str.charAt(i6 + i12), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, i6, i4, byteSeparator, "byte separator");
                        }
                    }
                    byteSeparator.length();
                }
            }
            bArr2[i11] = parseByteAt(str, i6 + 1);
            i6 += 3;
        }
        return bArr2;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:45:0x010d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0110  */
    /* JADX WARN: Code duplicated, block: B:48:0x0117  */
    /* JADX WARN: Code duplicated, block: B:50:0x0129  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x012e A[SYNTHETIC] */
    private static final byte[] hexToByteArraySlowPath(String str, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat) {
        int i5;
        int i6;
        int i7;
        int length;
        int i8;
        int i9;
        int length2;
        int i10;
        int bytesPerLine = bytesHexFormat.getBytesPerLine();
        int bytesPerGroup = bytesHexFormat.getBytesPerGroup();
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        String groupSeparator = bytesHexFormat.getGroupSeparator();
        boolean ignoreCase$kotlin_stdlib = bytesHexFormat.getIgnoreCase();
        int i11 = parsedByteArrayMaxSize(i4 - i3, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator.length(), bytePrefix.length(), byteSuffix.length());
        byte[] bArr = new byte[i11];
        int length3 = i3;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (length3 < i4) {
            if (i13 == bytesPerLine) {
                length3 = checkNewLineAt(str, length3, i4);
                i5 = bytesPerLine;
                i6 = bytesPerGroup;
                i13 = 0;
            } else {
                if (i14 != bytesPerGroup) {
                    i5 = bytesPerLine;
                    i6 = bytesPerGroup;
                    if (i14 != 0 && byteSeparator.length() != 0) {
                        int length4 = byteSeparator.length();
                        int i15 = 0;
                        while (i15 < length4) {
                            int i16 = length4;
                            if (!CharsKt__CharKt.equals(byteSeparator.charAt(i15), str.charAt(length3 + i15), ignoreCase$kotlin_stdlib)) {
                                throwNotContainedAt(str, length3, i4, byteSeparator, "byte separator");
                            }
                            i15++;
                            length4 = i16;
                        }
                        length3 += byteSeparator.length();
                    }
                } else if (groupSeparator.length() == 0) {
                    i5 = bytesPerLine;
                    i6 = bytesPerGroup;
                } else {
                    int length5 = groupSeparator.length();
                    int i17 = 0;
                    while (i17 < length5) {
                        int i18 = bytesPerLine;
                        int i19 = bytesPerGroup;
                        if (!CharsKt__CharKt.equals(groupSeparator.charAt(i17), str.charAt(length3 + i17), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i4, groupSeparator, "group separator");
                        }
                        i17++;
                        bytesPerLine = i18;
                        bytesPerGroup = i19;
                    }
                    i5 = bytesPerLine;
                    i6 = bytesPerGroup;
                    length3 += groupSeparator.length();
                }
                i13++;
                i14++;
                if (bytePrefix.length() != 0) {
                    length2 = bytePrefix.length();
                    i10 = 0;
                    while (i10 < length2) {
                        int i20 = length2;
                        if (!CharsKt__CharKt.equals(bytePrefix.charAt(i10), str.charAt(length3 + i10), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i4, bytePrefix, "byte prefix");
                        }
                        i10++;
                        length2 = i20;
                    }
                    length3 += bytePrefix.length();
                }
                if (i4 - 2 < length3) {
                    throwInvalidNumberOfDigits(str, length3, i4, "exactly", 2);
                }
                i7 = i12 + 1;
                bArr[i12] = parseByteAt(str, length3);
                length3 += 2;
                if (byteSuffix.length() == 0) {
                    i9 = i7;
                } else {
                    length = byteSuffix.length();
                    i8 = 0;
                    while (i8 < length) {
                        int i21 = i7;
                        if (!CharsKt__CharKt.equals(byteSuffix.charAt(i8), str.charAt(length3 + i8), ignoreCase$kotlin_stdlib)) {
                            throwNotContainedAt(str, length3, i4, byteSuffix, "byte suffix");
                        }
                        i8++;
                        i7 = i21;
                    }
                    i9 = i7;
                    length3 = byteSuffix.length() + length3;
                }
                i12 = i9;
                bytesPerLine = i5;
                bytesPerGroup = i6;
            }
            i14 = 0;
            i13++;
            i14++;
            if (bytePrefix.length() != 0) {
                length2 = bytePrefix.length();
                i10 = 0;
                while (i10 < length2) {
                    int i22 = length2;
                    if (!CharsKt__CharKt.equals(bytePrefix.charAt(i10), str.charAt(length3 + i10), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, length3, i4, bytePrefix, "byte prefix");
                    }
                    i10++;
                    length2 = i22;
                }
                length3 += bytePrefix.length();
            }
            if (i4 - 2 < length3) {
                throwInvalidNumberOfDigits(str, length3, i4, "exactly", 2);
            }
            i7 = i12 + 1;
            bArr[i12] = parseByteAt(str, length3);
            length3 += 2;
            if (byteSuffix.length() == 0) {
                i9 = i7;
            } else {
                length = byteSuffix.length();
                i8 = 0;
                while (i8 < length) {
                    int i23 = i7;
                    if (!CharsKt__CharKt.equals(byteSuffix.charAt(i8), str.charAt(length3 + i8), ignoreCase$kotlin_stdlib)) {
                        throwNotContainedAt(str, length3, i4, byteSuffix, "byte suffix");
                    }
                    i8++;
                    i7 = i23;
                }
                i9 = i7;
                length3 = byteSuffix.length() + length3;
            }
            i12 = i9;
            bytesPerLine = i5;
            bytesPerGroup = i6;
        }
        if (i12 == i11) {
            return bArr;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i12);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final int hexToInt(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToInt(str, 0, str.length(), format);
    }

    public static /* synthetic */ int hexToInt$default(String str, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, hexFormat);
    }

    private static final int hexToIntImpl(String str, int i3, int i4, HexFormat hexFormat, int i5) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i3, i4, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            checkNumberOfDigits(str, i3, i4, i5);
            return parseInt(str, i3, i4);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        checkPrefixSuffixNumberOfDigits(str, i3, i4, prefix, suffix, number.getIgnoreCase(), i5);
        return parseInt(str, prefix.length() + i3, i4 - suffix.length());
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final long hexToLong(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToLong(str, 0, str.length(), format);
    }

    public static /* synthetic */ long hexToLong$default(String str, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, hexFormat);
    }

    private static final long hexToLongImpl(String str, int i3, int i4, HexFormat hexFormat, int i5) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i3, i4, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            checkNumberOfDigits(str, i3, i4, i5);
            return parseLong(str, i3, i4);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        checkPrefixSuffixNumberOfDigits(str, i3, i4, prefix, suffix, number.getIgnoreCase(), i5);
        return parseLong(str, prefix.length() + i3, i4 - suffix.length());
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final short hexToShort(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToShort(str, 0, str.length(), format);
    }

    public static /* synthetic */ short hexToShort$default(String str, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, hexFormat);
    }

    private static final long longDecimalFromHexDigitAt(String str, int i3) {
        char cCharAt = str.charAt(i3);
        if ((cCharAt >>> '\b') == 0) {
            long j2 = HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
            if (j2 >= 0) {
                return j2;
            }
        }
        throwInvalidDigitAt(str, i3);
        throw new KotlinNothingValueException();
    }

    private static final byte parseByteAt(String str, int i3) {
        int[] iArr;
        int i4;
        int i5;
        char cCharAt = str.charAt(i3);
        if ((cCharAt >>> '\b') != 0 || (i4 = (iArr = HEX_DIGITS_TO_DECIMAL)[cCharAt]) < 0) {
            throwInvalidDigitAt(str, i3);
            throw new KotlinNothingValueException();
        }
        int i6 = i3 + 1;
        char cCharAt2 = str.charAt(i6);
        if ((cCharAt2 >>> '\b') == 0 && (i5 = iArr[cCharAt2]) >= 0) {
            return (byte) ((i4 << 4) | i5);
        }
        throwInvalidDigitAt(str, i6);
        throw new KotlinNothingValueException();
    }

    private static final int parseInt(String str, int i3, int i4) {
        int i5;
        int i6 = 0;
        while (i3 < i4) {
            int i7 = i6 << 4;
            char cCharAt = str.charAt(i3);
            if ((cCharAt >>> '\b') != 0 || (i5 = HEX_DIGITS_TO_DECIMAL[cCharAt]) < 0) {
                throwInvalidDigitAt(str, i3);
                throw new KotlinNothingValueException();
            }
            i6 = i7 | i5;
            i3++;
        }
        return i6;
    }

    private static final long parseLong(String str, int i3, int i4) {
        long j2 = 0;
        while (i3 < i4) {
            long j3 = j2 << 4;
            char cCharAt = str.charAt(i3);
            if ((cCharAt >>> '\b') == 0) {
                long j4 = HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
                if (j4 >= 0) {
                    j2 = j3 | j4;
                    i3++;
                }
            }
            throwInvalidDigitAt(str, i3);
            throw new KotlinNothingValueException();
        }
        return j2;
    }

    public static final int parsedByteArrayMaxSize(int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        long jCharsPerSet;
        if (i3 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j2 = ((long) i8) + 2 + ((long) i9);
        long jCharsPerSet2 = charsPerSet(j2, i5, i7);
        if (i4 <= i5) {
            jCharsPerSet = charsPerSet(j2, i4, i7);
        } else {
            jCharsPerSet = charsPerSet(jCharsPerSet2, i4 / i5, i6);
            int i10 = i4 % i5;
            if (i10 != 0) {
                jCharsPerSet = jCharsPerSet + ((long) i6) + charsPerSet(j2, i10, i7);
            }
        }
        long j3 = i3;
        long jWholeElementsPerSet = wholeElementsPerSet(j3, jCharsPerSet, 1);
        long j4 = j3 - ((jCharsPerSet + 1) * jWholeElementsPerSet);
        long jWholeElementsPerSet2 = wholeElementsPerSet(j4, jCharsPerSet2, i6);
        long j5 = j4 - ((jCharsPerSet2 + ((long) i6)) * jWholeElementsPerSet2);
        long jWholeElementsPerSet3 = wholeElementsPerSet(j5, j2, i7);
        return (int) ((jWholeElementsPerSet2 * ((long) i5)) + (jWholeElementsPerSet * ((long) i4)) + jWholeElementsPerSet3 + ((long) (j5 - ((j2 + ((long) i7)) * jWholeElementsPerSet3) > 0 ? 1 : 0)));
    }

    private static final Void throwInvalidDigitAt(String str, int i3) {
        StringBuilder sbO = E.b.o(i3, "Expected a hexadecimal digit at index ", ", but was ");
        sbO.append(str.charAt(i3));
        throw new NumberFormatException(sbO.toString());
    }

    private static final void throwInvalidNumberOfDigits(String str, int i3, int i4, String str2, int i5) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i3, i4);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        throw new NumberFormatException("Expected " + str2 + ' ' + i5 + " hexadecimal digits at index " + i3 + ", but was \"" + strSubstring + "\" of length " + (i4 - i3));
    }

    private static final void throwInvalidPrefixSuffix(String str, int i3, int i4, String str2, String str3) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i3, i4);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("Expected a hexadecimal number with prefix \"", str2, "\" and suffix \"", str3, "\", but was ");
        sbJ.append(strSubstring);
        throw new NumberFormatException(sbJ.toString());
    }

    private static final void throwNotContainedAt(String str, int i3, int i4, String str2, String str3) {
        int iCoerceAtMost = RangesKt.coerceAtMost(str2.length() + i3, i4);
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i3, iCoerceAtMost);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("Expected ", str3, " \"", str2, "\" at index ");
        sbJ.append(i3);
        sbJ.append(", but was ");
        sbJ.append(strSubstring);
        throw new NumberFormatException(sbJ.toString());
    }

    private static final int toCharArrayIfNotEmpty(String str, char[] cArr, int i3) {
        int length = str.length();
        if (length != 0) {
            if (length != 1) {
                int length2 = str.length();
                Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                str.getChars(0, length2, cArr, i3);
            } else {
                cArr[i3] = str.charAt(0);
            }
        }
        return str.length() + i3;
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(byte[] bArr, HexFormat format) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return toHexString(bArr, 0, bArr.length, format);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, hexFormat);
    }

    private static final String toHexStringImpl(long j2, HexFormat.NumberHexFormat numberHexFormat, String str, int i3) {
        if ((i3 & 3) != 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i4 = i3 >> 2;
        int minLength = numberHexFormat.getMinLength();
        int iCoerceAtLeast = RangesKt.coerceAtLeast(minLength - i4, 0);
        String prefix = numberHexFormat.getPrefix();
        String suffix = numberHexFormat.getSuffix();
        boolean removeLeadingZeros = numberHexFormat.getRemoveLeadingZeros();
        int iCheckFormatLength = checkFormatLength(((long) prefix.length()) + ((long) iCoerceAtLeast) + ((long) i4) + ((long) suffix.length()));
        char[] cArr = new char[iCheckFormatLength];
        int charArrayIfNotEmpty = toCharArrayIfNotEmpty(prefix, cArr, 0);
        if (iCoerceAtLeast > 0) {
            int i5 = iCoerceAtLeast + charArrayIfNotEmpty;
            ArraysKt.fill(cArr, str.charAt(0), charArrayIfNotEmpty, i5);
            charArrayIfNotEmpty = i5;
        }
        int i6 = i3;
        for (int i7 = 0; i7 < i4; i7++) {
            i6 -= 4;
            int i8 = (int) ((j2 >> i6) & 15);
            removeLeadingZeros = removeLeadingZeros && i8 == 0 && (i6 >> 2) >= minLength;
            if (!removeLeadingZeros) {
                cArr[charArrayIfNotEmpty] = str.charAt(i8);
                charArrayIfNotEmpty++;
            }
        }
        int charArrayIfNotEmpty2 = toCharArrayIfNotEmpty(suffix, cArr, charArrayIfNotEmpty);
        return charArrayIfNotEmpty2 == iCheckFormatLength ? StringsKt__StringsJVMKt.concatToString(cArr) : StringsKt__StringsJVMKt.concatToString$default(cArr, 0, charArrayIfNotEmpty2, 1, null);
    }

    private static final String toHexStringNoLineAndGroupSeparator(byte[] bArr, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        return bytesHexFormat.getShortByteSeparatorNoPrefixAndSuffix() ? toHexStringShortByteSeparatorNoPrefixAndSuffix(bArr, i3, i4, bytesHexFormat, iArr) : toHexStringNoLineAndGroupSeparatorSlowPath(bArr, i3, i4, bytesHexFormat, iArr);
    }

    private static final String toHexStringNoLineAndGroupSeparatorSlowPath(byte[] bArr, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        char[] cArr = new char[formattedStringLength(i4 - i3, byteSeparator.length(), bytePrefix.length(), byteSuffix.length())];
        int byteAt = formatByteAt(bArr, i3, bytePrefix, byteSuffix, iArr, cArr, 0);
        for (int i5 = i3 + 1; i5 < i4; i5++) {
            byteAt = formatByteAt(bArr, i5, bytePrefix, byteSuffix, iArr, cArr, toCharArrayIfNotEmpty(byteSeparator, cArr, byteAt));
        }
        return StringsKt__StringsJVMKt.concatToString(cArr);
    }

    private static final String toHexStringShortByteSeparatorNoPrefixAndSuffix(byte[] bArr, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        int length = bytesHexFormat.getByteSeparator().length();
        if (length > 1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i5 = i4 - i3;
        int byteAt = 0;
        if (length == 0) {
            char[] cArr = new char[checkFormatLength(((long) i5) * 2)];
            while (i3 < i4) {
                byteAt = formatByteAt(bArr, i3, iArr, cArr, byteAt);
                i3++;
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        char[] cArr2 = new char[checkFormatLength((((long) i5) * 3) - 1)];
        char cCharAt = bytesHexFormat.getByteSeparator().charAt(0);
        int byteAt2 = formatByteAt(bArr, i3, iArr, cArr2, 0);
        for (int i6 = i3 + 1; i6 < i4; i6++) {
            cArr2[byteAt2] = cCharAt;
            byteAt2 = formatByteAt(bArr, i6, iArr, cArr2, byteAt2 + 1);
        }
        return StringsKt__StringsJVMKt.concatToString(cArr2);
    }

    private static final String toHexStringSlowPath(byte[] bArr, int i3, int i4, HexFormat.BytesHexFormat bytesHexFormat, int[] iArr) {
        int i5;
        int i6;
        int bytesPerLine = bytesHexFormat.getBytesPerLine();
        int bytesPerGroup = bytesHexFormat.getBytesPerGroup();
        String bytePrefix = bytesHexFormat.getBytePrefix();
        String byteSuffix = bytesHexFormat.getByteSuffix();
        String byteSeparator = bytesHexFormat.getByteSeparator();
        String groupSeparator = bytesHexFormat.getGroupSeparator();
        int i7 = formattedStringLength(i4 - i3, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator.length(), bytePrefix.length(), byteSuffix.length());
        char[] cArr = new char[i7];
        int i8 = i3;
        int charArrayIfNotEmpty = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < i4) {
            if (i9 == bytesPerLine) {
                cArr[charArrayIfNotEmpty] = '\n';
                charArrayIfNotEmpty++;
                i5 = 0;
                i6 = 0;
            } else if (i10 == bytesPerGroup) {
                charArrayIfNotEmpty = toCharArrayIfNotEmpty(groupSeparator, cArr, charArrayIfNotEmpty);
                i5 = i9;
                i6 = 0;
            } else {
                i5 = i9;
                i6 = i10;
            }
            if (i6 != 0) {
                charArrayIfNotEmpty = toCharArrayIfNotEmpty(byteSeparator, cArr, charArrayIfNotEmpty);
            }
            String str = bytePrefix;
            int byteAt = formatByteAt(bArr, i8, str, byteSuffix, iArr, cArr, charArrayIfNotEmpty);
            i8++;
            i10 = i6 + 1;
            charArrayIfNotEmpty = byteAt;
            bytePrefix = str;
            i9 = i5 + 1;
        }
        if (charArrayIfNotEmpty == i7) {
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    private static final long wholeElementsPerSet(long j2, long j3, int i3) {
        if (j2 <= 0 || j3 <= 0) {
            return 0L;
        }
        long j4 = i3;
        return (j2 + j4) / (j3 + j4);
    }

    private static final byte hexToByte(String str, int i3, int i4, HexFormat hexFormat) {
        return (byte) hexToIntImpl(str, i3, i4, hexFormat, 2);
    }

    private static final byte[] hexToByteArray(String str, int i3, int i4, HexFormat hexFormat) {
        byte[] bArrHexToByteArrayNoLineAndGroupSeparator;
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i3, i4, str.length());
        if (i3 == i4) {
            return new byte[0];
        }
        HexFormat.BytesHexFormat bytes = hexFormat.getBytes();
        return (!bytes.getNoLineAndGroupSeparator() || (bArrHexToByteArrayNoLineAndGroupSeparator = hexToByteArrayNoLineAndGroupSeparator(str, i3, i4, bytes)) == null) ? hexToByteArraySlowPath(str, i3, i4, bytes) : bArrHexToByteArrayNoLineAndGroupSeparator;
    }

    public static final int hexToInt(String str, int i3, int i4, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToIntImpl(str, i3, i4, format, 8);
    }

    public static final long hexToLong(String str, int i3, int i4, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToLongImpl(str, i3, i4, format, 16);
    }

    private static final short hexToShort(String str, int i3, int i4, HexFormat hexFormat) {
        return (short) hexToIntImpl(str, i3, i4, hexFormat, 4);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(byte[] bArr, int i3, int i4, HexFormat format) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i3, i4, bArr.length);
        if (i3 == i4) {
            return "";
        }
        int[] iArr = format.getUpperCase() ? BYTE_TO_UPPER_CASE_HEX_DIGITS : BYTE_TO_LOWER_CASE_HEX_DIGITS;
        HexFormat.BytesHexFormat bytes = format.getBytes();
        return bytes.getNoLineAndGroupSeparator() ? toHexStringNoLineAndGroupSeparator(bArr, i3, i4, bytes, iArr) : toHexStringSlowPath(bArr, i3, i4, bytes, iArr);
    }

    public static final int formattedStringLength(int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i3 > 0) {
            int i10 = i3 - 1;
            int i11 = i10 / i4;
            int i12 = (i4 - 1) / i5;
            int i13 = i3 % i4;
            if (i13 != 0) {
                i4 = i13;
            }
            int i14 = (i12 * i11) + ((i4 - 1) / i5);
            return checkFormatLength(((((long) i8) + 2 + ((long) i9)) * ((long) i3)) + (((long) ((i10 - i11) - i14)) * ((long) i7)) + (((long) i14) * ((long) i6)) + ((long) i11));
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static /* synthetic */ byte hexToByte$default(String str, int i3, int i4, HexFormat hexFormat, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        if ((i5 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, i3, i4, hexFormat);
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, int i3, int i4, HexFormat hexFormat, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        if ((i5 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, i3, i4, hexFormat);
    }

    public static /* synthetic */ int hexToInt$default(String str, int i3, int i4, HexFormat hexFormat, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        if ((i5 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, i3, i4, hexFormat);
    }

    public static /* synthetic */ long hexToLong$default(String str, int i3, int i4, HexFormat hexFormat, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        if ((i5 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, i3, i4, hexFormat);
    }

    public static /* synthetic */ short hexToShort$default(String str, int i3, int i4, HexFormat hexFormat, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        if ((i5 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, i3, i4, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, int i3, int i4, HexFormat hexFormat, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = bArr.length;
        }
        if ((i5 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, i3, i4, hexFormat);
    }

    private static final int formatByteAt(byte[] bArr, int i3, int[] iArr, char[] cArr, int i4) {
        int i5 = iArr[bArr[i3] & UByte.MAX_VALUE];
        cArr[i4] = (char) (i5 >> 8);
        cArr[i4 + 1] = (char) (i5 & 255);
        return i4 + 2;
    }

    public static /* synthetic */ String toHexString$default(byte b, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(b, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(short s2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(s2, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(byte b, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((b >> 4) & 15), str.charAt(b & 15)};
            if (number.getRemoveLeadingZeros()) {
                return StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(b & UByte.MAX_VALUE) - 24) >> 2, 1), 0, 2, null);
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        return toHexStringImpl(b, number, str, 8);
    }

    public static /* synthetic */ String toHexString$default(int i3, HexFormat hexFormat, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(i3, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(long j2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(j2, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(short s2, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((s2 >> 12) & 15), str.charAt((s2 >> 8) & 15), str.charAt((s2 >> 4) & 15), str.charAt(s2 & 15)};
            if (number.getRemoveLeadingZeros()) {
                return StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(s2 & UShort.MAX_VALUE) - 16) >> 2, 3), 0, 2, null);
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        return toHexStringImpl(s2, number, str, 16);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(int i3, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((i3 >> 28) & 15), str.charAt((i3 >> 24) & 15), str.charAt((i3 >> 20) & 15), str.charAt((i3 >> 16) & 15), str.charAt((i3 >> 12) & 15), str.charAt((i3 >> 8) & 15), str.charAt((i3 >> 4) & 15), str.charAt(i3 & 15)};
            if (number.getRemoveLeadingZeros()) {
                return StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost(Integer.numberOfLeadingZeros(i3) >> 2, 7), 0, 2, null);
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        return toHexStringImpl(i3, number, str, 32);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String toHexString(long j2, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? UPPER_CASE_HEX_DIGITS : LOWER_CASE_HEX_DIGITS;
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((int) ((j2 >> 60) & 15)), str.charAt((int) ((j2 >> 56) & 15)), str.charAt((int) ((j2 >> 52) & 15)), str.charAt((int) ((j2 >> 48) & 15)), str.charAt((int) ((j2 >> 44) & 15)), str.charAt((int) ((j2 >> 40) & 15)), str.charAt((int) ((j2 >> 36) & 15)), str.charAt((int) ((j2 >> 32) & 15)), str.charAt((int) ((j2 >> 28) & 15)), str.charAt((int) ((j2 >> 24) & 15)), str.charAt((int) ((j2 >> 20) & 15)), str.charAt((int) ((j2 >> 16) & 15)), str.charAt((int) ((j2 >> 12) & 15)), str.charAt((int) ((j2 >> 8) & 15)), str.charAt((int) ((j2 >> 4) & 15)), str.charAt((int) (j2 & 15))};
            if (number.getRemoveLeadingZeros()) {
                return StringsKt__StringsJVMKt.concatToString$default(cArr, RangesKt.coerceAtMost(Long.numberOfLeadingZeros(j2) >> 2, 15), 0, 2, null);
            }
            return StringsKt__StringsJVMKt.concatToString(cArr);
        }
        return toHexStringImpl(j2, number, str, 64);
    }
}
