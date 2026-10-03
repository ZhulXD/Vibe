package kotlin.collections;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m464partitionnroSd4(long[] jArr, int i3, int i4) {
        long j2;
        long jM243getsVKNKU = ULongArray.m243getsVKNKU(jArr, (i3 + i4) / 2);
        while (i3 <= i4) {
            while (true) {
                j2 = jM243getsVKNKU ^ Long.MIN_VALUE;
                if (Long.compare(ULongArray.m243getsVKNKU(jArr, i3) ^ Long.MIN_VALUE, j2) >= 0) {
                    break;
                }
                i3++;
            }
            while (Long.compare(ULongArray.m243getsVKNKU(jArr, i4) ^ Long.MIN_VALUE, j2) > 0) {
                i4--;
            }
            if (i3 <= i4) {
                long jM243getsVKNKU2 = ULongArray.m243getsVKNKU(jArr, i3);
                ULongArray.m248setk8EXiF4(jArr, i3, ULongArray.m243getsVKNKU(jArr, i4));
                ULongArray.m248setk8EXiF4(jArr, i4, jM243getsVKNKU2);
                i3++;
                i4--;
            }
        }
        return i3;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m465partition4UcCI2c(byte[] bArr, int i3, int i4) {
        int i5;
        byte bM85getw2LRezQ = UByteArray.m85getw2LRezQ(bArr, (i3 + i4) / 2);
        while (i3 <= i4) {
            while (true) {
                int iM85getw2LRezQ = UByteArray.m85getw2LRezQ(bArr, i3) & UByte.MAX_VALUE;
                i5 = bM85getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(iM85getw2LRezQ, i5) >= 0) {
                    break;
                }
                i3++;
            }
            while (Intrinsics.compare(UByteArray.m85getw2LRezQ(bArr, i4) & UByte.MAX_VALUE, i5) > 0) {
                i4--;
            }
            if (i3 <= i4) {
                byte bM85getw2LRezQ2 = UByteArray.m85getw2LRezQ(bArr, i3);
                UByteArray.m90setVurrAj0(bArr, i3, UByteArray.m85getw2LRezQ(bArr, i4));
                UByteArray.m90setVurrAj0(bArr, i4, bM85getw2LRezQ2);
                i3++;
                i4--;
            }
        }
        return i3;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m466partitionAa5vz7o(short[] sArr, int i3, int i4) {
        int i5;
        short sM348getMh2AYeg = UShortArray.m348getMh2AYeg(sArr, (i3 + i4) / 2);
        while (i3 <= i4) {
            while (true) {
                int iM348getMh2AYeg = UShortArray.m348getMh2AYeg(sArr, i3) & UShort.MAX_VALUE;
                i5 = sM348getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM348getMh2AYeg, i5) >= 0) {
                    break;
                }
                i3++;
            }
            while (Intrinsics.compare(UShortArray.m348getMh2AYeg(sArr, i4) & UShort.MAX_VALUE, i5) > 0) {
                i4--;
            }
            if (i3 <= i4) {
                short sM348getMh2AYeg2 = UShortArray.m348getMh2AYeg(sArr, i3);
                UShortArray.m353set01HTLdE(sArr, i3, UShortArray.m348getMh2AYeg(sArr, i4));
                UShortArray.m353set01HTLdE(sArr, i4, sM348getMh2AYeg2);
                i3++;
                i4--;
            }
        }
        return i3;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m467partitionoBK06Vg(int[] iArr, int i3, int i4) {
        int i5;
        int iM164getpVg5ArA = UIntArray.m164getpVg5ArA(iArr, (i3 + i4) / 2);
        while (i3 <= i4) {
            while (true) {
                i5 = iM164getpVg5ArA ^ Integer.MIN_VALUE;
                if (Integer.compare(UIntArray.m164getpVg5ArA(iArr, i3) ^ Integer.MIN_VALUE, i5) >= 0) {
                    break;
                }
                i3++;
            }
            while (Integer.compare(UIntArray.m164getpVg5ArA(iArr, i4) ^ Integer.MIN_VALUE, i5) > 0) {
                i4--;
            }
            if (i3 <= i4) {
                int iM164getpVg5ArA2 = UIntArray.m164getpVg5ArA(iArr, i3);
                UIntArray.m169setVXSXFK8(iArr, i3, UIntArray.m164getpVg5ArA(iArr, i4));
                UIntArray.m169setVXSXFK8(iArr, i4, iM164getpVg5ArA2);
                i3++;
                i4--;
            }
        }
        return i3;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m468quickSortnroSd4(long[] jArr, int i3, int i4) {
        int iM464partitionnroSd4 = m464partitionnroSd4(jArr, i3, i4);
        int i5 = iM464partitionnroSd4 - 1;
        if (i3 < i5) {
            m468quickSortnroSd4(jArr, i3, i5);
        }
        if (iM464partitionnroSd4 < i4) {
            m468quickSortnroSd4(jArr, iM464partitionnroSd4, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m469quickSort4UcCI2c(byte[] bArr, int i3, int i4) {
        int iM465partition4UcCI2c = m465partition4UcCI2c(bArr, i3, i4);
        int i5 = iM465partition4UcCI2c - 1;
        if (i3 < i5) {
            m469quickSort4UcCI2c(bArr, i3, i5);
        }
        if (iM465partition4UcCI2c < i4) {
            m469quickSort4UcCI2c(bArr, iM465partition4UcCI2c, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m470quickSortAa5vz7o(short[] sArr, int i3, int i4) {
        int iM466partitionAa5vz7o = m466partitionAa5vz7o(sArr, i3, i4);
        int i5 = iM466partitionAa5vz7o - 1;
        if (i3 < i5) {
            m470quickSortAa5vz7o(sArr, i3, i5);
        }
        if (iM466partitionAa5vz7o < i4) {
            m470quickSortAa5vz7o(sArr, iM466partitionAa5vz7o, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m471quickSortoBK06Vg(int[] iArr, int i3, int i4) {
        int iM467partitionoBK06Vg = m467partitionoBK06Vg(iArr, i3, i4);
        int i5 = iM467partitionoBK06Vg - 1;
        if (i3 < i5) {
            m471quickSortoBK06Vg(iArr, i3, i5);
        }
        if (iM467partitionoBK06Vg < i4) {
            m471quickSortoBK06Vg(iArr, iM467partitionoBK06Vg, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m472sortArraynroSd4(long[] array, int i3, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m468quickSortnroSd4(array, i3, i4 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m473sortArray4UcCI2c(byte[] array, int i3, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m469quickSort4UcCI2c(array, i3, i4 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m474sortArrayAa5vz7o(short[] array, int i3, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m470quickSortAa5vz7o(array, i3, i4 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m475sortArrayoBK06Vg(int[] array, int i3, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m471quickSortoBK06Vg(array, i3, i4 - 1);
    }
}
