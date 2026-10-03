package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\t\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010\u0006\u001a\u00020\u0007*\u00020\u0002H\u0087\b\u001a\r\u0010\b\u001a\u00020\u0007*\u00020\u0002H\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0087\b\u001a\r\u0010\u0006\u001a\u00020\f*\u00020\u0003H\u0087\b\u001a\r\u0010\b\u001a\u00020\f*\u00020\u0003H\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u000b\u001a\u00020\fH\u0087\b\u001a\r\u0010\u000e\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u000f\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u0010\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u0011\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u0012\u001a\u00020\f*\u00020\fH\u0087\b\u001a\u0015\u0010\u0013\u001a\u00020\f*\u00020\f2\u0006\u0010\u0014\u001a\u00020\fH\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\f*\u00020\f2\u0006\u0010\u0014\u001a\u00020\fH\u0087\b\u001a\r\u0010\u000e\u001a\u00020\f*\u00020\u0007H\u0087\b\u001a\r\u0010\u000f\u001a\u00020\f*\u00020\u0007H\u0087\b\u001a\r\u0010\u0010\u001a\u00020\f*\u00020\u0007H\u0087\b\u001a\r\u0010\u0011\u001a\u00020\u0007*\u00020\u0007H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0007*\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0013\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\fH\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\fH\u0087\b¨\u0006\u0016"}, d2 = {"isNaN", "", "", "", "isInfinite", "isFinite", "toBits", "", "toRawBits", "fromBits", "Lkotlin/Double$Companion;", "bits", "", "Lkotlin/Float$Companion;", "countOneBits", "countLeadingZeroBits", "countTrailingZeroBits", "takeHighestOneBit", "takeLowestOneBit", "rotateLeft", "bitCount", "rotateRight", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/NumbersKt")
class NumbersKt__NumbersJVMKt extends NumbersKt__FloorDivModKt {
    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(int i3) {
        return Integer.numberOfLeadingZeros(i3);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(int i3) {
        return Integer.bitCount(i3);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(int i3) {
        return Integer.numberOfTrailingZeros(i3);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double fromBits(DoubleCompanionObject doubleCompanionObject, long j2) {
        Intrinsics.checkNotNullParameter(doubleCompanionObject, "<this>");
        return Double.longBitsToDouble(j2);
    }

    @InlineOnly
    private static final boolean isFinite(double d3) {
        return Math.abs(d3) <= Double.MAX_VALUE;
    }

    @InlineOnly
    private static final boolean isInfinite(double d3) {
        return Double.isInfinite(d3);
    }

    @InlineOnly
    private static final boolean isNaN(double d3) {
        return Double.isNaN(d3);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final int rotateLeft(int i3, int i4) {
        return Integer.rotateLeft(i3, i4);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final int rotateRight(int i3, int i4) {
        return Integer.rotateRight(i3, i4);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int takeHighestOneBit(int i3) {
        return Integer.highestOneBit(i3);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int takeLowestOneBit(int i3) {
        return Integer.lowestOneBit(i3);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toBits(double d3) {
        return Double.doubleToLongBits(d3);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toRawBits(double d3) {
        return Double.doubleToRawLongBits(d3);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(long j2) {
        return Long.numberOfLeadingZeros(j2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(long j2) {
        return Long.bitCount(j2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(long j2) {
        return Long.numberOfTrailingZeros(j2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float fromBits(FloatCompanionObject floatCompanionObject, int i3) {
        Intrinsics.checkNotNullParameter(floatCompanionObject, "<this>");
        return Float.intBitsToFloat(i3);
    }

    @InlineOnly
    private static final boolean isFinite(float f) {
        return Math.abs(f) <= Float.MAX_VALUE;
    }

    @InlineOnly
    private static final boolean isInfinite(float f) {
        return Float.isInfinite(f);
    }

    @InlineOnly
    private static final boolean isNaN(float f) {
        return Float.isNaN(f);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final long rotateLeft(long j2, int i3) {
        return Long.rotateLeft(j2, i3);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final long rotateRight(long j2, int i3) {
        return Long.rotateRight(j2, i3);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final long takeHighestOneBit(long j2) {
        return Long.highestOneBit(j2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final long takeLowestOneBit(long j2) {
        return Long.lowestOneBit(j2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toBits(float f) {
        return Float.floatToIntBits(f);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toRawBits(float f) {
        return Float.floatToRawIntBits(f);
    }
}
