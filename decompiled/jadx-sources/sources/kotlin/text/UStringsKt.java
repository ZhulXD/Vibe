package kotlin.text;

import androidx.core.internal.view.SupportMenu;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0011\u001a\u0019\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u00020\u0007*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014\u001a\u0019\u0010\u0013\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0015\u001a\u0011\u0010\u0016\u001a\u00020\n*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0017\u001a\u0019\u0010\u0016\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0018\u001a\u0011\u0010\u0019\u001a\u00020\r*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u0019\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u001b\u001a\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007\u001a\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007\u001a\u0016\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007\u001a\u0016\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006 "}, d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toUByteOrNull", "toUShortOrNull", "toUIntOrNull", "toULongOrNull", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "UStringsKt")
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-JSWoG40, reason: not valid java name */
    public static final String m1319toStringJSWoG40(long j2, int i3) {
        return UnsignedKt.ulongToString(j2, CharsKt__CharJVMKt.checkRadix(i3));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-LxnNnR4, reason: not valid java name */
    public static final String m1320toStringLxnNnR4(byte b, int i3) {
        String string = Integer.toString(b & UByte.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i3));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-V7xB4Y4, reason: not valid java name */
    public static final String m1321toStringV7xB4Y4(int i3, int i4) {
        return UnsignedKt.ulongToString(((long) i3) & 4294967295L, CharsKt__CharJVMKt.checkRadix(i4));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-olVBNx4, reason: not valid java name */
    public static final String m1322toStringolVBNx4(short s2, int i3) {
        String string = Integer.toString(s2 & UShort.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i3));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UByte toUByteOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UInt toUIntOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final ULong toULongOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UShort toUShortOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str, i3);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UByte toUByteOrNull(String str, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i3);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m104constructorimpl(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.m21boximpl(UByte.m27constructorimpl((byte) data));
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i3);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UInt toUIntOrNull(String str, int i3) {
        int i4;
        UInt uInt;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i3);
        int length = str.length();
        UInt uInt2 = null;
        if (length == 0) {
            return null;
        }
        int iM104constructorimpl = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i4 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i4 = 0;
        }
        int iM104constructorimpl2 = UInt.m104constructorimpl(i3);
        int i5 = 119304647;
        while (i4 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i4), i3);
            if (iDigitOf < 0) {
                return uInt2;
            }
            int i6 = iM104constructorimpl ^ Integer.MIN_VALUE;
            if (Integer.compare(i6, i5 ^ Integer.MIN_VALUE) <= 0) {
                uInt = uInt2;
            } else {
                if (i5 != 119304647) {
                    return uInt2;
                }
                uInt = uInt2;
                i5 = (int) ((((long) (-1)) & 4294967295L) / (((long) iM104constructorimpl2) & 4294967295L));
                if (Integer.compare(i6, i5 ^ Integer.MIN_VALUE) > 0) {
                    return uInt;
                }
            }
            int iM104constructorimpl3 = UInt.m104constructorimpl(iM104constructorimpl * iM104constructorimpl2);
            iM104constructorimpl = UInt.m104constructorimpl(UInt.m104constructorimpl(iDigitOf) + iM104constructorimpl3);
            if (Integer.compare(iM104constructorimpl ^ Integer.MIN_VALUE, iM104constructorimpl3 ^ Integer.MIN_VALUE) < 0) {
                return uInt;
            }
            i4++;
            uInt2 = uInt;
        }
        return UInt.m98boximpl(iM104constructorimpl);
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(String str, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str, i3);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0097 A[SYNTHETIC] */
    @SinceKotlin(version = "1.5")
    public static final ULong toULongOrNull(String str, int i3) {
        int i4;
        long j2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i3);
        int length = str.length();
        ULong uLong = null;
        if (length == 0) {
            return null;
        }
        char cCharAt = str.charAt(0);
        int i5 = 1;
        if (Intrinsics.compare((int) cCharAt, 48) >= 0) {
            i4 = 0;
        } else {
            if (length == 1 || cCharAt != '+') {
                return null;
            }
            i4 = 1;
        }
        long jM183constructorimpl = ULong.m183constructorimpl(i3);
        long j3 = 0;
        long jM183constructorimpl2 = 0;
        long j4 = 512409557603043100L;
        while (i4 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i4), i3);
            if (iDigitOf < 0) {
                return uLong;
            }
            ULong uLong2 = uLong;
            long j5 = jM183constructorimpl2 ^ Long.MIN_VALUE;
            int i6 = i5;
            long j6 = jM183constructorimpl;
            if (Long.compare(j5, j4 ^ Long.MIN_VALUE) > 0) {
                if (j4 == 512409557603043100L) {
                    if (j6 < j3) {
                        if (Long.MAX_VALUE < (j6 ^ Long.MIN_VALUE)) {
                            j4 = j3;
                        } else {
                            j2 = 1;
                        }
                        if (Long.compare(j5, j4 ^ Long.MIN_VALUE) > 0) {
                        }
                    } else {
                        long j7 = (Long.MAX_VALUE / j6) << i6;
                        j2 = j7 + ((long) ((((-1) - (j7 * j6)) ^ Long.MIN_VALUE) >= (j6 ^ Long.MIN_VALUE) ? i6 : 0));
                    }
                    j4 = j2;
                    if (Long.compare(j5, j4 ^ Long.MIN_VALUE) > 0) {
                    }
                }
                return uLong2;
            }
            long jM183constructorimpl3 = ULong.m183constructorimpl(jM183constructorimpl2 * j6);
            jM183constructorimpl2 = ULong.m183constructorimpl(ULong.m183constructorimpl(((long) UInt.m104constructorimpl(iDigitOf)) & 4294967295L) + jM183constructorimpl3);
            if (Long.compare(jM183constructorimpl2 ^ Long.MIN_VALUE, jM183constructorimpl3 ^ Long.MIN_VALUE) < 0) {
                return uLong2;
            }
            i4++;
            uLong = uLong2;
            i5 = i6;
            jM183constructorimpl = j6;
            j3 = 0;
        }
        return ULong.m177boximpl(jM183constructorimpl2);
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str, i3);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    public static final UShort toUShortOrNull(String str, int i3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i3);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m104constructorimpl(SupportMenu.USER_MASK) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.m284boximpl(UShort.m290constructorimpl((short) data));
    }
}
