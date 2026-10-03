package N1;

import java.math.BigInteger;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BigInteger f1496a;
    public static final BigInteger b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BigInteger f1497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final BigInteger f1498d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f1499e;
    public static final w f;
    public static final w g;

    static {
        BigInteger ONE = BigInteger.ONE;
        BigInteger bigIntegerSubtract = ONE.shiftLeft(255).subtract(BigInteger.valueOf(19L));
        Intrinsics.checkNotNullExpressionValue(bigIntegerSubtract, "subtract(...)");
        f1496a = bigIntegerSubtract;
        BigInteger bigIntegerAdd = ONE.shiftLeft(252).add(new BigInteger("27742317777372353535851937790883648493"));
        Intrinsics.checkNotNullExpressionValue(bigIntegerAdd, "add(...)");
        b = bigIntegerAdd;
        BigInteger bigIntegerMod = BigInteger.valueOf(-121665L).multiply(BigInteger.valueOf(121666L).modInverse(bigIntegerSubtract)).mod(bigIntegerSubtract);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod, "mod(...)");
        f1497c = bigIntegerMod;
        BigInteger bigIntegerMod2 = bigIntegerMod.shiftLeft(1).mod(bigIntegerSubtract);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod2, "mod(...)");
        f1498d = bigIntegerMod2;
        BigInteger bigIntegerModPow = BigInteger.TWO.modPow(bigIntegerSubtract.subtract(ONE).shiftRight(2), bigIntegerSubtract);
        Intrinsics.checkNotNullExpressionValue(bigIntegerModPow, "modPow(...)");
        f1499e = bigIntegerModPow;
        BigInteger ZERO = BigInteger.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        Intrinsics.checkNotNullExpressionValue(ONE, "ONE");
        Intrinsics.checkNotNullExpressionValue(ONE, "ONE");
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        f = new w(ZERO, ONE, ONE, ZERO);
        BigInteger bigIntegerMod3 = BigInteger.valueOf(4L).multiply(BigInteger.valueOf(5L).modInverse(bigIntegerSubtract)).mod(bigIntegerSubtract);
        Intrinsics.checkNotNull(bigIntegerMod3);
        BigInteger bigIntegerD = d(bigIntegerMod3, 0);
        if (bigIntegerD == null) {
            throw new IllegalStateException("bad base point");
        }
        Intrinsics.checkNotNullExpressionValue(ONE, "ONE");
        BigInteger bigIntegerMod4 = bigIntegerD.multiply(bigIntegerMod3).mod(bigIntegerSubtract);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod4, "mod(...)");
        g = new w(bigIntegerD, bigIntegerMod3, ONE, bigIntegerMod4);
    }

    public static w a(w wVar, w wVar2) {
        BigInteger bigInteger = (BigInteger) wVar.b;
        BigInteger bigInteger2 = (BigInteger) wVar.f1493a;
        BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger2);
        BigInteger bigInteger3 = (BigInteger) wVar2.b;
        BigInteger bigInteger4 = (BigInteger) wVar2.f1493a;
        BigInteger bigIntegerMultiply = bigIntegerSubtract.multiply(bigInteger3.subtract(bigInteger4));
        BigInteger bigInteger5 = f1496a;
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigInteger5);
        BigInteger bigIntegerMod2 = ((BigInteger) wVar.b).add(bigInteger2).multiply(((BigInteger) wVar2.b).add(bigInteger4)).mod(bigInteger5);
        BigInteger bigIntegerMod3 = ((BigInteger) wVar.f1495d).multiply(f1498d).multiply((BigInteger) wVar2.f1495d).mod(bigInteger5);
        BigInteger bigIntegerMod4 = ((BigInteger) wVar.f1494c).shiftLeft(1).multiply((BigInteger) wVar2.f1494c).mod(bigInteger5);
        BigInteger bigIntegerSubtract2 = bigIntegerMod2.subtract(bigIntegerMod);
        BigInteger bigIntegerSubtract3 = bigIntegerMod4.subtract(bigIntegerMod3);
        BigInteger bigIntegerAdd = bigIntegerMod4.add(bigIntegerMod3);
        BigInteger bigIntegerAdd2 = bigIntegerMod2.add(bigIntegerMod);
        BigInteger bigIntegerMod5 = bigIntegerSubtract2.multiply(bigIntegerSubtract3).mod(bigInteger5);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod5, "mod(...)");
        BigInteger bigIntegerMod6 = bigIntegerAdd.multiply(bigIntegerAdd2).mod(bigInteger5);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod6, "mod(...)");
        BigInteger bigIntegerMod7 = bigIntegerSubtract3.multiply(bigIntegerAdd).mod(bigInteger5);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod7, "mod(...)");
        BigInteger bigIntegerMod8 = bigIntegerSubtract2.multiply(bigIntegerAdd2).mod(bigInteger5);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod8, "mod(...)");
        return new w(bigIntegerMod5, bigIntegerMod6, bigIntegerMod7, bigIntegerMod8);
    }

    public static w b(byte[] bArr) {
        if (bArr.length != 32) {
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        byte b3 = bArrCopyOf[31];
        bArrCopyOf[31] = (byte) (b3 & ByteCompanionObject.MAX_VALUE);
        BigInteger bigInteger = new BigInteger(1, ArraysKt.reversedArray(bArrCopyOf));
        BigInteger bigIntegerD = d(bigInteger, (b3 >> 7) & 1);
        if (bigIntegerD == null) {
            return null;
        }
        BigInteger ONE = BigInteger.ONE;
        Intrinsics.checkNotNullExpressionValue(ONE, "ONE");
        BigInteger bigIntegerMod = bigIntegerD.multiply(bigInteger).mod(f1496a);
        Intrinsics.checkNotNullExpressionValue(bigIntegerMod, "mod(...)");
        return new w(bigIntegerD, bigInteger, ONE, bigIntegerMod);
    }

    public static w c(BigInteger bigInteger, w wVar) {
        w wVarA = f;
        while (bigInteger.signum() > 0) {
            if (bigInteger.testBit(0)) {
                wVarA = a(wVarA, wVar);
            }
            wVar = a(wVar, wVar);
            bigInteger = bigInteger.shiftRight(1);
            Intrinsics.checkNotNullExpressionValue(bigInteger, "shiftRight(...)");
        }
        return wVarA;
    }

    public static BigInteger d(BigInteger bigInteger, int i3) {
        BigInteger bigInteger2 = f1496a;
        if (bigInteger.compareTo(bigInteger2) >= 0) {
            return null;
        }
        BigInteger bigIntegerMod = bigInteger.multiply(bigInteger).mod(bigInteger2);
        BigInteger bigInteger3 = BigInteger.ONE;
        BigInteger bigIntegerMod2 = bigIntegerMod.subtract(bigInteger3).multiply(f1497c.multiply(bigIntegerMod).add(bigInteger3).modInverse(bigInteger2)).mod(bigInteger2);
        if (bigIntegerMod2.signum() == 0) {
            if (i3 == 1) {
                return null;
            }
            return BigInteger.ZERO;
        }
        BigInteger bigIntegerModPow = bigIntegerMod2.modPow(bigInteger2.add(BigInteger.valueOf(3L)).shiftRight(3), bigInteger2);
        if (bigIntegerModPow.multiply(bigIntegerModPow).subtract(bigIntegerMod2).mod(bigInteger2).signum() != 0) {
            bigIntegerModPow = bigIntegerModPow.multiply(f1499e).mod(bigInteger2);
        }
        if (bigIntegerModPow.multiply(bigIntegerModPow).subtract(bigIntegerMod2).mod(bigInteger2).signum() != 0) {
            return null;
        }
        return bigIntegerModPow.testBit(0) != (i3 == 1) ? bigInteger2.subtract(bigIntegerModPow) : bigIntegerModPow;
    }
}
