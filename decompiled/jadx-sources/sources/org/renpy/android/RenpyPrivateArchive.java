package org.renpy.android;

import A1.C0009b;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.zip.GZIPInputStream;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
final class RenpyPrivateArchive {
    static final int ATTEMPTS = 2;
    private static final byte GNU_LONG_NAME = 76;
    static final String INTEGRITY_NAME = ".renpy7-integrity";
    static final long MAX_ARCHIVE_BYTES = 1073741824;
    static final long MAX_EXTRACTED_BYTES = 536870912;
    static final int MAX_EXTRACTED_FILES = 100000;
    static final int MAX_HEADER_BYTES = 65536;
    static final int MAX_TAR_ENTRIES = 100000;
    static final String NOMEDIA_NAME = ".nomedia";
    private static final byte PAX_EXTENDED = 120;
    private static final byte PAX_GLOBAL = 103;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static final class Result {
        final boolean extracted;
        final String failure;

        public /* synthetic */ Result(int i3, String str, boolean z2) {
            this(z2, str);
        }

        public boolean ok() {
            return this.failure == null;
        }

        private Result(boolean z2, String str) {
            this.extracted = z2;
            this.failure = str;
        }
    }

    private RenpyPrivateArchive() {
    }

    private static void collectFiles(File file, File file2, List<String> list) {
        File[] fileArrListFiles = file2.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file3 : fileArrListFiles) {
            String name = file3.getName();
            if (!file2.equals(file) || (!name.equals(INTEGRITY_NAME) && !name.equals(NOMEDIA_NAME))) {
                if (file3.isDirectory()) {
                    collectFiles(file, file3, list);
                } else if (file3.isFile()) {
                    list.add(file.toURI().relativize(file3.toURI()).getPath() + "=" + sha256(file3));
                }
            }
        }
    }

    private static boolean containsRegularFile(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                return true;
            }
            if (file2.isDirectory() && containsRegularFile(file2)) {
                return true;
            }
        }
        return false;
    }

    public static void deleteRecursively(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                deleteRecursively(file2);
            }
        }
        file.delete();
    }

    public static String extract(File file, File file2) {
        String str;
        long j2;
        if (file.length() > MAX_ARCHIVE_BYTES) {
            return "archive exceeds size limit";
        }
        byte[] bArr = new byte[65536];
        try {
            File canonicalFile = file2.getCanonicalFile();
            i2.b bVar = new i2.b(new BufferedInputStream(new GZIPInputStream(new BufferedInputStream(new FileInputStream(file), 65536)), 65536));
            int i3 = 0;
            String strGnuLongName = null;
            int i4 = 0;
            long j3 = 0;
            while (true) {
                try {
                    C0009b c0009bA = bVar.a();
                    if (c0009bA == null) {
                        bVar.close();
                        if (strGnuLongName != null) {
                            return "header entry with no member after it";
                        }
                        return null;
                    }
                    i2.a aVar = (i2.a) c0009bA.b;
                    i3++;
                    if (i3 > 100000) {
                        str = "too many entries";
                    } else {
                        byte b = aVar.f4458c;
                        if (b == 120 || b == 103) {
                            j2 = aVar.b;
                            if (j2 >= 0 || j2 > 65536) {
                                str = "oversized header entry";
                            } else {
                                byte[] fully = readFully(bVar, (int) j2);
                                if (fully == null) {
                                    str = "truncated header entry";
                                } else {
                                    if (b == 120) {
                                        String strPaxPath = paxPath(fully);
                                        if (strPaxPath != null) {
                                            strGnuLongName = strPaxPath;
                                        }
                                    } else if (b == 76) {
                                        strGnuLongName = gnuLongName(fully);
                                    }
                                    i3 = i3;
                                }
                            }
                        } else if (b == 76) {
                            j2 = aVar.b;
                            if (j2 >= 0) {
                            }
                            str = "oversized header entry";
                        } else {
                            if (strGnuLongName == null) {
                                strGnuLongName = c0009bA.m();
                            }
                            boolean z2 = b == 53 || strGnuLongName.endsWith("/");
                            if (b == 0 || b == 48 || b == 53) {
                                String strNormalizeEntryName = normalizeEntryName(strGnuLongName, z2);
                                if (strNormalizeEntryName == null) {
                                    str = "unsafe path " + strGnuLongName;
                                } else {
                                    if (!strNormalizeEntryName.isEmpty()) {
                                        File canonicalFile2 = new File(file2, strNormalizeEntryName).getCanonicalFile();
                                        if (!canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator)) {
                                            str = "path escapes the target: " + strGnuLongName;
                                        } else if (!z2) {
                                            i4++;
                                            if (i4 <= 100000) {
                                                long j4 = aVar.b;
                                                if (j4 >= 0 && j4 <= MAX_EXTRACTED_BYTES - j3) {
                                                    File parentFile = canonicalFile2.getParentFile();
                                                    if (parentFile == null || parentFile.mkdirs() || parentFile.isDirectory()) {
                                                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(canonicalFile2), 65536);
                                                        while (true) {
                                                            try {
                                                                int i5 = bVar.read(bArr);
                                                                if (i5 == -1) {
                                                                    bufferedOutputStream.close();
                                                                    strGnuLongName = null;
                                                                    break;
                                                                }
                                                                j3 += (long) i5;
                                                                if (j3 > MAX_EXTRACTED_BYTES) {
                                                                    bufferedOutputStream.close();
                                                                } else {
                                                                    bufferedOutputStream.write(bArr, 0, i5);
                                                                }
                                                            } catch (Throwable th) {
                                                                bufferedOutputStream.close();
                                                                throw th;
                                                            }
                                                        }
                                                    } else {
                                                        str = "could not create folder for " + strNormalizeEntryName;
                                                    }
                                                }
                                                bVar.close();
                                                return "extracted size limit";
                                            }
                                            str = "too many files";
                                        } else if (!canonicalFile2.mkdirs() && !canonicalFile2.isDirectory()) {
                                            str = "could not create " + strNormalizeEntryName;
                                        }
                                    }
                                    strGnuLongName = null;
                                }
                            } else {
                                str = "unsupported entry type '" + ((char) b) + "' for " + strGnuLongName;
                            }
                        }
                    }
                    bVar.close();
                    return str;
                } catch (Throwable th2) {
                    bVar.close();
                    throw th2;
                }
            }
        } catch (IOException e2) {
            return "I/O error: " + e2.getMessage();
        }
    }

    private static String extractAndPublish(File file, File file2) {
        File parentFile = file2.getAbsoluteFile().getParentFile();
        File file3 = new File(parentFile, file2.getName() + ".staging");
        File file4 = new File(parentFile, file2.getName() + ".previous");
        deleteRecursively(file3);
        if (!file3.mkdirs()) {
            return "could not create " + file3.getName();
        }
        try {
            String strExtract = extract(file, file3);
            if (strExtract != null) {
                return strExtract;
            }
            if (!hasRequiredContent(file3)) {
                return "archive lacks main.py, lib/ or renpy/";
            }
            String strTreeSha256 = treeSha256(file3);
            if (strTreeSha256.isEmpty() || !writeSmall(new File(file3, INTEGRITY_NAME), strTreeSha256)) {
                return "could not record the extracted tree";
            }
            try {
                new File(file3, NOMEDIA_NAME).createNewFile();
            } catch (IOException unused) {
            }
            deleteRecursively(file4);
            boolean zExists = file2.exists();
            if (zExists && !file2.renameTo(file4)) {
                return "could not move the previous tree aside";
            }
            if (file3.renameTo(file2)) {
                deleteRecursively(file4);
                return null;
            }
            if (!zExists || file4.renameTo(file2)) {
                return "could not publish the new tree";
            }
            return "could not publish the new tree, and the previous one stays at " + file4.getName();
        } finally {
            deleteRecursively(file3);
        }
    }

    public static String gnuLongName(byte[] bArr) {
        int length = bArr.length;
        while (length > 0 && bArr[length - 1] == 0) {
            length--;
        }
        try {
            return new String(bArr, 0, length, "UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean hasRequiredContent(File file) {
        return file != null && new File(file, "main.py").isFile() && new File(file, "lib").isDirectory() && containsRegularFile(new File(file, "renpy"));
    }

    private static String hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(String.format("%02x", Integer.valueOf(b & UByte.MAX_VALUE)));
        }
        return sb.toString();
    }

    public static boolean isIntact(File file) {
        if (!hasRequiredContent(file)) {
            return false;
        }
        String small = readSmall(new File(file, INTEGRITY_NAME));
        return !small.isEmpty() && small.equals(treeSha256(file));
    }

    public static String normalizeEntryName(String str, boolean z2) {
        if (str == null) {
            return null;
        }
        while (str.startsWith("./")) {
            str = str.substring(2);
        }
        if (z2) {
            while (str.endsWith("/")) {
                str = str.substring(0, str.length() - 1);
            }
            if (str.equals(".")) {
                str = "";
            }
            if (str.isEmpty()) {
                return "";
            }
        }
        if (str.isEmpty() || str.startsWith("/") || str.indexOf(92) >= 0 || str.indexOf(0) >= 0 || (str.length() >= 2 && str.charAt(1) == ':')) {
            return null;
        }
        for (String str2 : str.split("/", -1)) {
            if (str2.isEmpty() || str2.equals(".") || str2.equals("..")) {
                return null;
            }
        }
        return str;
    }

    public static String paxPath(byte[] bArr) {
        String strSubstring = null;
        int i3 = 0;
        while (i3 < bArr.length) {
            int i4 = i3;
            while (i4 < bArr.length && bArr[i4] != 32) {
                i4++;
            }
            if (i4 >= bArr.length) {
                return null;
            }
            try {
                int i5 = i4 - i3;
                int i6 = Integer.parseInt(new String(bArr, i3, i5, "US-ASCII"));
                if (i6 > i5 && (i3 = i3 + i6) <= bArr.length) {
                    String str = new String(bArr, i4 + 1, (i3 - i4) - 2, "UTF-8");
                    int iIndexOf = str.indexOf(61);
                    if (iIndexOf > 0 && str.substring(0, iIndexOf).equals("path")) {
                        strSubstring = str.substring(iIndexOf + 1);
                    }
                }
            } catch (Exception unused) {
            }
            return null;
        }
        return strSubstring;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Result prepare(File file, File file2, File file3) {
        int i3 = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        Object[] objArr8 = 0;
        Object[] objArr9 = 0;
        if (file == null || !file.isFile()) {
            return new Result(objArr2 == true ? 1 : 0, "private.mp3 is missing", objArr == true ? 1 : 0);
        }
        String strSha256 = sha256(file);
        if (strSha256.isEmpty()) {
            return new Result(i3, "could not read private.mp3", objArr9 == true ? 1 : 0);
        }
        String str = null;
        if (strSha256.equals(readSmall(file3)) && isIntact(file2)) {
            return new Result(objArr8 == true ? 1 : 0, str, objArr7 == true ? 1 : 0);
        }
        boolean z2 = true;
        String strExtractAndPublish = null;
        for (int i4 = 1; i4 <= 2; i4++) {
            strExtractAndPublish = extractAndPublish(file, file2);
            if (strExtractAndPublish == null) {
                if (writeSmall(file3, strSha256)) {
                    return new Result(objArr5 == true ? 1 : 0, str, z2);
                }
                return new Result(objArr6 == true ? 1 : 0, "could not record the archive digest", z2);
            }
        }
        return new Result(objArr4 == true ? 1 : 0, strExtractAndPublish, objArr3 == true ? 1 : 0);
    }

    private static byte[] readFully(InputStream inputStream, int i3) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i3);
        int iMax = Math.max(1, Math.min(i3, 8192));
        byte[] bArr = new byte[iMax];
        while (i3 > 0) {
            int i4 = inputStream.read(bArr, 0, Math.min(iMax, i3));
            if (i4 == -1) {
                return null;
            }
            byteArrayOutputStream.write(bArr, 0, i4);
            i3 -= i4;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String readSmall(File file) {
        if (file != null) {
            try {
                if (file.isFile() && file.length() <= 256) {
                    byte[] bArr = new byte[(int) file.length()];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        int i3 = fileInputStream.read(bArr);
                        return i3 > 0 ? new String(bArr, 0, i3, "UTF-8").trim() : "";
                    } finally {
                        fileInputStream.close();
                    }
                }
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public static String sha256(File file) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int i3 = fileInputStream.read(bArr);
                    if (i3 == -1) {
                        fileInputStream.close();
                        return hex(messageDigest.digest());
                    }
                    messageDigest.update(bArr, 0, i3);
                }
            } catch (Throwable th) {
                fileInputStream.close();
                throw th;
            }
        } catch (Exception unused) {
            return "";
        }
    }

    public static String treeSha256(File file) {
        try {
            ArrayList arrayList = new ArrayList();
            collectFiles(file, file, arrayList);
            if (arrayList.isEmpty()) {
                return "";
            }
            Collections.sort(arrayList);
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                messageDigest.update(((String) obj).getBytes("UTF-8"));
                messageDigest.update((byte) 10);
            }
            return hex(messageDigest.digest());
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean writeSmall(File file, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(str.getBytes("UTF-8"));
                return true;
            } finally {
                fileOutputStream.close();
            }
        } catch (Exception unused) {
            return false;
        }
    }
}
