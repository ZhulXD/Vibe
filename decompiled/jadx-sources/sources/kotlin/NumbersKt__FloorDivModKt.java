package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\bH\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\bH\u0087\b¨\u0006\t"}, d2 = {"floorDiv", "", "", "other", "mod", "", "", "", "", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/NumbersKt")
class NumbersKt__FloorDivModKt extends NumbersKt__BigIntegersKt {
    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b, byte b3) {
        int i3 = b / b3;
        return ((b ^ b3) >= 0 || b3 * i3 == b) ? i3 : i3 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(byte b, byte b3) {
        int i3 = b % b3;
        return (byte) (i3 + (b3 & (((i3 ^ b3) & ((-i3) | i3)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b, short s2) {
        int i3 = b / s2;
        return ((b ^ s2) >= 0 || s2 * i3 == b) ? i3 : i3 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(byte b, short s2) {
        int i3 = b % s2;
        return (short) (i3 + (s2 & (((i3 ^ s2) & ((-i3) | i3)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b, int i3) {
        int i4 = b / i3;
        return ((b ^ i3) >= 0 || i3 * i4 == b) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(byte b, int i3) {
        int i4 = b % i3;
        return i4 + (i3 & (((i4 ^ i3) & ((-i4) | i4)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(byte b, long j2) {
        long j3 = b;
        long j4 = j3 / j2;
        return ((j3 ^ j2) >= 0 || j2 * j4 == j3) ? j4 : j4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(byte b, long j2) {
        long j3 = ((long) b) % j2;
        return j3 + (j2 & (((j3 ^ j2) & ((-j3) | j3)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s2, byte b) {
        int i3 = s2 / b;
        return ((s2 ^ b) >= 0 || b * i3 == s2) ? i3 : i3 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(short s2, byte b) {
        int i3 = s2 % b;
        return (byte) (i3 + (b & (((i3 ^ b) & ((-i3) | i3)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s2, short s3) {
        int i3 = s2 / s3;
        return ((s2 ^ s3) >= 0 || s3 * i3 == s2) ? i3 : i3 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(short s2, short s3) {
        int i3 = s2 % s3;
        return (short) (i3 + (s3 & (((i3 ^ s3) & ((-i3) | i3)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s2, int i3) {
        int i4 = s2 / i3;
        return ((s2 ^ i3) >= 0 || i3 * i4 == s2) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(short s2, int i3) {
        int i4 = s2 % i3;
        return i4 + (i3 & (((i4 ^ i3) & ((-i4) | i4)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(short s2, long j2) {
        long j3 = s2;
        long j4 = j3 / j2;
        return ((j3 ^ j2) >= 0 || j2 * j4 == j3) ? j4 : j4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(short s2, long j2) {
        long j3 = ((long) s2) % j2;
        return j3 + (j2 & (((j3 ^ j2) & ((-j3) | j3)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i3, byte b) {
        int i4 = i3 / b;
        return ((i3 ^ b) >= 0 || b * i4 == i3) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(int i3, byte b) {
        int i4 = i3 % b;
        return (byte) (i4 + (b & (((i4 ^ b) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i3, short s2) {
        int i4 = i3 / s2;
        return ((i3 ^ s2) >= 0 || s2 * i4 == i3) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(int i3, short s2) {
        int i4 = i3 % s2;
        return (short) (i4 + (s2 & (((i4 ^ s2) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i3, int i4) {
        int i5 = i3 / i4;
        return ((i3 ^ i4) >= 0 || i4 * i5 == i3) ? i5 : i5 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(int i3, int i4) {
        int i5 = i3 % i4;
        return i5 + (i4 & (((i5 ^ i4) & ((-i5) | i5)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(int i3, long j2) {
        long j3 = i3;
        long j4 = j3 / j2;
        return ((j3 ^ j2) >= 0 || j2 * j4 == j3) ? j4 : j4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(int i3, long j2) {
        long j3 = ((long) i3) % j2;
        return j3 + (j2 & (((j3 ^ j2) & ((-j3) | j3)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j2, byte b) {
        long j3 = b;
        long j4 = j2 / j3;
        return ((j2 ^ j3) >= 0 || j3 * j4 == j2) ? j4 : j4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(long j2, byte b) {
        long j3 = b;
        long j4 = j2 % j3;
        return (byte) (j4 + (j3 & (((j4 ^ j3) & ((-j4) | j4)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j2, short s2) {
        long j3 = s2;
        long j4 = j2 / j3;
        return ((j2 ^ j3) >= 0 || j3 * j4 == j2) ? j4 : j4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(long j2, short s2) {
        long j3 = s2;
        long j4 = j2 % j3;
        return (short) (j4 + (j3 & (((j4 ^ j3) & ((-j4) | j4)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j2, int i3) {
        long j3 = i3;
        long j4 = j2 / j3;
        return ((j2 ^ j3) >= 0 || j3 * j4 == j2) ? j4 : j4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(long j2, int i3) {
        long j3 = i3;
        long j4 = j2 % j3;
        return (int) (j4 + (j3 & (((j4 ^ j3) & ((-j4) | j4)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j2, long j3) {
        long j4 = j2 / j3;
        return ((j2 ^ j3) >= 0 || j3 * j4 == j2) ? j4 : j4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(long j2, long j3) {
        long j4 = j2 % j3;
        return j4 + (j3 & (((j4 ^ j3) & ((-j4) | j4)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final float mod(float f, float f3) {
        float f4 = f % f3;
        return (f4 == 0.0f || Math.signum(f4) == Math.signum(f3)) ? f4 : f4 + f3;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(float f, double d3) {
        double d4 = ((double) f) % d3;
        return (d4 == 0.0d || Math.signum(d4) == Math.signum(d3)) ? d4 : d4 + d3;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(double d3, float f) {
        double d4 = f;
        double d5 = d3 % d4;
        return (d5 == 0.0d || Math.signum(d5) == Math.signum(d4)) ? d5 : d5 + d4;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(double d3, double d4) {
        double d5 = d3 % d4;
        return (d5 == 0.0d || Math.signum(d5) == Math.signum(d4)) ? d5 : d5 + d4;
    }
}
