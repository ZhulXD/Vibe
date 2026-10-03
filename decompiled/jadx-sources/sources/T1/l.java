package T1;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f2222a;

    static {
        Charset charset = Charsets.UTF_8;
        byte[] bytes = "OggS".getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        byte[] bytes2 = "RIFF".getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
        byte[] bytes3 = "TLG0".getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes3, "getBytes(...)");
        byte[] bytes4 = "TLG5".getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes4, "getBytes(...)");
        byte[] bytes5 = "TLG6".getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes5, "getBytes(...)");
        f2222a = CollectionsKt.listOf((Object[]) new byte[][]{new byte[]{-119, 80, 78, 71}, bytes, bytes2, bytes3, bytes4, bytes5});
    }

    public static int a(byte[] head, long j2) {
        int i3;
        Intrinsics.checkNotNullParameter(head, "head");
        IntRange intRange = new IntRange(0, 3);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf((int) ((j2 >>> (((IntIterator) it).nextInt() * 8)) & 255)));
        }
        List mutableList = CollectionsKt.toMutableList((Collection) arrayList);
        long j3 = j2 >>> 8;
        long j4 = j2 >>> 16;
        long j5 = j2 >>> 24;
        mutableList.add(Integer.valueOf((int) ((((j2 ^ j3) ^ j4) ^ j5) & 255)));
        mutableList.add(Integer.valueOf((int) ((j3 + j2 + j4 + j5) & 255)));
        List<byte[]> listPlus = CollectionsKt___CollectionsKt.plus((Collection) f2222a, (Iterable) CollectionsKt.listOf((Object[]) new byte[][]{new byte[]{-1, -2}, new byte[]{47, 47}}));
        Iterator it2 = mutableList.iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Number) it2.next()).intValue();
            if (listPlus == null || !listPlus.isEmpty()) {
                for (byte[] bArr : listPlus) {
                    if (head.length >= bArr.length) {
                        Iterable indices = ArraysKt.getIndices(bArr);
                        if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
                            Iterator it3 = indices.iterator();
                            while (it3.hasNext()) {
                                int iNextInt = ((IntIterator) it3).nextInt();
                                if (((head[iNextInt] & UByte.MAX_VALUE) ^ iIntValue) == (bArr[iNextInt] & UByte.MAX_VALUE)) {
                                }
                            }
                        }
                        return iIntValue;
                    }
                }
            }
        }
        Iterator it4 = mutableList.iterator();
        while (it4.hasNext()) {
            int iIntValue2 = ((Number) it4.next()).intValue();
            if (head.length != 0 && ((i3 = (head[0] & UByte.MAX_VALUE) ^ iIntValue2) == 59 || i3 == 91)) {
                return iIntValue2;
            }
        }
        return (int) (j2 & 255);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0067  */
    public static Integer b(byte[] data) {
        Integer numValueOf;
        int i3;
        char c3;
        Integer num;
        double d3;
        int iNextInt;
        Intrinsics.checkNotNullParameter(data, "head");
        int i4 = 0;
        if (data.length >= 4) {
            for (byte[] bArr : f2222a) {
                int i5 = (data[0] & UByte.MAX_VALUE) ^ (bArr[0] & UByte.MAX_VALUE);
                Iterable intRange = new IntRange(0, 3);
                if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                    Iterator it = intRange.iterator();
                    do {
                        if (it.hasNext()) {
                            iNextInt = ((IntIterator) it).nextInt();
                        }
                    } while (((data[iNextInt] & UByte.MAX_VALUE) ^ i5) == (bArr[iNextInt] & UByte.MAX_VALUE));
                }
                return Integer.valueOf(i5);
            }
        }
        Intrinsics.checkNotNullParameter(data, "data");
        char c4 = 1;
        if (data.length < 5) {
            numValueOf = null;
        } else {
            int i6 = (data[0] & UByte.MAX_VALUE) ^ 254;
            numValueOf = Integer.valueOf(i6);
            if (((data[1] & UByte.MAX_VALUE) ^ i6) != 254 || ((data[3] & UByte.MAX_VALUE) ^ i6) != 255 || (i6 ^ (data[4] & UByte.MAX_VALUE)) != 254) {
                numValueOf = null;
            }
        }
        if (numValueOf != null) {
            return Integer.valueOf(numValueOf.intValue());
        }
        if (data.length < 8) {
            return null;
        }
        int i7 = (data[0] & UByte.MAX_VALUE) ^ 255;
        if (((data[1] & UByte.MAX_VALUE) ^ i7) == 254) {
            int iMin = Math.min(64, data.length & (-2));
            int i8 = 2;
            int i9 = 0;
            i3 = 0;
            num = null;
            while (true) {
                c3 = c4;
                int i10 = i8 + 1;
                if (i10 >= iMin) {
                    break;
                }
                int i11 = (((data[i10] & UByte.MAX_VALUE) ^ i7) << 8) | ((data[i8] & UByte.MAX_VALUE) ^ i7);
                i4++;
                if (i11 == 9 || i11 == 10 || i11 == 13 || ((32 <= i11 && i11 < 127) || ((12352 <= i11 && i11 < 12544) || ((19968 <= i11 && i11 < 40960) || (65280 <= i11 && i11 < 65520))))) {
                    i9++;
                }
                i8 += 2;
                c4 = c3;
            }
            d3 = 0.9d;
            if (i4 > 0 && ((double) i9) / ((double) i4) >= 0.9d) {
                return Integer.valueOf(i7);
            }
        } else {
            i3 = 0;
            c3 = 1;
            num = null;
            d3 = 0.9d;
        }
        int i12 = (data[i3] & UByte.MAX_VALUE) ^ 47;
        if (((data[c3] & UByte.MAX_VALUE) ^ i12) != 47) {
            return num;
        }
        int iMin2 = Math.min(32, data.length);
        int i13 = i3;
        for (int i14 = 2; i14 < iMin2; i14++) {
            int i15 = (data[i14] & UByte.MAX_VALUE) ^ i12;
            if (i15 == 9 || i15 == 10 || i15 == 13 || (32 <= i15 && i15 < 127)) {
                i13++;
            }
        }
        return (iMin2 <= 2 || ((double) i13) / ((double) (iMin2 - 2)) < d3) ? num : Integer.valueOf(i12);
    }
}
