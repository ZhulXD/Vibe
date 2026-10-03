package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u0007\u0010\u0005\u001a\u001f\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0001¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\f\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0001¢\u0006\u0004\b\r\u0010\u000b\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000fH\u0001\u001a\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0011H\u0001\u001a\u0016\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\b¢\u0006\u0002\u0010\u0014\u001a\u0011\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\b\u001a\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\b\u001a\u0016\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0017H\u0081\b¢\u0006\u0002\u0010\u0019\u001a\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0001\u001a\u0015\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u001bH\u0001¢\u0006\u0002\u0010\u001d\u001a\u0011\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0011H\u0081\b\u001a\u0016\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0017H\u0081\b¢\u0006\u0002\u0010 \u001a\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u0011H\u0001\u001a\u0015\u0010\"\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u001bH\u0001¢\u0006\u0002\u0010#\u001a\u0011\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u000fH\u0081\b\u001a\u0019\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u000fH\u0081\b\u001a\u0011\u0010'\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u0011H\u0081\b\u001a\u0018\u0010'\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\u000fH\u0000¨\u0006("}, d2 = {"uintRemainder", "Lkotlin/UInt;", "v1", "v2", "uintRemainder-J1ME1BU", "(II)I", "uintDivide", "uintDivide-J1ME1BU", "ulongDivide", "Lkotlin/ULong;", "ulongDivide-eb3DHEI", "(JJ)J", "ulongRemainder", "ulongRemainder-eb3DHEI", "uintCompare", "", "ulongCompare", "", "uintToULong", "value", "(I)J", "uintToLong", "uintToFloat", "", "floatToUInt", "(F)I", "uintToDouble", "", "doubleToUInt", "(D)I", "ulongToFloat", "floatToULong", "(F)J", "ulongToDouble", "doubleToULong", "(D)J", "uintToString", "", "base", "ulongToString", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "UnsignedKt")
public final class UnsignedKt {
    @PublishedApi
    public static final int doubleToUInt(double d3) {
        if (Double.isNaN(d3) || d3 <= uintToDouble(0)) {
            return 0;
        }
        if (d3 >= uintToDouble(-1)) {
            return -1;
        }
        if (d3 <= 2.147483647E9d) {
            return UInt.m104constructorimpl((int) d3);
        }
        return UInt.m104constructorimpl(UInt.m104constructorimpl(IntCompanionObject.MAX_VALUE) + UInt.m104constructorimpl((int) (d3 - ((double) IntCompanionObject.MAX_VALUE))));
    }

    @PublishedApi
    public static final long doubleToULong(double d3) {
        if (Double.isNaN(d3) || d3 <= ulongToDouble(0L)) {
            return 0L;
        }
        if (d3 >= ulongToDouble(-1L)) {
            return -1L;
        }
        return d3 < 9.223372036854776E18d ? ULong.m183constructorimpl((long) d3) : ULong.m183constructorimpl(ULong.m183constructorimpl((long) (d3 - 9.223372036854776E18d)) - Long.MIN_VALUE);
    }

    @PublishedApi
    @InlineOnly
    private static final int floatToUInt(float f) {
        return doubleToUInt(f);
    }

    @PublishedApi
    @InlineOnly
    private static final long floatToULong(float f) {
        return doubleToULong(f);
    }

    @PublishedApi
    public static final int uintCompare(int i3, int i4) {
        return Intrinsics.compare(i3 ^ Integer.MIN_VALUE, i4 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    /* JADX INFO: renamed from: uintDivide-J1ME1BU, reason: not valid java name */
    public static final int m360uintDivideJ1ME1BU(int i3, int i4) {
        return UInt.m104constructorimpl((int) ((((long) i3) & 4294967295L) / (((long) i4) & 4294967295L)));
    }

    @PublishedApi
    /* JADX INFO: renamed from: uintRemainder-J1ME1BU, reason: not valid java name */
    public static final int m361uintRemainderJ1ME1BU(int i3, int i4) {
        return UInt.m104constructorimpl((int) ((((long) i3) & 4294967295L) % (((long) i4) & 4294967295L)));
    }

    @PublishedApi
    public static final double uintToDouble(int i3) {
        return (((double) ((i3 >>> 31) << 30)) * ((double) 2)) + ((double) (Integer.MAX_VALUE & i3));
    }

    @PublishedApi
    @InlineOnly
    private static final float uintToFloat(int i3) {
        return (float) uintToDouble(i3);
    }

    @PublishedApi
    @InlineOnly
    private static final long uintToLong(int i3) {
        return ((long) i3) & 4294967295L;
    }

    @InlineOnly
    private static final String uintToString(int i3) {
        return String.valueOf(((long) i3) & 4294967295L);
    }

    @PublishedApi
    @InlineOnly
    private static final long uintToULong(int i3) {
        return ULong.m183constructorimpl(((long) i3) & 4294967295L);
    }

    @PublishedApi
    public static final int ulongCompare(long j2, long j3) {
        return Intrinsics.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE);
    }

    @PublishedApi
    /* JADX INFO: renamed from: ulongDivide-eb3DHEI, reason: not valid java name */
    public static final long m362ulongDivideeb3DHEI(long j2, long j3) {
        if (j3 < 0) {
            return Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) < 0 ? ULong.m183constructorimpl(0L) : ULong.m183constructorimpl(1L);
        }
        if (j2 >= 0) {
            return ULong.m183constructorimpl(j2 / j3);
        }
        long j4 = ((j2 >>> 1) / j3) << 1;
        return ULong.m183constructorimpl(j4 + ((long) (Long.compare(ULong.m183constructorimpl(j2 - (j4 * j3)) ^ Long.MIN_VALUE, ULong.m183constructorimpl(j3) ^ Long.MIN_VALUE) < 0 ? 0 : 1)));
    }

    @PublishedApi
    /* JADX INFO: renamed from: ulongRemainder-eb3DHEI, reason: not valid java name */
    public static final long m363ulongRemaindereb3DHEI(long j2, long j3) {
        if (j3 < 0) {
            return Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) < 0 ? j2 : ULong.m183constructorimpl(j2 - j3);
        }
        if (j2 >= 0) {
            return ULong.m183constructorimpl(j2 % j3);
        }
        long j4 = j2 - ((((j2 >>> 1) / j3) << 1) * j3);
        if (Long.compare(ULong.m183constructorimpl(j4) ^ Long.MIN_VALUE, ULong.m183constructorimpl(j3) ^ Long.MIN_VALUE) < 0) {
            j3 = 0;
        }
        return ULong.m183constructorimpl(j4 - j3);
    }

    @PublishedApi
    public static final double ulongToDouble(long j2) {
        return ((j2 >>> 11) * ((double) 2048)) + (j2 & 2047);
    }

    @PublishedApi
    @InlineOnly
    private static final float ulongToFloat(long j2) {
        return (float) ulongToDouble(j2);
    }

    @InlineOnly
    private static final String ulongToString(long j2) {
        return ulongToString(j2, 10);
    }

    @InlineOnly
    private static final String uintToString(int i3, int i4) {
        return ulongToString(((long) i3) & 4294967295L, i4);
    }

    public static final String ulongToString(long j2, int i3) {
        if (j2 >= 0) {
            String string = Long.toString(j2, CharsKt.checkRadix(i3));
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
        long j3 = i3;
        long j4 = ((j2 >>> 1) / j3) << 1;
        long j5 = j2 - (j4 * j3);
        if (j5 >= j3) {
            j5 -= j3;
            j4++;
        }
        StringBuilder sb = new StringBuilder();
        String string2 = Long.toString(j4, CharsKt.checkRadix(i3));
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        sb.append(string2);
        String string3 = Long.toString(j5, CharsKt.checkRadix(i3));
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        sb.append(string3);
        return sb.toString();
    }
}
