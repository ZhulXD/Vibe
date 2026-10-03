package kotlin.uuid;

import E.b;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.HexExtensionsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a,\u0010\b\u001a\u00020\t*\u00020\u00052\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0001\u001a\u0014\u0010\u000e\u001a\u00020\t*\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\t*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0000\u001a\u0010\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u000fH\u0001\u001a\u0010\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u000fH\u0001\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0002\b\u0018\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0002\b\u0018¨\u0006\u001a"}, d2 = {"uuidFromRandomBytes", "Lkotlin/uuid/Uuid;", "randomBytes", "", "getLongAtCommonImpl", "", "index", "", "formatBytesIntoCommonImpl", "", "dst", "dstOffset", "startIndex", "endIndex", "checkHyphenAt", "", "setLongAtCommonImpl", "value", "uuidParseHexDashCommonImpl", "hexDashString", "uuidParseHexCommonImpl", "hexString", "truncateForErrorMessage", "maxLength", "truncateForErrorMessage$UuidKt__UuidKt", "maxSize", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/uuid/UuidKt")
@SourceDebugExtension({"SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,648:1\n1#2:649\n*E\n"})
class UuidKt__UuidKt extends UuidKt__UuidJVMKt {
    public static final void checkHyphenAt(String str, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.charAt(i3) == '-') {
            return;
        }
        StringBuilder sbO = b.o(i3, "Expected '-' (hyphen) at index ", ", but was '");
        sbO.append(str.charAt(i3));
        sbO.append('\'');
        throw new IllegalArgumentException(sbO.toString().toString());
    }

    @ExperimentalUuidApi
    public static final void formatBytesIntoCommonImpl(long j2, byte[] dst, int i3, int i4, int i5) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        int i6 = 7 - i4;
        int i7 = 8 - i5;
        if (i7 > i6) {
            return;
        }
        while (true) {
            int i8 = HexExtensionsKt.getBYTE_TO_LOWER_CASE_HEX_DIGITS()[(int) ((j2 >> (i6 << 3)) & 255)];
            int i9 = i3 + 1;
            dst[i3] = (byte) (i8 >> 8);
            i3 += 2;
            dst[i9] = (byte) i8;
            if (i6 == i7) {
                return;
            } else {
                i6--;
            }
        }
    }

    public static final long getLongAtCommonImpl(byte[] bArr, int i3) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return (((long) bArr[i3 + 7]) & 255) | ((((long) bArr[i3]) & 255) << 56) | ((((long) bArr[i3 + 1]) & 255) << 48) | ((((long) bArr[i3 + 2]) & 255) << 40) | ((((long) bArr[i3 + 3]) & 255) << 32) | ((((long) bArr[i3 + 4]) & 255) << 24) | ((((long) bArr[i3 + 5]) & 255) << 16) | ((((long) bArr[i3 + 6]) & 255) << 8);
    }

    public static final void setLongAtCommonImpl(byte[] bArr, int i3, long j2) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int i4 = 7;
        while (-1 < i4) {
            bArr[i3] = (byte) (j2 >> (i4 << 3));
            i4--;
            i3++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage$UuidKt__UuidKt(String str, int i3) {
        if (str.length() <= i3) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(0, i3);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        sb.append(strSubstring);
        sb.append("...");
        return sb.toString();
    }

    @ExperimentalUuidApi
    public static final Uuid uuidFromRandomBytes(byte[] randomBytes) {
        Intrinsics.checkNotNullParameter(randomBytes, "randomBytes");
        byte b = (byte) (randomBytes[6] & 15);
        randomBytes[6] = b;
        randomBytes[6] = (byte) (b | 64);
        byte b3 = (byte) (randomBytes[8] & 63);
        randomBytes[8] = b3;
        randomBytes[8] = (byte) (b3 | ByteCompanionObject.MIN_VALUE);
        return Uuid.Companion.fromByteArray(randomBytes);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexCommonImpl(String hexString) {
        Intrinsics.checkNotNullParameter(hexString, "hexString");
        return Uuid.Companion.fromLongs(HexExtensionsKt.hexToLong$default(hexString, 0, 16, null, 4, null), HexExtensionsKt.hexToLong$default(hexString, 16, 32, null, 4, null));
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDashCommonImpl(String hexDashString) {
        Intrinsics.checkNotNullParameter(hexDashString, "hexDashString");
        long jHexToLong$default = HexExtensionsKt.hexToLong$default(hexDashString, 0, 8, null, 4, null);
        checkHyphenAt(hexDashString, 8);
        long jHexToLong$default2 = HexExtensionsKt.hexToLong$default(hexDashString, 9, 13, null, 4, null);
        checkHyphenAt(hexDashString, 13);
        long jHexToLong$default3 = HexExtensionsKt.hexToLong$default(hexDashString, 14, 18, null, 4, null);
        checkHyphenAt(hexDashString, 18);
        long jHexToLong$default4 = HexExtensionsKt.hexToLong$default(hexDashString, 19, 23, null, 4, null);
        checkHyphenAt(hexDashString, 23);
        return Uuid.Companion.fromLongs((jHexToLong$default2 << 16) | (jHexToLong$default << 32) | jHexToLong$default3, (jHexToLong$default4 << 48) | HexExtensionsKt.hexToLong$default(hexDashString, 24, 36, null, 4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage$UuidKt__UuidKt(byte[] bArr, int i3) {
        return ArraysKt___ArraysKt.joinToString$default(bArr, (CharSequence) null, (CharSequence) "[", (CharSequence) "]", i3, (CharSequence) null, (Function1) null, 49, (Object) null);
    }
}
