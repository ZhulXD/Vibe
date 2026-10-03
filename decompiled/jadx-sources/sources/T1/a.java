package T1;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.UByte;
import kotlin.collections.IntIterator;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f2206a = {88, 80, 51, 13, 10, 32, 10, 26, -117, 103, 1};

    public static int a(int i3, int i4, long j2, String str) throws i {
        if (j2 < 0 || j2 > 2147483647L || ((long) i3) + j2 > i4) {
            throw new i(E.b.m("Invalid ", str, " bounds"), null);
        }
        return i3 + ((int) j2);
    }

    public static byte[] b(byte[] data, long j2) throws i {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter("XP3 index", "label");
        long j3 = 0;
        if (j2 < 0 || j2 > 16777216 || j2 > 2147483647L) {
            throw new i("XP3 index size is invalid", null);
        }
        Inflater inflater = new Inflater();
        try {
            inflater.setInput(data);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) Math.min(j2, 262144L));
            byte[] bArr = new byte[65536];
            while (!inflater.finished()) {
                try {
                    int iInflate = inflater.inflate(bArr);
                    if (iInflate == 0) {
                        if (!inflater.needsDictionary() && !inflater.needsInput()) {
                            throw new i("Stalled XP3 index zlib stream", null);
                        }
                        throw new i("Unfinished XP3 index zlib stream", null);
                    }
                    long j4 = iInflate;
                    if (j3 > j2 - j4) {
                        throw new i("XP3 index expands beyond declared size", null);
                    }
                    byteArrayOutputStream.write(bArr, 0, iInflate);
                    j3 += j4;
                } catch (DataFormatException e2) {
                    throw new i("Invalid XP3 index zlib stream", e2);
                }
            }
            if (j3 != j2) {
                throw new i("XP3 index size mismatch", null);
            }
            if (inflater.getRemaining() == 0) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                inflater.end();
                return byteArray;
            }
            throw new i("Trailing data in XP3 index zlib stream", null);
        } catch (Throwable th) {
            inflater.end();
            throw th;
        }
    }

    public static j c(File file) {
        boolean zEquals;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(file, "file");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            byte[] bArr = new byte[11];
            try {
                randomAccessFile.seek(0L);
                randomAccessFile.readFully(bArr);
                zEquals = Arrays.equals(bArr, f2206a);
            } catch (Exception unused) {
                zEquals = false;
            }
            if (!zEquals) {
                throw new i("Invalid XP3 magic header", null);
            }
            byte[] bArrG = g(randomAccessFile, h(randomAccessFile));
            int i3 = 1;
            if ((bArrG.length >= 4 && Intrinsics.areEqual(new String(bArrG, 0, 4, Charsets.US_ASCII), "File")) || bArrG.length < 4) {
                numValueOf = null;
            } else {
                while (true) {
                    if (i3 < 256) {
                        Iterable intRange = new IntRange(0, 3);
                        if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                            Iterator it = intRange.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    int iNextInt = ((IntIterator) it).nextInt();
                                    byte b = (byte) (bArrG[iNextInt] ^ i3);
                                    byte[] bytes = "File".getBytes(Charsets.UTF_8);
                                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                                    if (b != bytes[iNextInt]) {
                                        i3++;
                                    }
                                }
                            }
                        }
                        int length = bArrG.length;
                        byte[] bArr2 = new byte[length];
                        for (int i4 = 0; i4 < length; i4++) {
                            bArr2[i4] = (byte) (bArrG[i4] ^ i3);
                        }
                        numValueOf = Integer.valueOf(i3);
                        bArrG = bArr2;
                    } else {
                        numValueOf = null;
                    }
                }
            }
            j jVar = new j(file, d(bArrG), numValueOf);
            CloseableKt.closeFinally(randomAccessFile, null);
            return jVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(randomAccessFile, th);
                throw th2;
            }
        }
    }

    public static ArrayList d(byte[] bArr) throws i {
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < bArr.length) {
            int i4 = 12;
            if (bArr.length - i3 < 12) {
                throw new i("Truncated index chunk", null);
            }
            int i5 = 4;
            String str = new String(bArr, i3, 4, Charsets.US_ASCII);
            long j2 = j(bArr, i3 + 4);
            int i6 = i3 + 12;
            int iA = a(i6, bArr.length, j2, "index chunk");
            if (Intrinsics.areEqual(str, "File")) {
                ArrayList arrayList2 = new ArrayList();
                String str2 = null;
                Long lValueOf = null;
                int i7 = 0;
                long jI = 0;
                while (i6 < iA) {
                    if (iA - i6 < i4) {
                        throw new i("Truncated File subchunk", null);
                    }
                    String str3 = new String(bArr, i6, i5, Charsets.US_ASCII);
                    int i8 = i6;
                    long j3 = j(bArr, i6 + 4);
                    int i9 = i8 + 12;
                    int iA2 = a(i9, iA, j3, "File subchunk");
                    int iHashCode = str3.hashCode();
                    if (iHashCode != 2989289) {
                        if (iHashCode != 3237038) {
                            if (iHashCode == 3526328 && str3.equals("segm")) {
                                if (j3 % ((long) 28) != 0) {
                                    throw new i("Invalid segm length", null);
                                }
                                while (i9 < iA2) {
                                    arrayList2.add(new n((i(bArr, i9) & 7) != 0, j(bArr, i9 + 4), j(bArr, i9 + 12), j(bArr, i9 + 20)));
                                    i9 += 28;
                                }
                            }
                        } else if (!str3.equals("info")) {
                            continue;
                        } else {
                            if (j3 < 22) {
                                throw new i("Short info chunk", null);
                            }
                            i7 = (int) i(bArr, i9);
                            lValueOf = Long.valueOf(j(bArr, i8 + 16));
                            int i10 = (bArr[i8 + 32] & UByte.MAX_VALUE) | ((bArr[i8 + 33] & UByte.MAX_VALUE) << 8);
                            if (((long) i10) * ((long) 2) != j3 - ((long) 22)) {
                                throw new i("Invalid info name length", null);
                            }
                            str2 = new String(bArr, i8 + 34, i10 * 2, Charsets.UTF_16LE);
                        }
                    } else if (!str3.equals("adlr")) {
                        continue;
                    } else {
                        if (j3 < 4) {
                            throw new i("Short adlr chunk", null);
                        }
                        jI = i(bArr, i9);
                    }
                    i6 = iA2;
                    i4 = 12;
                    i5 = 4;
                }
                if (str2 == null) {
                    throw new i("File entry has no info", null);
                }
                String strTrimStart = StringsKt.trimStart(StringsKt.F(str2, '\\', '/'), '/');
                Intrinsics.checkNotNull(lValueOf);
                arrayList.add(new c(strTrimStart, lValueOf.longValue(), i7, jI, arrayList2));
            }
            i3 = iA;
        }
        return arrayList;
    }

    public static void e(long j2, long j3, long j4) throws i {
        if (j2 < 0 || j3 < 0 || j2 > j4 - j3) {
            throw new i("Invalid XP3 offset", null);
        }
    }

    public static byte[] f(RandomAccessFile randomAccessFile, long j2) throws IOException {
        if (j2 < 0 || j2 > 16777216 || randomAccessFile.getFilePointer() > randomAccessFile.length() - j2) {
            throw new i("Invalid index bounds", null);
        }
        byte[] bArr = new byte[(int) j2];
        randomAccessFile.readFully(bArr);
        return bArr;
    }

    public static byte[] g(RandomAccessFile randomAccessFile, long j2) throws IOException {
        e(j2, 1L, randomAccessFile.length());
        randomAccessFile.seek(j2);
        int unsignedByte = randomAccessFile.readUnsignedByte();
        if (unsignedByte == 0) {
            return f(randomAccessFile, h(randomAccessFile));
        }
        if (unsignedByte == 1) {
            long jH = h(randomAccessFile);
            return b(f(randomAccessFile, jH), h(randomAccessFile));
        }
        if (unsignedByte != 128) {
            throw new i(E.b.i(unsignedByte, "Unknown XP3 index flag: "), null);
        }
        e(j2 + 1, 16L, randomAccessFile.length());
        h(randomAccessFile);
        long jH2 = h(randomAccessFile);
        e(jH2, 1L, randomAccessFile.length());
        randomAccessFile.seek(jH2);
        int unsignedByte2 = randomAccessFile.readUnsignedByte();
        if (unsignedByte2 == 0) {
            return f(randomAccessFile, h(randomAccessFile));
        }
        if (unsignedByte2 != 1) {
            throw new i("Invalid nested index", null);
        }
        long jH3 = h(randomAccessFile);
        return b(f(randomAccessFile, jH3), h(randomAccessFile));
    }

    public static long h(RandomAccessFile randomAccessFile) throws IOException {
        long j2 = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = randomAccessFile.read();
            if (i4 < 0) {
                throw new i("Truncated XP3", null);
            }
            if (i3 == 7 && i4 > 127) {
                throw new i("Unsigned value too large", null);
            }
            j2 |= ((long) i4) << (i3 * 8);
        }
        return j2;
    }

    public static long i(byte[] bArr, int i3) {
        Iterator<Integer> it = new IntRange(0, 3).iterator();
        long j2 = 0;
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            j2 |= (((long) bArr[i3 + iNextInt]) & 255) << (iNextInt * 8);
        }
        return j2;
    }

    public static long j(byte[] bArr, int i3) throws i {
        long j2 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = bArr[i3 + i4] & UByte.MAX_VALUE;
            if (i4 == 7 && i5 > 127) {
                throw new i("Unsigned value too large", null);
            }
            j2 |= ((long) i5) << (i4 * 8);
        }
        return j2;
    }
}
