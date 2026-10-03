package N;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Y0.e f1395a = new Y0.e(9);
    public static final byte[] b = {112, 114, 111, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f1396c = {112, 114, 109, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f1397d = {48, 49, 53, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f1398e = {48, 49, 48, 0};
    public static final byte[] f = {48, 48, 57, 0};
    public static final byte[] g = {48, 48, 53, 0};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f1399h = {48, 48, 49, 0};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f1400i = {48, 48, 49, 0};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f1401j = {48, 48, 50, 0};

    public static byte[] a(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                try {
                    deflaterOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            deflater.end();
            throw th3;
        }
    }

    public static byte[] b(b[] bVarArr, byte[] bArr) throws IOException {
        int length = 0;
        for (b bVar : bVarArr) {
            length += ((((bVar.g * 2) + 7) & (-8)) / 8) + (bVar.f1392e * 2) + d(bArr, bVar.f1389a, bVar.b).getBytes(StandardCharsets.UTF_8).length + 16 + bVar.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, f)) {
            for (b bVar2 : bVarArr) {
                p(byteArrayOutputStream, bVar2, d(bArr, bVar2.f1389a, bVar2.b));
                r(byteArrayOutputStream, bVar2);
                int[] iArr = bVar2.f1393h;
                int length2 = iArr.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length2) {
                    int i5 = iArr[i3];
                    u(byteArrayOutputStream, i5 - i4);
                    i3++;
                    i4 = i5;
                }
                q(byteArrayOutputStream, bVar2);
            }
        } else {
            for (b bVar3 : bVarArr) {
                p(byteArrayOutputStream, bVar3, d(bArr, bVar3.f1389a, bVar3.b));
            }
            for (b bVar4 : bVarArr) {
                r(byteArrayOutputStream, bVar4);
                int[] iArr2 = bVar4.f1393h;
                int length3 = iArr2.length;
                int i6 = 0;
                int i7 = 0;
                while (i6 < length3) {
                    int i8 = iArr2[i6];
                    u(byteArrayOutputStream, i8 - i7);
                    i6++;
                    i7 = i8;
                }
                q(byteArrayOutputStream, bVar4);
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
    }

    public static boolean c(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z2 = true;
        for (File file2 : fileArrListFiles) {
            z2 = c(file2) && z2;
        }
        return z2;
    }

    public static String d(byte[] bArr, String str, String str2) {
        byte[] bArr2 = f1399h;
        boolean zEquals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = g;
        Object obj = (zEquals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            if (":".equals(obj)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(obj)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(obj)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                return kotlin.collections.unsigned.a.i(sb, (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    public static void e(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
        }
    }

    public static byte[] f(InputStream inputStream, int i3) throws IOException {
        byte[] bArr = new byte[i3];
        int i4 = 0;
        while (i4 < i3) {
            int i5 = inputStream.read(bArr, i4, i3 - i4);
            if (i5 < 0) {
                throw new IllegalStateException(E.b.i(i3, "Not enough bytes to read: "));
            }
            i4 += i5;
        }
        return bArr;
    }

    public static int[] g(ByteArrayInputStream byteArrayInputStream, int i3) {
        int[] iArr = new int[i3];
        int iM = 0;
        for (int i4 = 0; i4 < i3; i4++) {
            iM += (int) m(byteArrayInputStream, 2);
            iArr[i4] = iM;
        }
        return iArr;
    }

    public static byte[] h(FileInputStream fileInputStream, int i3, int i4) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i4];
            byte[] bArr2 = new byte[2048];
            int i5 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i5 < i3) {
                int i6 = fileInputStream.read(bArr2);
                if (i6 < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i3 + " bytes");
                }
                inflater.setInput(bArr2, 0, i6);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i4 - iInflate);
                    i5 += i6;
                } catch (DataFormatException e2) {
                    throw new IllegalStateException(e2.getMessage());
                }
            }
            if (i5 == i3) {
                if (!inflater.finished()) {
                    throw new IllegalStateException("Inflater did not finish");
                }
                inflater.end();
                return bArr;
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i3 + " actual=" + i5);
        } catch (Throwable th) {
            inflater.end();
            throw th;
        }
    }

    public static b[] i(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, b[] bVarArr) throws IOException {
        byte[] bArr3 = f1400i;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, f1401j)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int iM = (int) m(fileInputStream, 2);
            byte[] bArrH = h(fileInputStream, (int) m(fileInputStream, 4), (int) m(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
            try {
                b[] bVarArrK = k(byteArrayInputStream, bArr2, iM, bVarArr);
                byteArrayInputStream.close();
                return bVarArrK;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(f1397d, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int iM2 = (int) m(fileInputStream, 1);
        byte[] bArrH2 = h(fileInputStream, (int) m(fileInputStream, 4), (int) m(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrH2);
        try {
            b[] bVarArrJ = j(byteArrayInputStream2, iM2, bVarArr);
            byteArrayInputStream2.close();
            return bVarArrJ;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static b[] j(ByteArrayInputStream byteArrayInputStream, int i3, b[] bVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        if (i3 != bVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i3];
        int[] iArr = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int iM = (int) m(byteArrayInputStream, 2);
            iArr[i4] = (int) m(byteArrayInputStream, 2);
            strArr[i4] = new String(f(byteArrayInputStream, iM), StandardCharsets.UTF_8);
        }
        for (int i5 = 0; i5 < i3; i5++) {
            b bVar = bVarArr[i5];
            if (!bVar.b.equals(strArr[i5])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i6 = iArr[i5];
            bVar.f1392e = i6;
            bVar.f1393h = g(byteArrayInputStream, i6);
        }
        return bVarArr;
    }

    public static b[] k(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i3, b[] bVarArr) throws IOException {
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        if (i3 != bVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            m(byteArrayInputStream, 2);
            String str = new String(f(byteArrayInputStream, (int) m(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long jM = m(byteArrayInputStream, 4);
            int iM = (int) m(byteArrayInputStream, 2);
            b bVar = null;
            if (bVarArr.length > 0) {
                int iIndexOf = str.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = str.indexOf(":");
                }
                String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
                for (int i5 = 0; i5 < bVarArr.length; i5++) {
                    if (bVarArr[i5].b.equals(strSubstring)) {
                        bVar = bVarArr[i5];
                        break;
                    }
                }
            }
            if (bVar == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            bVar.f1391d = jM;
            int[] iArrG = g(byteArrayInputStream, iM);
            if (Arrays.equals(bArr, f1399h)) {
                bVar.f1392e = iM;
                bVar.f1393h = iArrG;
            }
        }
        return bVarArr;
    }

    public static b[] l(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, f1398e)) {
            throw new IllegalStateException("Unsupported version");
        }
        int iM = (int) m(fileInputStream, 1);
        byte[] bArrH = h(fileInputStream, (int) m(fileInputStream, 4), (int) m(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
        try {
            b[] bVarArrN = n(byteArrayInputStream, str, iM);
            byteArrayInputStream.close();
            return bVarArrN;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long m(InputStream inputStream, int i3) throws IOException {
        byte[] bArrF = f(inputStream, i3);
        long j2 = 0;
        for (int i4 = 0; i4 < i3; i4++) {
            j2 += ((long) (bArrF[i4] & UByte.MAX_VALUE)) << (i4 * 8);
        }
        return j2;
    }

    public static b[] n(ByteArrayInputStream byteArrayInputStream, String str, int i3) throws IOException {
        int i4 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new b[0];
        }
        b[] bVarArr = new b[i3];
        for (int i5 = 0; i5 < i3; i5++) {
            int iM = (int) m(byteArrayInputStream, 2);
            int iM2 = (int) m(byteArrayInputStream, 2);
            bVarArr[i5] = new b(str, new String(f(byteArrayInputStream, iM), StandardCharsets.UTF_8), m(byteArrayInputStream, 4), iM2, (int) m(byteArrayInputStream, 4), (int) m(byteArrayInputStream, 4), new int[iM2], new TreeMap());
        }
        int i6 = 0;
        while (i6 < i3) {
            b bVar = bVarArr[i6];
            int iAvailable = byteArrayInputStream.available();
            int i7 = bVar.f;
            int i8 = bVar.g;
            TreeMap treeMap = bVar.f1394i;
            int i9 = iAvailable - i7;
            int iM3 = i4;
            while (byteArrayInputStream.available() > i9) {
                iM3 += (int) m(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(iM3), 1);
                int iM4 = (int) m(byteArrayInputStream, 2);
                while (iM4 > 0) {
                    m(byteArrayInputStream, 2);
                    int iM5 = (int) m(byteArrayInputStream, 1);
                    if (iM5 != 6 && iM5 != 7) {
                        while (iM5 > 0) {
                            m(byteArrayInputStream, 1);
                            int i10 = i4;
                            int i11 = i6;
                            for (int iM6 = (int) m(byteArrayInputStream, 1); iM6 > 0; iM6--) {
                                m(byteArrayInputStream, 2);
                            }
                            iM5--;
                            i4 = i10;
                            i6 = i11;
                        }
                    }
                    iM4--;
                    i4 = i4;
                    i6 = i6;
                }
            }
            int i12 = i4;
            int i13 = i6;
            if (byteArrayInputStream.available() != i9) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            bVar.f1393h = g(byteArrayInputStream, bVar.f1392e);
            BitSet bitSetValueOf = BitSet.valueOf(f(byteArrayInputStream, (((i8 * 2) + 7) & (-8)) / 8));
            for (int i14 = i12; i14 < i8; i14++) {
                int i15 = bitSetValueOf.get(i14) ? 2 : i12;
                if (bitSetValueOf.get(i14 + i8)) {
                    i15 |= 4;
                }
                if (i15 != 0) {
                    Integer numValueOf = (Integer) treeMap.get(Integer.valueOf(i14));
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(i12);
                    }
                    treeMap.put(Integer.valueOf(i14), Integer.valueOf(i15 | numValueOf.intValue()));
                }
            }
            i6 = i13 + 1;
            i4 = i12;
        }
        return bVarArr;
    }

    public static boolean o(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, b[] bVarArr) throws IOException {
        long j2;
        ArrayList arrayList;
        int length;
        byte[] bArr2 = f1397d;
        int i3 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = f1398e;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] bArrB = b(bVarArr, bArr3);
                t(byteArrayOutputStream, bVarArr.length, 1);
                t(byteArrayOutputStream, bArrB.length, 4);
                byte[] bArrA = a(bArrB);
                t(byteArrayOutputStream, bArrA.length, 4);
                byteArrayOutputStream.write(bArrA);
                return true;
            }
            byte[] bArr4 = g;
            if (Arrays.equals(bArr, bArr4)) {
                t(byteArrayOutputStream, bVarArr.length, 1);
                for (b bVar : bVarArr) {
                    int size = bVar.f1394i.size() * 4;
                    String strD = d(bArr4, bVar.f1389a, bVar.b);
                    Charset charset = StandardCharsets.UTF_8;
                    u(byteArrayOutputStream, strD.getBytes(charset).length);
                    u(byteArrayOutputStream, bVar.f1393h.length);
                    t(byteArrayOutputStream, size, 4);
                    t(byteArrayOutputStream, bVar.f1390c, 4);
                    byteArrayOutputStream.write(strD.getBytes(charset));
                    Iterator it = bVar.f1394i.keySet().iterator();
                    while (it.hasNext()) {
                        u(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        u(byteArrayOutputStream, 0);
                    }
                    for (int i4 : bVar.f1393h) {
                        u(byteArrayOutputStream, i4);
                    }
                }
                return true;
            }
            byte[] bArr5 = f;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrB2 = b(bVarArr, bArr5);
                t(byteArrayOutputStream, bVarArr.length, 1);
                t(byteArrayOutputStream, bArrB2.length, 4);
                byte[] bArrA2 = a(bArrB2);
                t(byteArrayOutputStream, bArrA2.length, 4);
                byteArrayOutputStream.write(bArrA2);
                return true;
            }
            byte[] bArr6 = f1399h;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            u(byteArrayOutputStream, bVarArr.length);
            for (b bVar2 : bVarArr) {
                String str = bVar2.f1389a;
                TreeMap treeMap = bVar2.f1394i;
                String strD2 = d(bArr6, str, bVar2.b);
                Charset charset2 = StandardCharsets.UTF_8;
                u(byteArrayOutputStream, strD2.getBytes(charset2).length);
                u(byteArrayOutputStream, treeMap.size());
                u(byteArrayOutputStream, bVar2.f1393h.length);
                t(byteArrayOutputStream, bVar2.f1390c, 4);
                byteArrayOutputStream.write(strD2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    u(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i5 : bVar2.f1393h) {
                    u(byteArrayOutputStream, i5);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            u(byteArrayOutputStream2, bVarArr.length);
            int i6 = 2;
            int i7 = 2;
            for (b bVar3 : bVarArr) {
                t(byteArrayOutputStream2, bVar3.f1390c, 4);
                t(byteArrayOutputStream2, bVar3.f1391d, 4);
                t(byteArrayOutputStream2, bVar3.g, 4);
                String strD3 = d(bArr2, bVar3.f1389a, bVar3.b);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = strD3.getBytes(charset3).length;
                u(byteArrayOutputStream2, length2);
                i7 = i7 + 14 + length2;
                byteArrayOutputStream2.write(strD3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i7 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i7 + ", does not match actual size " + byteArray.length);
            }
            m mVar = new m(1, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(mVar);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i8 = 0;
            int i9 = 0;
            while (i8 < bVarArr.length) {
                try {
                    b bVar4 = bVarArr[i8];
                    u(byteArrayOutputStream3, i8);
                    u(byteArrayOutputStream3, bVar4.f1392e);
                    i9 = i9 + 4 + (bVar4.f1392e * i6);
                    int[] iArr = bVar4.f1393h;
                    int length3 = iArr.length;
                    int i10 = i3;
                    int i11 = i6;
                    int i12 = i10;
                    while (i12 < length3) {
                        int i13 = iArr[i12];
                        u(byteArrayOutputStream3, i13 - i10);
                        i12++;
                        i10 = i13;
                    }
                    i8++;
                    i6 = i11;
                    i3 = 0;
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i9 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i9 + ", does not match actual size " + byteArray2.length);
            }
            m mVar2 = new m(3, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(mVar2);
            ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
            int i14 = 0;
            int i15 = 0;
            while (i14 < bVarArr.length) {
                try {
                    b bVar5 = bVarArr[i14];
                    Iterator it3 = bVar5.f1394i.entrySet().iterator();
                    int iIntValue = 0;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
                    try {
                        q(byteArrayOutputStream5, bVar5);
                        byte[] byteArray3 = byteArrayOutputStream5.toByteArray();
                        byteArrayOutputStream5.close();
                        ByteArrayOutputStream byteArrayOutputStream6 = new ByteArrayOutputStream();
                        try {
                            r(byteArrayOutputStream6, bVar5);
                            byte[] byteArray4 = byteArrayOutputStream6.toByteArray();
                            byteArrayOutputStream6.close();
                            u(byteArrayOutputStream4, i14);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i16 = i15 + 6;
                            ArrayList arrayList4 = arrayList3;
                            t(byteArrayOutputStream4, length4, 4);
                            u(byteArrayOutputStream4, iIntValue);
                            byteArrayOutputStream4.write(byteArray3);
                            byteArrayOutputStream4.write(byteArray4);
                            i15 = i16 + length4;
                            i14++;
                            arrayList3 = arrayList4;
                        } catch (Throwable th3) {
                            try {
                                byteArrayOutputStream6.close();
                                throw th3;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                                throw th3;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            byteArrayOutputStream5.close();
                            throw th5;
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                            throw th5;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        byteArrayOutputStream4.close();
                        throw th7;
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                        throw th7;
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream4.toByteArray();
            if (i15 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i15 + ", does not match actual size " + byteArray5.length);
            }
            m mVar3 = new m(4, byteArray5, true);
            byteArrayOutputStream4.close();
            arrayList2.add(mVar3);
            long j3 = 4;
            long size2 = j3 + j3 + 4 + ((long) (arrayList2.size() * 16));
            t(byteArrayOutputStream, arrayList2.size(), 4);
            int i17 = 0;
            while (i17 < arrayList2.size()) {
                m mVar4 = (m) arrayList2.get(i17);
                int i18 = mVar4.f1409a;
                byte[] bArr7 = mVar4.b;
                if (i18 == 1) {
                    j2 = 0;
                } else if (i18 == 2) {
                    j2 = 1;
                } else if (i18 == 3) {
                    j2 = 2;
                } else if (i18 == 4) {
                    j2 = 3;
                } else {
                    if (i18 != 5) {
                        throw null;
                    }
                    j2 = 4;
                }
                t(byteArrayOutputStream, j2, 4);
                t(byteArrayOutputStream, size2, 4);
                if (mVar4.f1410c) {
                    long length5 = bArr7.length;
                    byte[] bArrA3 = a(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(bArrA3);
                    t(byteArrayOutputStream, bArrA3.length, 4);
                    t(byteArrayOutputStream, length5, 4);
                    length = bArrA3.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    t(byteArrayOutputStream, bArr7.length, 4);
                    t(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += (long) length;
                i17++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i19 = 0; i19 < arrayList6.size(); i19++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i19));
            }
            return true;
        } catch (Throwable th9) {
            try {
                byteArrayOutputStream2.close();
                throw th9;
            } catch (Throwable th10) {
                th9.addSuppressed(th10);
                throw th9;
            }
        }
    }

    public static void p(ByteArrayOutputStream byteArrayOutputStream, b bVar, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        u(byteArrayOutputStream, str.getBytes(charset).length);
        u(byteArrayOutputStream, bVar.f1392e);
        t(byteArrayOutputStream, bVar.f, 4);
        t(byteArrayOutputStream, bVar.f1390c, 4);
        t(byteArrayOutputStream, bVar.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void q(ByteArrayOutputStream byteArrayOutputStream, b bVar) throws IOException {
        byte[] bArr = new byte[(((bVar.g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : bVar.f1394i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int i3 = iIntValue / 8;
                bArr[i3] = (byte) (bArr[i3] | (1 << (iIntValue % 8)));
            }
            if ((iIntValue2 & 4) != 0) {
                int i4 = iIntValue + bVar.g;
                int i5 = i4 / 8;
                bArr[i5] = (byte) ((1 << (i4 % 8)) | bArr[i5]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void r(ByteArrayOutputStream byteArrayOutputStream, b bVar) throws IOException {
        int i3 = 0;
        for (Map.Entry entry : bVar.f1394i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                u(byteArrayOutputStream, iIntValue - i3);
                u(byteArrayOutputStream, 0);
                i3 = iIntValue;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0187 A[Catch: all -> 0x0184, TRY_ENTER, TryCatch #14 {all -> 0x0184, blocks: (B:92:0x0163, B:94:0x016f, B:105:0x0187, B:106:0x018c), top: B:239:0x0163, outer: #28 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0196 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x0198 A[Catch: IllegalStateException -> 0x017e, IOException -> 0x0180, FileNotFoundException -> 0x0182, TRY_LEAVE, TryCatch #28 {FileNotFoundException -> 0x0182, IOException -> 0x0180, IllegalStateException -> 0x017e, blocks: (B:90:0x015b, B:95:0x0179, B:113:0x0198, B:111:0x0195, B:110:0x0192, B:92:0x0163, B:94:0x016f, B:105:0x0187, B:106:0x018c, B:107:0x018d), top: B:259:0x015b, inners: #14, #23 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:130:0x01d1 A[Catch: all -> 0x01df, TRY_LEAVE, TryCatch #32 {all -> 0x01df, blocks: (B:128:0x01c5, B:130:0x01d1, B:139:0x01e2), top: B:254:0x01c5, outer: #30 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x01e2 A[Catch: all -> 0x01df, TRY_ENTER, TRY_LEAVE, TryCatch #32 {all -> 0x01df, blocks: (B:128:0x01c5, B:130:0x01d1, B:139:0x01e2), top: B:254:0x01c5, outer: #30 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:154:0x0209  */
    /* JADX WARN: Code duplicated, block: B:155:0x020d  */
    /* JADX WARN: Code duplicated, block: B:163:0x0227 A[Catch: all -> 0x0249, TRY_LEAVE, TryCatch #18 {all -> 0x0249, blocks: (B:160:0x021f, B:161:0x0221, B:163:0x0227), top: B:238:0x021f }] */
    /* JADX WARN: Code duplicated, block: B:204:0x0276  */
    /* JADX WARN: Code duplicated, block: B:208:0x0280  */
    /* JADX WARN: Code duplicated, block: B:213:0x028d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:215:0x0291  */
    /* JADX WARN: Code duplicated, block: B:239:0x0163 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:0x0211 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x01c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:0x015b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x016f A[Catch: all -> 0x0184, TRY_LEAVE, TryCatch #14 {all -> 0x0184, blocks: (B:92:0x0163, B:94:0x016f, B:105:0x0187, B:106:0x018c), top: B:239:0x0163, outer: #28 }] */
    /* JADX WARN: Multi-variable type inference failed */
    public static void s(Context context, Executor executor, d dVar, boolean z2) {
        char c3;
        FileInputStream fileInputStreamA;
        byte[] bArr;
        b[] bVarArrL;
        d dVar2;
        b[] bVarArr;
        byte[] bArr2;
        byte[] bArr3;
        boolean z3;
        ByteArrayInputStream byteArrayInputStream;
        FileOutputStream fileOutputStream;
        Throwable th;
        byte[] bArr4;
        int i3;
        boolean z4;
        ByteArrayOutputStream byteArrayOutputStream;
        int i4;
        a aVar;
        FileInputStream fileInputStreamA2;
        boolean z5;
        boolean z6;
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            if (!z2) {
                File file = new File(filesDir, "profileinstaller_profileWrittenFor_lastUpdateTime.dat");
                if (file.exists()) {
                    try {
                        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                        try {
                            long j2 = dataInputStream.readLong();
                            dataInputStream.close();
                            z6 = j2 == packageInfo.lastUpdateTime;
                            if (z6) {
                                dVar.e(2, null);
                            }
                        } catch (Throwable th2) {
                            try {
                                dataInputStream.close();
                                throw th2;
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                                throw th2;
                            }
                        }
                    } catch (IOException unused) {
                        z6 = false;
                    }
                } else {
                    z6 = false;
                }
                if (z6) {
                    Log.d("ProfileInstaller", "Skipping profile installation for " + context.getPackageName());
                    l.c(context, false);
                    return;
                }
            }
            Log.d("ProfileInstaller", "Installing profile for " + context.getPackageName());
            int i5 = Build.VERSION.SDK_INT;
            File file2 = new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof");
            a aVar2 = new a(assets, executor, dVar, name, file2);
            byte[] bArr5 = aVar2.f1385c;
            if (bArr5 == null) {
                aVar2.b(3, Integer.valueOf(i5));
            } else {
                try {
                    try {
                        if (file2.exists()) {
                            if (!file2.canWrite()) {
                                aVar2.b(4, null);
                            }
                            if (z4 || !z2) {
                                z5 = 0;
                            } else {
                                z5 = c3;
                            }
                            l.c(context, z5);
                        }
                        try {
                            file2.createNewFile();
                        } catch (IOException unused2) {
                            c3 = 1;
                            aVar2.b(4, null);
                            z4 = false;
                        }
                        fileInputStreamA = aVar2.a(assets, "dexopt/baseline.prof");
                    } catch (FileNotFoundException e2) {
                        dVar.e(6, e2);
                        fileInputStreamA = null;
                    } catch (IOException e3) {
                        dVar.e(7, e3);
                        fileInputStreamA = null;
                    }
                    if (fileInputStreamA != null) {
                        try {
                            if (!Arrays.equals(bArr, f(fileInputStreamA, 4))) {
                                throw new IllegalStateException("Invalid magic");
                            }
                            bVarArrL = l(fileInputStreamA, f(fileInputStreamA, 4), aVar2.f1387e);
                            try {
                                fileInputStreamA.close();
                            } catch (IOException e4) {
                                dVar.e(7, e4);
                            }
                            aVar2.g = bVarArrL;
                        } catch (IOException e5) {
                            dVar.e(7, e5);
                            try {
                                fileInputStreamA.close();
                            } catch (IOException e6) {
                                dVar.e(7, e6);
                            }
                            bVarArrL = null;
                        } catch (IllegalStateException e7) {
                            dVar.e(8, e7);
                            fileInputStreamA.close();
                            bVarArrL = null;
                        }
                    }
                    b[] bVarArr2 = aVar2.g;
                    if (bVarArr2 != null && (i4 = Build.VERSION.SDK_INT) <= 34) {
                        if (i4 == 24 || i4 == 25) {
                            try {
                                fileInputStreamA2 = aVar2.a(assets, "dexopt/baseline.profm");
                                if (fileInputStreamA2 == null) {
                                    try {
                                        if (Arrays.equals(f1396c, f(fileInputStreamA2, 4))) {
                                            throw new IllegalStateException("Invalid magic");
                                        }
                                        aVar2.g = i(fileInputStreamA2, f(fileInputStreamA2, 4), bArr5, bVarArr2);
                                        fileInputStreamA2.close();
                                        aVar = aVar2;
                                    } catch (Throwable th4) {
                                        try {
                                            fileInputStreamA2.close();
                                            throw th4;
                                        } catch (Throwable th5) {
                                            th4.addSuppressed(th5);
                                            throw th4;
                                        }
                                    }
                                } else {
                                    if (fileInputStreamA2 != null) {
                                        fileInputStreamA2.close();
                                    }
                                    aVar = null;
                                }
                            } catch (FileNotFoundException e8) {
                                dVar.e(9, e8);
                                aVar = null;
                            } catch (IOException e9) {
                                dVar.e(7, e9);
                                aVar = null;
                            } catch (IllegalStateException e10) {
                                aVar2.g = null;
                                dVar.e(8, e10);
                                aVar = null;
                            }
                            if (aVar != null) {
                                aVar2 = aVar;
                            }
                        } else {
                            switch (i4) {
                                case 31:
                                case 32:
                                case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                                    fileInputStreamA2 = aVar2.a(assets, "dexopt/baseline.profm");
                                    if (fileInputStreamA2 == null) {
                                        if (fileInputStreamA2 != null) {
                                            fileInputStreamA2.close();
                                        }
                                        aVar = null;
                                    } else {
                                        if (Arrays.equals(f1396c, f(fileInputStreamA2, 4))) {
                                            throw new IllegalStateException("Invalid magic");
                                        }
                                        aVar2.g = i(fileInputStreamA2, f(fileInputStreamA2, 4), bArr5, bVarArr2);
                                        fileInputStreamA2.close();
                                        aVar = aVar2;
                                    }
                                    if (aVar != null) {
                                        aVar2 = aVar;
                                        break;
                                    }
                                default:
                                    dVar2 = aVar2.b;
                                    bVarArr = aVar2.g;
                                    bArr2 = aVar2.f1385c;
                                    if (bVarArr != null && bArr2 != null) {
                                        if (aVar2.f) {
                                            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                        }
                                        try {
                                            byteArrayOutputStream = new ByteArrayOutputStream();
                                            try {
                                                byteArrayOutputStream.write(bArr);
                                                byteArrayOutputStream.write(bArr2);
                                                if (o(byteArrayOutputStream, bArr2, bVarArr)) {
                                                    aVar2.f1388h = byteArrayOutputStream.toByteArray();
                                                    byteArrayOutputStream.close();
                                                    aVar2.g = null;
                                                } else {
                                                    dVar2.e(5, null);
                                                    aVar2.g = null;
                                                    byteArrayOutputStream.close();
                                                }
                                            } catch (Throwable th6) {
                                                try {
                                                    byteArrayOutputStream.close();
                                                    throw th6;
                                                } catch (Throwable th7) {
                                                    th6.addSuppressed(th7);
                                                    throw th6;
                                                }
                                            }
                                        } catch (IOException e11) {
                                            dVar2.e(7, e11);
                                        } catch (IllegalStateException e12) {
                                            dVar2.e(8, e12);
                                        }
                                    }
                                    bArr3 = aVar2.f1388h;
                                    if (bArr3 != null) {
                                        z3 = false;
                                        c3 = 1;
                                    } else {
                                        try {
                                            if (aVar2.f) {
                                                throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                            }
                                            try {
                                                try {
                                                    byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                                    try {
                                                        fileOutputStream = new FileOutputStream(aVar2.f1386d);
                                                        try {
                                                            try {
                                                                bArr4 = new byte[512];
                                                                while (true) {
                                                                    i3 = byteArrayInputStream.read(bArr4);
                                                                    if (i3 > 0) {
                                                                        fileOutputStream.write(bArr4, 0, i3);
                                                                    } else {
                                                                        c3 = 1;
                                                                        try {
                                                                            aVar2.b(1, null);
                                                                            fileOutputStream.close();
                                                                            byteArrayInputStream.close();
                                                                            aVar2.f1388h = null;
                                                                            aVar2.g = null;
                                                                            z3 = true;
                                                                        } catch (Throwable th8) {
                                                                            th = th8;
                                                                        }
                                                                    }
                                                                    th = th;
                                                                    try {
                                                                        fileOutputStream.close();
                                                                        throw th;
                                                                    } catch (Throwable th9) {
                                                                        th.addSuppressed(th9);
                                                                        throw th;
                                                                    }
                                                                }
                                                            } catch (Throwable th10) {
                                                                th = th10;
                                                                Throwable th11 = th;
                                                                try {
                                                                    byteArrayInputStream.close();
                                                                    throw th11;
                                                                } catch (Throwable th12) {
                                                                    th11.addSuppressed(th12);
                                                                    throw th11;
                                                                }
                                                            }
                                                        } catch (Throwable th13) {
                                                            th = th13;
                                                        }
                                                    } catch (Throwable th14) {
                                                        th = th14;
                                                    }
                                                } catch (FileNotFoundException e13) {
                                                    e = e13;
                                                    c3 = 1;
                                                    aVar2.b(6, e);
                                                    aVar2.f1388h = null;
                                                    aVar2.g = null;
                                                    z3 = false;
                                                } catch (IOException e14) {
                                                    e = e14;
                                                    c3 = 1;
                                                    aVar2.b(7, e);
                                                    aVar2.f1388h = null;
                                                    aVar2.g = null;
                                                    z3 = false;
                                                }
                                            } catch (FileNotFoundException e15) {
                                                e = e15;
                                                aVar2.b(6, e);
                                                aVar2.f1388h = null;
                                                aVar2.g = null;
                                                z3 = false;
                                            } catch (IOException e16) {
                                                e = e16;
                                                aVar2.b(7, e);
                                                aVar2.f1388h = null;
                                                aVar2.g = null;
                                                z3 = false;
                                            }
                                        } catch (Throwable th15) {
                                            aVar2.f1388h = null;
                                            aVar2.g = null;
                                            throw th15;
                                        }
                                    }
                                    if (z3) {
                                        e(packageInfo, filesDir);
                                    }
                                    z4 = z3;
                                    if (z4) {
                                        z5 = 0;
                                    } else {
                                        z5 = 0;
                                    }
                                    l.c(context, z5);
                            }
                        }
                    }
                    dVar2 = aVar2.b;
                    bVarArr = aVar2.g;
                    bArr2 = aVar2.f1385c;
                    if (bVarArr != null) {
                        if (aVar2.f) {
                            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                        }
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        byteArrayOutputStream.write(bArr);
                        byteArrayOutputStream.write(bArr2);
                        if (o(byteArrayOutputStream, bArr2, bVarArr)) {
                            dVar2.e(5, null);
                            aVar2.g = null;
                            byteArrayOutputStream.close();
                        } else {
                            aVar2.f1388h = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            aVar2.g = null;
                        }
                    }
                    bArr3 = aVar2.f1388h;
                    if (bArr3 != null) {
                        if (aVar2.f) {
                            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                        }
                        byteArrayInputStream = new ByteArrayInputStream(bArr3);
                        fileOutputStream = new FileOutputStream(aVar2.f1386d);
                        bArr4 = new byte[512];
                        while (true) {
                            i3 = byteArrayInputStream.read(bArr4);
                            if (i3 > 0) {
                                fileOutputStream.write(bArr4, 0, i3);
                            } else {
                                c3 = 1;
                                aVar2.b(1, null);
                                fileOutputStream.close();
                                byteArrayInputStream.close();
                                aVar2.f1388h = null;
                                aVar2.g = null;
                                z3 = true;
                            }
                            th = th;
                            fileOutputStream.close();
                            throw th;
                        }
                    }
                    z3 = false;
                    c3 = 1;
                    if (z3) {
                        e(packageInfo, filesDir);
                    }
                    z4 = z3;
                    if (z4) {
                        z5 = 0;
                    } else {
                        z5 = 0;
                    }
                    l.c(context, z5);
                } catch (Throwable th16) {
                    try {
                        fileInputStreamA.close();
                        throw th16;
                    } catch (IOException e17) {
                        dVar.e(7, e17);
                        throw th16;
                    }
                }
                aVar2.f = true;
                bArr = b;
                c3 = '\b';
            }
            c3 = 1;
            z4 = false;
            if (z4) {
                z5 = 0;
            } else {
                z5 = 0;
            }
            l.c(context, z5);
        } catch (PackageManager.NameNotFoundException e18) {
            dVar.e(7, e18);
            l.c(context, false);
        }
    }

    public static void t(ByteArrayOutputStream byteArrayOutputStream, long j2, int i3) throws IOException {
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i4] = (byte) ((j2 >> (i4 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void u(ByteArrayOutputStream byteArrayOutputStream, int i3) throws IOException {
        t(byteArrayOutputStream, i3, 2);
    }
}
