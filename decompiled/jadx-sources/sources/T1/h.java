package T1;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UByte;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static long a(long j2, long j3, long j4) throws m {
        if (j2 >= 0 && j3 >= 0 && j2 <= j4 - j3) {
            return j2 + j3;
        }
        Intrinsics.checkNotNullParameter("XP3 output exceeds size limit", "message");
        throw new m("XP3 output exceeds size limit");
    }

    public static void b(FileChannel fileChannel, c cVar, File file, Function0 function0, long j2) {
        f fVar;
        long jMin = Math.min(2147483648L, j2);
        int i3 = 262144;
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 262144);
        try {
            d dVar = new d(bufferedOutputStream, jMin);
            ArrayList arrayList = cVar.f2210e;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                int i5 = i4 + 1;
                n nVar = (n) arrayList.get(i4);
                long j3 = nVar.b;
                long j4 = nVar.f2225d;
                d(fileChannel, j3, j4);
                InputStream inputStreamNewInputStream = Channels.newInputStream(fileChannel.position(nVar.b));
                Intrinsics.checkNotNull(inputStreamNewInputStream);
                f fVar2 = new f(inputStreamNewInputStream, j4);
                try {
                    if (nVar.f2223a) {
                        fVar = fVar2;
                        try {
                            f(fVar, nVar.f2225d, nVar.f2224c, dVar, function0);
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(fVar, th2);
                                throw th3;
                            }
                        }
                    } else {
                        fVar = fVar2;
                        long j5 = nVar.f2224c;
                        if (j4 != j5) {
                            throw new i("Raw segment size mismatch", null);
                        }
                        byte[] bArr = new byte[i3];
                        long j6 = 0;
                        while (j6 < j5) {
                            c(function0);
                            int i6 = fVar.read(bArr, 0, (int) Math.min(i3, j5 - j6));
                            if (i6 < 0) {
                                throw new i("Truncated segment", null);
                            }
                            dVar.write(bArr, 0, i6);
                            j6 += (long) i6;
                            i3 = 262144;
                        }
                        if (fVar.read() != -1) {
                            throw new i("Segment has trailing data", null);
                        }
                    }
                    CloseableKt.closeFinally(fVar, null);
                    i4 = i5;
                    i3 = 262144;
                } catch (Throwable th4) {
                    th = th4;
                    fVar = fVar2;
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedOutputStream, null);
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                CloseableKt.closeFinally(bufferedOutputStream, th5);
                throw th6;
            }
        }
    }

    public static void c(Function0 function0) {
        if (((Boolean) function0.invoke()).booleanValue()) {
            throw new b();
        }
    }

    public static void d(FileChannel fileChannel, long j2, long j3) throws i {
        if (j2 < 0 || j3 < 0 || j2 > fileChannel.size() - j3) {
            throw new i("Segment outside archive", null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:135:0x021b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:? A[LOOP:5: B:98:0x01f3->B:136:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x007b  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:99:0x01f5  */
    public static Function1 e(FileChannel fileChannel, ArrayList arrayList) {
        int i3;
        int size;
        int i4;
        Object obj;
        byte[] bytes;
        byte[] bArr;
        int iNextInt;
        ArrayList probes = new ArrayList();
        int size2 = arrayList.size();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i6 >= size2) {
                i3 = i5;
                break;
            }
            i6++;
            c cVar = (c) arrayList.get(i6);
            ArrayList arrayList2 = cVar.f2210e;
            String str = cVar.f2207a;
            n nVar = (n) CollectionsKt.firstOrNull((List) arrayList2);
            if (nVar != null) {
                long j2 = nVar.f2225d;
                if (StringsKt__StringsJVMKt.endsWith(str, ".png", true)) {
                    bytes = new byte[4];
                    bytes[i5] = -119;
                    bytes[1] = 80;
                    bytes[2] = 78;
                    bytes[3] = 71;
                } else if (StringsKt__StringsJVMKt.endsWith(str, ".ogg", true)) {
                    bytes = "OggS".getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                } else if (StringsKt__StringsJVMKt.endsWith(str, ".tlg", true)) {
                    bytes = "TLG0".getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                }
                i3 = i5;
                long j3 = nVar.b;
                if (j2 < 4) {
                    bArr = null;
                } else if (!nVar.f2223a) {
                    bArr = new byte[4];
                    if (fileChannel.read(ByteBuffer.wrap(bArr), j3) != 4) {
                        bArr = null;
                    }
                } else if (j2 > 1048576) {
                    bArr = null;
                } else {
                    try {
                        d(fileChannel, j3, j2);
                        int i7 = (int) j2;
                        byte[] bArr2 = new byte[i7];
                        if (fileChannel.read(ByteBuffer.wrap(bArr2), j3) != i7) {
                            bArr = null;
                        } else {
                            Inflater inflater = new Inflater();
                            bArr = new byte[4];
                            try {
                                inflater.setInput(bArr2);
                                if (inflater.inflate(bArr) != 4) {
                                    bArr = null;
                                }
                                inflater.end();
                            } catch (Throwable th) {
                                inflater.end();
                                throw th;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                if (bArr != null) {
                    int i8 = (bArr[i3] & UByte.MAX_VALUE) ^ (bytes[i3] & UByte.MAX_VALUE);
                    Iterable intRange = new IntRange(1, 3);
                    if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                        Iterator it = intRange.iterator();
                        do {
                            if (!it.hasNext()) {
                                probes.add(TuplesKt.to(Long.valueOf(cVar.f2209d), Integer.valueOf(i8)));
                                break;
                            }
                            iNextInt = ((IntIterator) it).nextInt();
                        } while (((bArr[iNextInt] & UByte.MAX_VALUE) ^ i8) == (bytes[iNextInt] & UByte.MAX_VALUE));
                    } else {
                        probes.add(TuplesKt.to(Long.valueOf(cVar.f2209d), Integer.valueOf(i8)));
                        break;
                    }
                    if (probes.size() == 8) {
                        break;
                    }
                }
                i5 = i3;
            }
        }
        List list = l.f2222a;
        Intrinsics.checkNotNullParameter(probes, "probes");
        if (!probes.isEmpty()) {
            if (!probes.isEmpty()) {
                int size3 = probes.size();
                int i9 = i3;
                while (i9 < size3) {
                    Object obj2 = probes.get(i9);
                    i9++;
                    if (((Number) ((Pair) obj2).getSecond()).intValue() != 0) {
                        if (!probes.isEmpty()) {
                            int size4 = probes.size();
                            int i10 = i3;
                            while (i10 < size4) {
                                Object obj3 = probes.get(i10);
                                i10++;
                                Pair pair = (Pair) obj3;
                                if (((Number) pair.getSecond()).intValue() != ((int) ((((Number) pair.getFirst()).longValue() >>> 3) & 255))) {
                                    if (!probes.isEmpty()) {
                                        int size5 = probes.size();
                                        int i11 = i3;
                                        while (i11 < size5) {
                                            Object obj4 = probes.get(i11);
                                            i11++;
                                            Pair pair2 = (Pair) obj4;
                                            if (((Number) pair2.getSecond()).intValue() != ((int) (((Number) pair2.getFirst()).longValue() & 255))) {
                                                int iIntValue = ((Number) ((Pair) CollectionsKt.first((List) probes)).getSecond()).intValue();
                                                if (!probes.isEmpty()) {
                                                    int size6 = probes.size();
                                                    int i12 = i3;
                                                    while (i12 < size6) {
                                                        Object obj5 = probes.get(i12);
                                                        i12++;
                                                        if (((Number) ((Pair) obj5).getSecond()).intValue() == iIntValue) {
                                                        }
                                                    }
                                                    if (!probes.isEmpty()) {
                                                        size = probes.size();
                                                        i4 = i3;
                                                        while (i4 < size) {
                                                            obj = probes.get(i4);
                                                            i4++;
                                                            if (((Number) ((Pair) obj).getFirst()).longValue() != ((Number) ((Pair) CollectionsKt.first((List) probes)).getFirst()).longValue()) {
                                                                return new k(iIntValue, i3);
                                                            }
                                                        }
                                                    }
                                                } else if (!probes.isEmpty()) {
                                                    size = probes.size();
                                                    i4 = i3;
                                                    while (i4 < size) {
                                                        obj = probes.get(i4);
                                                        i4++;
                                                        if (((Number) ((Pair) obj).getFirst()).longValue() != ((Number) ((Pair) CollectionsKt.first((List) probes)).getFirst()).longValue()) {
                                                            return new k(iIntValue, i3);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    return new L1.d(12);
                                }
                            }
                        }
                        return new L1.d(11);
                    }
                }
            }
            return new L1.d(10);
        }
        return null;
    }

    public static void f(InputStream inputStream, long j2, long j3, d dVar, Function0 function0) throws i {
        long j4 = 0;
        if (j2 < 0 || j3 < 0) {
            throw new i("Invalid zlib lengths", null);
        }
        Inflater inflater = new Inflater();
        byte[] bArr = new byte[65536];
        byte[] bArr2 = new byte[65536];
        long j5 = 0;
        while (!inflater.finished()) {
            try {
                c(function0);
                if (inflater.needsInput()) {
                    if (j5 == j2) {
                        throw new i("Unfinished zlib stream", null);
                    }
                    int i3 = inputStream.read(bArr, 0, (int) Math.min(65536, j2 - j5));
                    if (i3 < 0) {
                        throw new i("Truncated zlib stream", null);
                    }
                    inflater.setInput(bArr, 0, i3);
                    j5 += (long) i3;
                }
                try {
                    int iInflate = inflater.inflate(bArr2);
                    if (iInflate > 0) {
                        long j6 = iInflate;
                        if (j4 > j3 - j6) {
                            throw new i("Zlib output exceeds declared size", null);
                        }
                        dVar.write(bArr2, 0, iInflate);
                        j4 += j6;
                    } else {
                        if (inflater.needsDictionary()) {
                            throw new i("Zlib dictionary unsupported", null);
                        }
                        if (!inflater.needsInput() && !inflater.finished()) {
                            throw new i("Stalled zlib stream", null);
                        }
                    }
                } catch (DataFormatException e2) {
                    Intrinsics.checkNotNullParameter("Invalid zlib stream", "message");
                    throw new i("Invalid zlib stream", (Throwable) e2);
                }
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        }
        if (j4 != j3) {
            throw new i("Zlib output size mismatch", null);
        }
        if (inflater.getRemaining() != 0 || j5 != j2) {
            throw new i("Trailing zlib data", null);
        }
        inflater.end();
    }

    public static byte[] g(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            int iMin = (int) Math.min(65536L, file.length());
            byte[] bArr = new byte[iMin];
            int i3 = 0;
            while (i3 < iMin) {
                int i4 = fileInputStream.read(bArr, i3, iMin - i3);
                if (i4 < 0) {
                    break;
                }
                i3 += i4;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i3);
            Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
            CloseableKt.closeFinally(fileInputStream, null);
            return bArrCopyOf;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static void h(int i3, int i4, int i5, d dVar) throws IOException {
        if (i5 == 0 && (i4 != 0 || i3 >= 32)) {
            dVar.write(i3 ^ 1);
            dVar.write((i3 & 254) ^ i4);
        } else {
            if (i5 == 0) {
                dVar.write(i3);
                dVar.write(i4);
                return;
            }
            int i6 = i3 | (i4 << 8);
            int i7 = ((i6 & 21845) << 1) | ((43690 & i6) >>> 1);
            dVar.write(i7 & 255);
            dVar.write(i7 >>> 8);
        }
    }

    public static long i(byte[] bArr, int i3) throws i {
        long j2 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = bArr[i3 + i4] & UByte.MAX_VALUE;
            if (i4 == 7 && i5 > 127) {
                throw new i("Unsigned length too large", null);
            }
            j2 |= ((long) i5) << (i4 * 8);
        }
        return j2;
    }

    public static void j(ArrayList arrayList) {
        ArrayList entries = arrayList;
        Intrinsics.checkNotNullParameter(entries, "entries");
        if (entries.size() > 200000) {
            Intrinsics.checkNotNullParameter("XP3 contains too many entries", "message");
            throw new m("XP3 contains too many entries");
        }
        int size = entries.size();
        long j2 = 0;
        long jA = 0;
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 1;
            c cVar = (c) entries.get(i3);
            long j3 = cVar.b;
            String str = cVar.f2207a;
            if (j3 >= j2) {
                long j4 = 2147483648L;
                if (j3 <= 2147483648L) {
                    jA = a(jA, j3, 8589934592L);
                    ArrayList arrayList2 = cVar.f2210e;
                    int size2 = arrayList2.size();
                    long jA2 = j2;
                    long jA3 = jA2;
                    int i5 = 0;
                    while (i5 < size2) {
                        Object obj = arrayList2.get(i5);
                        i5++;
                        long j5 = j2;
                        n nVar = (n) obj;
                        long j6 = j4;
                        long j7 = nVar.f2224c;
                        if (j7 >= j5) {
                            int i6 = size;
                            long j8 = nVar.f2225d;
                            if (j8 >= j5 && j7 <= j6 && j8 <= j6) {
                                jA3 = a(jA3, j7, 2147483648L);
                                jA2 = a(jA2, nVar.f2225d, 2147483648L);
                                size = i6;
                                j2 = j5;
                                j4 = j6;
                            }
                        }
                        throw new m(kotlin.collections.unsigned.a.o("Segment size limit: ", str));
                    }
                    long j9 = j2;
                    int i7 = size;
                    if (jA3 != cVar.b) {
                        throw new m(kotlin.collections.unsigned.a.o("Segment size mismatch: ", str));
                    }
                    entries = arrayList;
                    size = i7;
                    i3 = i4;
                    j2 = j9;
                }
            }
            throw new m(kotlin.collections.unsigned.a.o("Entry size limit: ", str));
        }
    }

    public static long k(File file, File file2, byte[] bArr, byte[] data, Function0 function0, long j2) {
        int i3;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 262144);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2), 262144);
            try {
                d dVar = new d(bufferedOutputStream, Math.min(2147483648L, j2));
                Intrinsics.checkNotNullParameter(data, "data");
                if (data.length >= 5 && data[0] == -2 && data[1] == -2 && data[3] == -1 && data[4] == -2) {
                    byte[] bArr2 = new byte[5];
                    int i4 = 0;
                    while (i4 < 5) {
                        int i5 = bufferedInputStream.read(bArr2, i4, 5 - i4);
                        if (i5 < 0) {
                            throw new i("Truncated scrambled file", null);
                        }
                        i4 += i5;
                    }
                    l(bArr2, bArr, 0L, 5);
                    int i6 = bArr2[2] & UByte.MAX_VALUE;
                    long j3 = 5;
                    if (i6 >= 0 && i6 < 3) {
                        dVar.write(new byte[]{-1, -2});
                        int i7 = 1;
                        if (i6 == 0 || i6 == 1) {
                            int i8 = -1;
                            byte[] bArr3 = new byte[262144];
                            int i9 = -1;
                            while (true) {
                                c(function0);
                                int i10 = bufferedInputStream.read(bArr3);
                                if (i10 < 0) {
                                    break;
                                }
                                l(bArr3, bArr, j3, i10);
                                if (i9 >= 0) {
                                    h(i9, bArr3[0] & UByte.MAX_VALUE, i6, dVar);
                                    i3 = i7;
                                } else {
                                    i3 = 0;
                                }
                                while (true) {
                                    int i11 = i3 + 1;
                                    if (i11 >= i10) {
                                        break;
                                    }
                                    h(bArr3[i3] & UByte.MAX_VALUE, bArr3[i11] & UByte.MAX_VALUE, i6, dVar);
                                    i3 += 2;
                                }
                                i9 = i3 < i10 ? bArr3[i3] & UByte.MAX_VALUE : i8;
                                j3 += (long) i10;
                                i7 = 1;
                                i8 = -1;
                            }
                            if (i9 >= 0) {
                                dVar.write(i9);
                            }
                        } else if (i6 == 2) {
                            byte[] bArr4 = new byte[16];
                            int i12 = 0;
                            while (i12 < 16) {
                                int i13 = bufferedInputStream.read(bArr4, i12, 16 - i12);
                                if (i13 < 0) {
                                    throw new i("Truncated scrambled file", null);
                                }
                                i12 += i13;
                            }
                            l(bArr4, bArr, 5L, 16);
                            long jI = i(bArr4, 0);
                            long jI2 = i(bArr4, 8);
                            if (jI < 0 || jI2 < 0 || jI2 > 2147483648L || jI2 > j2 - ((long) 2) || jI != file.length() - ((long) 21)) {
                                throw new i("Invalid mode-2 lengths", null);
                            }
                            f(new g(bufferedInputStream, bArr, function0), jI, jI2, dVar, function0);
                            if (bufferedInputStream.read() != -1) {
                                throw new i("Trailing mode-2 data", null);
                            }
                        }
                        long j4 = dVar.f2212d;
                        CloseableKt.closeFinally(bufferedOutputStream, null);
                        CloseableKt.closeFinally(bufferedInputStream, null);
                        return j4;
                    }
                    dVar.write(bArr2);
                    byte[] bArr5 = new byte[262144];
                    while (true) {
                        c(function0);
                        int i14 = bufferedInputStream.read(bArr5);
                        if (i14 < 0) {
                            long j5 = dVar.f2212d;
                            CloseableKt.closeFinally(bufferedOutputStream, null);
                            CloseableKt.closeFinally(bufferedInputStream, null);
                            return j5;
                        }
                        l(bArr5, bArr, j3, i14);
                        dVar.write(bArr5, 0, i14);
                        j3 += (long) i14;
                    }
                } else {
                    byte[] bArr6 = new byte[262144];
                    long j6 = 0;
                    while (true) {
                        c(function0);
                        int i15 = bufferedInputStream.read(bArr6);
                        if (i15 < 0) {
                            long j7 = dVar.f2212d;
                            CloseableKt.closeFinally(bufferedOutputStream, null);
                            CloseableKt.closeFinally(bufferedInputStream, null);
                            return j7;
                        }
                        l(bArr6, bArr, j6, i15);
                        dVar.write(bArr6, 0, i15);
                        j6 += (long) i15;
                    }
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(bufferedInputStream, th3);
                throw th4;
            }
        }
    }

    public static void l(byte[] bArr, byte[] bArr2, long j2, int i3) {
        if (bArr2 == null || bArr2.length == 0) {
            return;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[(int) ((((long) i4) + j2) % ((long) bArr2.length))]);
        }
    }
}
