package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class UProgressionUtilKt {
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m1214differenceModuloWZ9TVnA(int i3, int i4, int i5) {
        long j2 = ((long) i5) & 4294967295L;
        int i6 = (int) ((((long) i3) & 4294967295L) % j2);
        int i7 = (int) ((((long) i4) & 4294967295L) % j2);
        int iCompare = Integer.compare(i6 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i7);
        int iM104constructorimpl = UInt.m104constructorimpl(i6 - i7);
        return iCompare >= 0 ? iM104constructorimpl : UInt.m104constructorimpl(iM104constructorimpl + i5);
    }

    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m1215differenceModulosambcqE(long j2, long j3, long j4) {
        if (j4 < 0) {
            if ((j2 ^ Long.MIN_VALUE) >= (j4 ^ Long.MIN_VALUE)) {
                j2 -= j4;
            }
        } else if (j2 >= 0) {
            j2 %= j4;
        } else {
            long j5 = j2 - ((((j2 >>> 1) / j4) << 1) * j4);
            j2 = j5 - ((j5 ^ Long.MIN_VALUE) >= (j4 ^ Long.MIN_VALUE) ? j4 : 0L);
        }
        if (j4 < 0) {
            if ((j3 ^ Long.MIN_VALUE) >= (j4 ^ Long.MIN_VALUE)) {
                j3 -= j4;
            }
        } else if (j3 >= 0) {
            j3 %= j4;
        } else {
            long j6 = j3 - ((((j3 >>> 1) / j4) << 1) * j4);
            j3 = j6 - ((j6 ^ Long.MIN_VALUE) >= (j4 ^ Long.MIN_VALUE) ? j4 : 0L);
        }
        int iCompare = Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE);
        long jM183constructorimpl = ULong.m183constructorimpl(j2 - j3);
        return iCompare >= 0 ? jM183constructorimpl : ULong.m183constructorimpl(jM183constructorimpl + j4);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m1216getProgressionLastElement7ftBX0g(long j2, long j3, long j4) {
        if (j4 > 0) {
            return Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) >= 0 ? j3 : ULong.m183constructorimpl(j3 - m1215differenceModulosambcqE(j3, j2, ULong.m183constructorimpl(j4)));
        }
        if (j4 < 0) {
            return Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) <= 0 ? j3 : ULong.m183constructorimpl(j3 + m1215differenceModulosambcqE(j2, j3, ULong.m183constructorimpl(-j4)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m1217getProgressionLastElementNkh28Cs(int i3, int i4, int i5) {
        if (i5 > 0) {
            if (Integer.compare(i3 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i4) < 0) {
                return UInt.m104constructorimpl(i4 - m1214differenceModuloWZ9TVnA(i4, i3, UInt.m104constructorimpl(i5)));
            }
        } else {
            if (i5 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (Integer.compare(i3 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i4) > 0) {
                return UInt.m104constructorimpl(i4 + m1214differenceModuloWZ9TVnA(i3, i4, UInt.m104constructorimpl(-i5)));
            }
        }
        return i4;
    }
}
