package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.ranges.ULongRange;
import kotlin.ranges.URangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 {2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001{B\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b \u0010\u0018J\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b!\u0010\u001aJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\"\u0010\u001cJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b#\u0010\u001eJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b%\u0010\u0018J\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b&\u0010\u001aJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b'\u0010\u001cJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b(\u0010\u001eJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b*\u0010\u0018J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b+\u0010\u001aJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b,\u0010\u001cJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b-\u0010\u001eJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b/\u0010\u0018J\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b0\u0010\u001aJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b1\u0010\u001cJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b2\u0010\u001eJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b4\u0010\u0018J\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b5\u0010\u001aJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b6\u0010\u001cJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b7\u0010\u001eJ\u0018\u00108\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b9\u0010:J\u0018\u00108\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b;\u0010<J\u0018\u00108\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b=\u0010\u0013J\u0018\u00108\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b>\u0010\u001eJ\u0010\u0010?\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b@\u0010\u0005J\u0010\u0010A\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bB\u0010\u0005J\u0018\u0010C\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bE\u0010FJ\u0018\u0010G\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bH\u0010FJ\u0018\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\f¢\u0006\u0004\bK\u0010\u001cJ\u0018\u0010L\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\f¢\u0006\u0004\bM\u0010\u001cJ\u0018\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bO\u0010\u001eJ\u0018\u0010P\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bQ\u0010\u001eJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bS\u0010\u001eJ\u0010\u0010T\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bU\u0010\u0005J\u0010\u0010V\u001a\u00020WH\u0087\b¢\u0006\u0004\bX\u0010YJ\u0010\u0010Z\u001a\u00020[H\u0087\b¢\u0006\u0004\b\\\u0010]J\u0010\u0010^\u001a\u00020\tH\u0087\b¢\u0006\u0004\b_\u0010`J\u0010\u0010a\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bb\u0010\u0005J\u0010\u0010c\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\bd\u0010YJ\u0010\u0010e\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\bf\u0010]J\u0010\u0010g\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\bh\u0010`J\u0010\u0010i\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bj\u0010\u0005J\u0010\u0010k\u001a\u00020lH\u0087\b¢\u0006\u0004\bm\u0010nJ\u0010\u0010o\u001a\u00020pH\u0087\b¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020tH\u0016¢\u0006\u0004\bu\u0010vJ\u0013\u0010w\u001a\u00020x2\b\u0010\n\u001a\u0004\u0018\u00010yHÖ\u0003J\t\u0010z\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006|"}, d2 = {"Lkotlin/ULong;", "", "data", "", "constructor-impl", "(J)J", "getData$annotations", "()V", "compareTo", "", "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(JB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(JS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(JI)I", "compareTo-VKZWuLQ", "(JJ)I", "plus", "plus-7apg3OU", "(JB)J", "plus-xj2QHRw", "(JS)J", "plus-WZ4Q5Ns", "(JI)J", "plus-VKZWuLQ", "(JJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(JB)B", "mod-xj2QHRw", "(JS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-s-VKNKU", "dec", "dec-s-VKNKU", "rangeTo", "Lkotlin/ranges/ULongRange;", "rangeTo-VKZWuLQ", "(JJ)Lkotlin/ranges/ULongRange;", "rangeUntil", "rangeUntil-VKZWuLQ", "shl", "bitCount", "shl-s-VKNKU", "shr", "shr-s-VKNKU", "and", "and-VKZWuLQ", "or", "or-VKZWuLQ", "xor", "xor-VKZWuLQ", "inv", "inv-s-VKNKU", "toByte", "", "toByte-impl", "(J)B", "toShort", "", "toShort-impl", "(J)S", "toInt", "toInt-impl", "(J)I", "toLong", "toLong-impl", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", "", "toFloat-impl", "(J)F", "toDouble", "", "toDouble-impl", "(J)D", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "equals", "", "", "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
public final class ULong implements Comparable<ULong> {
    public static final long MAX_VALUE = -1;
    public static final long MIN_VALUE = 0;
    public static final int SIZE_BITS = 64;
    public static final int SIZE_BYTES = 8;
    private final long data;

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ ULong(long j2) {
        this.data = j2;
    }

    @InlineOnly
    /* JADX INFO: renamed from: and-VKZWuLQ, reason: not valid java name */
    private static final long m176andVKZWuLQ(long j2, long j3) {
        return m183constructorimpl(j2 & j3);
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ULong m177boximpl(long j2) {
        return new ULong(j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static final int m178compareTo7apg3OU(long j2, byte b) {
        return Long.compare(j2 ^ Long.MIN_VALUE, m183constructorimpl(((long) b) & 255) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private int m179compareToVKZWuLQ(long j2) {
        return UnsignedKt.ulongCompare(getData(), j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static final int m181compareToWZ4Q5Ns(long j2, int i3) {
        return Long.compare(j2 ^ Long.MIN_VALUE, m183constructorimpl(((long) i3) & 4294967295L) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static final int m182compareToxj2QHRw(long j2, short s2) {
        return Long.compare(j2 ^ Long.MIN_VALUE, m183constructorimpl(((long) s2) & 65535) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: dec-s-VKNKU, reason: not valid java name */
    private static final long m184decsVKNKU(long j2) {
        return m183constructorimpl(j2 - 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-7apg3OU, reason: not valid java name */
    private static final long m185div7apg3OU(long j2, byte b) {
        long jM183constructorimpl = m183constructorimpl(((long) b) & 255);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j2 >= 0) {
            return j2 / jM183constructorimpl;
        }
        long j3 = ((j2 >>> 1) / jM183constructorimpl) << 1;
        return j3 + ((long) (((j2 - (j3 * jM183constructorimpl)) ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m186divVKZWuLQ(long j2, long j3) {
        return UnsignedKt.m362ulongDivideeb3DHEI(j2, j3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final long m187divWZ4Q5Ns(long j2, int i3) {
        long jM183constructorimpl = m183constructorimpl(((long) i3) & 4294967295L);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j2 >= 0) {
            return j2 / jM183constructorimpl;
        }
        long j3 = ((j2 >>> 1) / jM183constructorimpl) << 1;
        return j3 + ((long) (((j2 - (j3 * jM183constructorimpl)) ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-xj2QHRw, reason: not valid java name */
    private static final long m188divxj2QHRw(long j2, short s2) {
        long jM183constructorimpl = m183constructorimpl(((long) s2) & 65535);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j2 >= 0) {
            return j2 / jM183constructorimpl;
        }
        long j3 = ((j2 >>> 1) / jM183constructorimpl) << 1;
        return j3 + ((long) (((j2 - (j3 * jM183constructorimpl)) ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m189equalsimpl(long j2, Object obj) {
        return (obj instanceof ULong) && j2 == ((ULong) obj).getData();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m190equalsimpl0(long j2, long j3) {
        return j2 == j3;
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final long m191floorDiv7apg3OU(long j2, byte b) {
        long jM183constructorimpl = m183constructorimpl(((long) b) & 255);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j2 >= 0) {
            return j2 / jM183constructorimpl;
        }
        long j3 = ((j2 >>> 1) / jM183constructorimpl) << 1;
        return j3 + ((long) (((j2 - (j3 * jM183constructorimpl)) ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m192floorDivVKZWuLQ(long j2, long j3) {
        if (j3 < 0) {
            return (j2 ^ Long.MIN_VALUE) < (j3 ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j2 >= 0) {
            return j2 / j3;
        }
        long j4 = ((j2 >>> 1) / j3) << 1;
        return j4 + ((long) (((j2 - (j4 * j3)) ^ Long.MIN_VALUE) < (j3 ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final long m193floorDivWZ4Q5Ns(long j2, int i3) {
        long jM183constructorimpl = m183constructorimpl(((long) i3) & 4294967295L);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j2 >= 0) {
            return j2 / jM183constructorimpl;
        }
        long j3 = ((j2 >>> 1) / jM183constructorimpl) << 1;
        return j3 + ((long) (((j2 - (j3 * jM183constructorimpl)) ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final long m194floorDivxj2QHRw(long j2, short s2) {
        long jM183constructorimpl = m183constructorimpl(((long) s2) & 65535);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j2 >= 0) {
            return j2 / jM183constructorimpl;
        }
        long j3 = ((j2 >>> 1) / jM183constructorimpl) << 1;
        return j3 + ((long) (((j2 - (j3 * jM183constructorimpl)) ^ Long.MIN_VALUE) < (jM183constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m195hashCodeimpl(long j2) {
        return Long.hashCode(j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inc-s-VKNKU, reason: not valid java name */
    private static final long m196incsVKNKU(long j2) {
        return m183constructorimpl(j2 + 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inv-s-VKNKU, reason: not valid java name */
    private static final long m197invsVKNKU(long j2) {
        return m183constructorimpl(~j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-7apg3OU, reason: not valid java name */
    private static final long m198minus7apg3OU(long j2, byte b) {
        return m183constructorimpl(j2 - m183constructorimpl(((long) b) & 255));
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m199minusVKZWuLQ(long j2, long j3) {
        return m183constructorimpl(j2 - j3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final long m200minusWZ4Q5Ns(long j2, int i3) {
        return m183constructorimpl(j2 - m183constructorimpl(((long) i3) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final long m201minusxj2QHRw(long j2, short s2) {
        return m183constructorimpl(j2 - m183constructorimpl(((long) s2) & 65535));
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m202mod7apg3OU(long j2, byte b) {
        long jM183constructorimpl = m183constructorimpl(((long) b) & 255);
        if (jM183constructorimpl < 0) {
            if ((j2 ^ Long.MIN_VALUE) >= (Long.MIN_VALUE ^ jM183constructorimpl)) {
                j2 -= jM183constructorimpl;
            }
        } else if (j2 >= 0) {
            j2 %= jM183constructorimpl;
        } else {
            j2 -= (((j2 >>> 1) / jM183constructorimpl) << 1) * jM183constructorimpl;
            if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl)) {
                jM183constructorimpl = 0;
            }
            j2 -= jM183constructorimpl;
        }
        return UByte.m27constructorimpl((byte) j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m203modVKZWuLQ(long j2, long j3) {
        if (j3 < 0) {
            return (j2 ^ Long.MIN_VALUE) < (j3 ^ Long.MIN_VALUE) ? j2 : j2 - j3;
        }
        if (j2 >= 0) {
            return j2 % j3;
        }
        long j4 = j2 - ((((j2 >>> 1) / j3) << 1) * j3);
        if ((j4 ^ Long.MIN_VALUE) < (j3 ^ Long.MIN_VALUE)) {
            j3 = 0;
        }
        return j4 - j3;
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m204modWZ4Q5Ns(long j2, int i3) {
        long jM183constructorimpl = m183constructorimpl(((long) i3) & 4294967295L);
        if (jM183constructorimpl < 0) {
            if ((j2 ^ Long.MIN_VALUE) >= (Long.MIN_VALUE ^ jM183constructorimpl)) {
                j2 -= jM183constructorimpl;
            }
        } else if (j2 >= 0) {
            j2 %= jM183constructorimpl;
        } else {
            j2 -= (((j2 >>> 1) / jM183constructorimpl) << 1) * jM183constructorimpl;
            if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl)) {
                jM183constructorimpl = 0;
            }
            j2 -= jM183constructorimpl;
        }
        return UInt.m104constructorimpl((int) j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m205modxj2QHRw(long j2, short s2) {
        long jM183constructorimpl = m183constructorimpl(((long) s2) & 65535);
        if (jM183constructorimpl < 0) {
            if ((j2 ^ Long.MIN_VALUE) >= (Long.MIN_VALUE ^ jM183constructorimpl)) {
                j2 -= jM183constructorimpl;
            }
        } else if (j2 >= 0) {
            j2 %= jM183constructorimpl;
        } else {
            j2 -= (((j2 >>> 1) / jM183constructorimpl) << 1) * jM183constructorimpl;
            if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl)) {
                jM183constructorimpl = 0;
            }
            j2 -= jM183constructorimpl;
        }
        return UShort.m290constructorimpl((short) j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: or-VKZWuLQ, reason: not valid java name */
    private static final long m206orVKZWuLQ(long j2, long j3) {
        return m183constructorimpl(j2 | j3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-7apg3OU, reason: not valid java name */
    private static final long m207plus7apg3OU(long j2, byte b) {
        return m183constructorimpl(m183constructorimpl(((long) b) & 255) + j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m208plusVKZWuLQ(long j2, long j3) {
        return m183constructorimpl(j2 + j3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final long m209plusWZ4Q5Ns(long j2, int i3) {
        return m183constructorimpl(m183constructorimpl(((long) i3) & 4294967295L) + j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final long m210plusxj2QHRw(long j2, short s2) {
        return m183constructorimpl(m183constructorimpl(((long) s2) & 65535) + j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rangeTo-VKZWuLQ, reason: not valid java name */
    private static final ULongRange m211rangeToVKZWuLQ(long j2, long j3) {
        return new ULongRange(j2, j3, null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: rangeUntil-VKZWuLQ, reason: not valid java name */
    private static final ULongRange m212rangeUntilVKZWuLQ(long j2, long j3) {
        return URangesKt.m1278untileb3DHEI(j2, j3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-7apg3OU, reason: not valid java name */
    private static final long m213rem7apg3OU(long j2, byte b) {
        long jM183constructorimpl = m183constructorimpl(((long) b) & 255);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl) ? j2 : j2 - jM183constructorimpl;
        }
        if (j2 >= 0) {
            return j2 % jM183constructorimpl;
        }
        long j3 = j2 - ((((j2 >>> 1) / jM183constructorimpl) << 1) * jM183constructorimpl);
        if ((j3 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl)) {
            jM183constructorimpl = 0;
        }
        return j3 - jM183constructorimpl;
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m214remVKZWuLQ(long j2, long j3) {
        return UnsignedKt.m363ulongRemaindereb3DHEI(j2, j3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final long m215remWZ4Q5Ns(long j2, int i3) {
        long jM183constructorimpl = m183constructorimpl(((long) i3) & 4294967295L);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl) ? j2 : j2 - jM183constructorimpl;
        }
        if (j2 >= 0) {
            return j2 % jM183constructorimpl;
        }
        long j3 = j2 - ((((j2 >>> 1) / jM183constructorimpl) << 1) * jM183constructorimpl);
        if ((j3 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl)) {
            jM183constructorimpl = 0;
        }
        return j3 - jM183constructorimpl;
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final long m216remxj2QHRw(long j2, short s2) {
        long jM183constructorimpl = m183constructorimpl(((long) s2) & 65535);
        if (jM183constructorimpl < 0) {
            return (j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl) ? j2 : j2 - jM183constructorimpl;
        }
        if (j2 >= 0) {
            return j2 % jM183constructorimpl;
        }
        long j3 = j2 - ((((j2 >>> 1) / jM183constructorimpl) << 1) * jM183constructorimpl);
        if ((j3 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM183constructorimpl)) {
            jM183constructorimpl = 0;
        }
        return j3 - jM183constructorimpl;
    }

    @InlineOnly
    /* JADX INFO: renamed from: shl-s-VKNKU, reason: not valid java name */
    private static final long m217shlsVKNKU(long j2, int i3) {
        return m183constructorimpl(j2 << i3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: shr-s-VKNKU, reason: not valid java name */
    private static final long m218shrsVKNKU(long j2, int i3) {
        return m183constructorimpl(j2 >>> i3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-7apg3OU, reason: not valid java name */
    private static final long m219times7apg3OU(long j2, byte b) {
        return m183constructorimpl(m183constructorimpl(((long) b) & 255) * j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m220timesVKZWuLQ(long j2, long j3) {
        return m183constructorimpl(j2 * j3);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final long m221timesWZ4Q5Ns(long j2, int i3) {
        return m183constructorimpl(m183constructorimpl(((long) i3) & 4294967295L) * j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-xj2QHRw, reason: not valid java name */
    private static final long m222timesxj2QHRw(long j2, short s2) {
        return m183constructorimpl(m183constructorimpl(((long) s2) & 65535) * j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toByte-impl, reason: not valid java name */
    private static final byte m223toByteimpl(long j2) {
        return (byte) j2;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    private static final double m224toDoubleimpl(long j2) {
        return UnsignedKt.ulongToDouble(j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toFloat-impl, reason: not valid java name */
    private static final float m225toFloatimpl(long j2) {
        return (float) UnsignedKt.ulongToDouble(j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    private static final int m226toIntimpl(long j2) {
        return (int) j2;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toShort-impl, reason: not valid java name */
    private static final short m228toShortimpl(long j2) {
        return (short) j2;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m229toStringimpl(long j2) {
        return UnsignedKt.ulongToString(j2, 10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m230toUBytew2LRezQ(long j2) {
        return UByte.m27constructorimpl((byte) j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m231toUIntpVg5ArA(long j2) {
        return UInt.m104constructorimpl((int) j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m233toUShortMh2AYeg(long j2) {
        return UShort.m290constructorimpl((short) j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: xor-VKZWuLQ, reason: not valid java name */
    private static final long m234xorVKZWuLQ(long j2, long j3) {
        return m183constructorimpl(j2 ^ j3);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return UnsignedKt.ulongCompare(getData(), uLong.getData());
    }

    public boolean equals(Object other) {
        return m189equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m195hashCodeimpl(this.data);
    }

    public String toString() {
        return m229toStringimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getData() {
        return this.data;
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static int m180compareToVKZWuLQ(long j2, long j3) {
        return UnsignedKt.ulongCompare(j2, j3);
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m183constructorimpl(long j2) {
        return j2;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    private static final long m227toLongimpl(long j2) {
        return j2;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m232toULongsVKNKU(long j2) {
        return j2;
    }
}
