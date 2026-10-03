package kotlin;

import androidx.core.internal.view.SupportMenu;
import kotlin.internal.InlineOnly;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0005\n\u0002\b\u0007\n\u0002\u0010\n\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0006\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0014\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\u0007\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\u0005\u001a\u00020\n*\u00020\nH\u0087\b\u001a\r\u0010\u0006\u001a\u00020\n*\u00020\nH\u0087\b\u001a\u0014\u0010\u0007\u001a\u00020\n*\u00020\n2\u0006\u0010\b\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\t\u001a\u00020\n*\u00020\n2\u0006\u0010\b\u001a\u00020\u0001H\u0007¨\u0006\u000b"}, d2 = {"countOneBits", "", "", "countLeadingZeroBits", "countTrailingZeroBits", "takeHighestOneBit", "takeLowestOneBit", "rotateLeft", "bitCount", "rotateRight", "", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/NumbersKt")
class NumbersKt__NumbersKt extends NumbersKt__NumbersJVMKt {
    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(byte b) {
        return Integer.numberOfLeadingZeros(b & UByte.MAX_VALUE) - 24;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(byte b) {
        return Integer.bitCount(b & UByte.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(byte b) {
        return Integer.numberOfTrailingZeros(b | UByte.MIN_VALUE);
    }

    @SinceKotlin(version = "1.6")
    public static final byte rotateLeft(byte b, int i3) {
        int i4 = i3 & 7;
        return (byte) (((b & 255) >>> (8 - i4)) | (b << i4));
    }

    @SinceKotlin(version = "1.6")
    public static final byte rotateRight(byte b, int i3) {
        int i4 = i3 & 7;
        return (byte) (((b & 255) >>> i4) | (b << (8 - i4)));
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final byte takeHighestOneBit(byte b) {
        return (byte) Integer.highestOneBit(b & UByte.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final byte takeLowestOneBit(byte b) {
        return (byte) Integer.lowestOneBit(b);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(short s2) {
        return Integer.numberOfLeadingZeros(s2 & UShort.MAX_VALUE) - 16;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(short s2) {
        return Integer.bitCount(s2 & UShort.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(short s2) {
        return Integer.numberOfTrailingZeros(s2 | UShort.MIN_VALUE);
    }

    @SinceKotlin(version = "1.6")
    public static final short rotateLeft(short s2, int i3) {
        int i4 = i3 & 15;
        return (short) (((s2 & SupportMenu.USER_MASK) >>> (16 - i4)) | (s2 << i4));
    }

    @SinceKotlin(version = "1.6")
    public static final short rotateRight(short s2, int i3) {
        int i4 = i3 & 15;
        return (short) (((s2 & SupportMenu.USER_MASK) >>> i4) | (s2 << (16 - i4)));
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final short takeHighestOneBit(short s2) {
        return (short) Integer.highestOneBit(s2 & UShort.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final short takeLowestOneBit(short s2) {
        return (short) Integer.lowestOneBit(s2);
    }
}
