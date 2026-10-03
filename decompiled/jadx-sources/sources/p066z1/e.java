package p066z1;

import C1.T;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.unsigned.a;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p064y1.C0373f1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6439a;
    public static final Regex b;

    static {
        RegexOption regexOption = RegexOption.IGNORE_CASE;
        f6439a = new Regex("patch_[a-z0-9]{2,8}", regexOption);
        b = new Regex("patch(\\d*)", regexOption);
    }

    public static final int a(File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        MatchResult matchResultMatchEntire = b.matchEntire(StringsKt__StringsKt.substringBeforeLast$default(name, '.', (String) null, 2, (Object) null));
        if (matchResultMatchEntire == null) {
            return 0;
        }
        String str = matchResultMatchEntire.getGroupValues().get(1);
        Intrinsics.checkNotNullExpressionValue(str, "get(...)");
        Integer intOrNull = StringsKt.toIntOrNull(str);
        return (intOrNull != null ? intOrNull.intValue() : 1) + 1;
    }

    public static File b(File source, List archives) {
        Object obj;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(archives, "archives");
        Iterator it = SequencesKt.mapNotNull(CollectionsKt.asSequence(archives), new C0373f1(12)).iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                String absolutePath = ((File) next).getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                int i3 = 0;
                for (int i4 = 0; i4 < absolutePath.length(); i4++) {
                    if (absolutePath.charAt(i4) == File.separatorChar) {
                        i3++;
                    }
                }
                do {
                    Object next2 = it.next();
                    String absolutePath2 = ((File) next2).getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                    int i5 = 0;
                    for (int i6 = 0; i6 < absolutePath2.length(); i6++) {
                        if (absolutePath2.charAt(i6) == File.separatorChar) {
                            i5++;
                        }
                    }
                    if (i3 > i5) {
                        next = next2;
                        i3 = i5;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        File file = (File) obj;
        if (file != null) {
            String absolutePath3 = source.getAbsolutePath();
            String absolutePath4 = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath4, "getAbsolutePath(...)");
            Intrinsics.checkNotNull(absolutePath3);
            if (StringsKt.N(absolutePath4, absolutePath3)) {
                return file;
            }
        }
        return source;
    }

    public static void c(File source, File gameDir) {
        List<File> listSortedWith;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        File[] fileArrListFiles = source.listFiles();
        if (fileArrListFiles == null || (listSortedWith = ArraysKt.sortedWith(fileArrListFiles, new T(13))) == null) {
            return;
        }
        for (File file : listSortedWith) {
            Intrinsics.checkNotNull(file);
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            String lowerCase = name.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (!StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".xp3", false, 2, null) && !StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".exe", false, 2, null) && !StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) ".exe_", false, 2, (Object) null)) {
                d(file, new File(gameDir, file.getName()));
            }
        }
    }

    public static void d(File file, File file2) {
        if (file.isDirectory()) {
            file2.mkdirs();
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file3 : fileArrListFiles) {
                    Intrinsics.checkNotNull(file3);
                    d(file3, new File(file2, file3.getName()));
                }
                return;
            }
            return;
        }
        if (file2.exists()) {
            return;
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, 262144);
                CloseableKt.closeFinally(fileOutputStream, null);
                CloseableKt.closeFinally(fileInputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(fileInputStream, th3);
                throw th4;
            }
        }
    }

    public static void e(File gameDir) throws IOException {
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        File file = new File(gameDir, "data");
        if (new File(file, "startup.tjs").isFile()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    Intrinsics.checkNotNull(file2);
                    g(file2, new File(gameDir, file2.getName()));
                }
            }
            File[] fileArrListFiles2 = file.listFiles();
            if (fileArrListFiles2 == null || fileArrListFiles2.length == 0) {
                file.delete();
            }
        }
    }

    public static boolean f(File gamesRoot, File source) throws IOException {
        Intrinsics.checkNotNullParameter(gamesRoot, "gamesRoot");
        Intrinsics.checkNotNullParameter(source, "source");
        File canonicalFile = gamesRoot.getCanonicalFile();
        File canonicalFile2 = source.getCanonicalFile();
        if (!canonicalFile2.isDirectory()) {
            return false;
        }
        String path = canonicalFile2.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        String path2 = canonicalFile.getPath();
        String str = File.separator;
        StringBuilder sb = new StringBuilder();
        sb.append(path2);
        sb.append(str);
        return StringsKt.N(path, sb.toString());
    }

    public static void g(File file, File file2) throws IOException {
        int i3 = 0;
        if (file2.exists()) {
            if (!file.isDirectory() || !file2.isDirectory()) {
                FilesKt.deleteRecursively(file);
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                int length = fileArrListFiles.length;
                while (i3 < length) {
                    File file3 = fileArrListFiles[i3];
                    Intrinsics.checkNotNull(file3);
                    g(file3, new File(file2, file3.getName()));
                    i3++;
                }
            }
            File[] fileArrListFiles2 = file.listFiles();
            if (fileArrListFiles2 == null || fileArrListFiles2.length == 0) {
                file.delete();
                return;
            }
            return;
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        if (file.renameTo(file2)) {
            return;
        }
        if (file.isDirectory()) {
            file2.mkdirs();
            File[] fileArrListFiles3 = file.listFiles();
            if (fileArrListFiles3 != null) {
                int length2 = fileArrListFiles3.length;
                while (i3 < length2) {
                    File file4 = fileArrListFiles3[i3];
                    Intrinsics.checkNotNull(file4);
                    g(file4, new File(file2, file4.getName()));
                    i3++;
                }
            }
            if (!file.delete()) {
                throw new IOException(a.o("Cannot remove ", file.getAbsolutePath()));
            }
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, 262144);
                CloseableKt.closeFinally(fileOutputStream, null);
                CloseableKt.closeFinally(fileInputStream, null);
                if (file.delete()) {
                    return;
                }
                file2.delete();
                throw new IOException(a.o("Cannot remove ", file.getAbsolutePath()));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(fileInputStream, th3);
                throw th4;
            }
        }
    }
}
