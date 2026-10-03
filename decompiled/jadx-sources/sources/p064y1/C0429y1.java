package p064y1;

import A1.C0009b;
import E.b;
import L1.a;
import M1.c;
import M1.d;
import M1.e;
import M1.f;
import M1.g;
import M1.h;
import M1.j;
import M1.k;
import V1.A;
import V1.H;
import android.content.Context;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipInputStream;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: y1.y1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0429y1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0429y1 f6409a = new C0429y1();

    static {
        new ConcurrentHashMap();
    }

    public static final void a(a aVar, Context context, EnumC0420v1 enumC0420v1) {
        File[] fileArrListFiles;
        File parentFile = o(aVar, context, enumC0420v1).getParentFile();
        if (parentFile == null || (fileArrListFiles = parentFile.listFiles()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        for (File file : fileArrListFiles) {
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (StringsKt.N(name, "." + l(enumC0420v1, aVar) + ".")) {
                String name2 = file.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                if (StringsKt__StringsJVMKt.endsWith$default(name2, ".staging", false, 2, null)) {
                    arrayList.add(file);
                }
            }
        }
        int size = arrayList.size();
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            File file2 = (File) obj;
            Intrinsics.checkNotNull(file2);
            FilesKt.deleteRecursively(file2);
        }
    }

    public static final void b(String str, File file, Function1 function1) throws Throwable {
        int i3;
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnectionN = n(str);
            try {
                long contentLengthLong = httpURLConnectionN.getContentLengthLong();
                if (contentLengthLong > 1073741824) {
                    throw new IOException("Download exceeds byte limit");
                }
                InputStream inputStream = httpURLConnectionN.getInputStream();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[8192];
                        int i4 = -1;
                        int i5 = -1;
                        long j2 = 0;
                        while (true) {
                            int i6 = inputStream.read(bArr);
                            if (i6 == i4) {
                                if (contentLengthLong >= 0 && j2 != contentLengthLong) {
                                    throw new IOException("Downloaded size mismatch");
                                }
                                Unit unit = Unit.INSTANCE;
                                CloseableKt.closeFinally(fileOutputStream, null);
                                CloseableKt.closeFinally(inputStream, null);
                                httpURLConnectionN.disconnect();
                                return;
                            }
                            j2 += (long) i6;
                            if (j2 > 1073741824) {
                                throw new IOException("Download exceeds byte limit");
                            }
                            fileOutputStream.write(bArr, 0, i6);
                            if (contentLengthLong > 0 && (i3 = (int) ((((long) 100) * j2) / contentLengthLong)) != i5) {
                                function1.invoke(Integer.valueOf(i3));
                                i5 = i3;
                            }
                            i4 = -1;
                        }
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
                        CloseableKt.closeFinally(inputStream, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                httpURLConnection = httpURLConnectionN;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public static final void c(File file, File file2) throws IOException {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file), 8192));
            try {
                HashSet hashSet = new HashSet();
                File canonicalFile = file2.getCanonicalFile();
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                long j2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (nextEntry != null) {
                    i3++;
                    if (i3 > 100000) {
                        throw new IOException("ZIP entry limit exceeded");
                    }
                    String name = nextEntry.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String strM = m(name);
                    if (strM == null) {
                        throw new IOException("Unsafe ZIP path: " + nextEntry.getName());
                    }
                    if (strM.length() == 0) {
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    } else {
                        if (!hashSet.add(strM)) {
                            throw new IOException("Duplicate ZIP entry: " + strM);
                        }
                        File canonicalFile2 = new File(file2, strM).getCanonicalFile();
                        String path = canonicalFile2.getPath();
                        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
                        if (!StringsKt.N(path, canonicalFile.getPath() + File.separator)) {
                            throw new IOException("ZIP path escapes staging");
                        }
                        if (!nextEntry.isDirectory()) {
                            i4++;
                            if (i4 > 100000) {
                                throw new IOException("ZIP file limit exceeded");
                            }
                            for (File parentFile = canonicalFile2.getParentFile(); parentFile != null && !Intrinsics.areEqual(parentFile, canonicalFile); parentFile = parentFile.getParentFile()) {
                                if (parentFile.exists() && (!parentFile.isDirectory() || !Intrinsics.areEqual(parentFile.getCanonicalFile(), parentFile.getAbsoluteFile()))) {
                                    throw new IOException("Unsafe ZIP directory");
                                }
                            }
                            File parentFile2 = canonicalFile2.getParentFile();
                            if (parentFile2 != null) {
                                parentFile2.mkdirs();
                            }
                            Intrinsics.checkNotNull(canonicalFile2);
                            FileOutputStream fileOutputStream = new FileOutputStream(canonicalFile2);
                            try {
                                byte[] bArr = new byte[8192];
                                while (true) {
                                    int i5 = zipInputStream.read(bArr);
                                    if (i5 == -1) {
                                        Unit unit = Unit.INSTANCE;
                                        CloseableKt.closeFinally(fileOutputStream, null);
                                        break;
                                    } else {
                                        j2 += (long) i5;
                                        if (j2 > 536870912) {
                                            throw new IOException("ZIP byte limit exceeded");
                                        }
                                        fileOutputStream.write(bArr, 0, i5);
                                    }
                                    try {
                                        throw th;
                                    } catch (Throwable th) {
                                        CloseableKt.closeFinally(zipInputStream, th);
                                        throw th;
                                    }
                                }
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    CloseableKt.closeFinally(fileOutputStream, th2);
                                    throw th3;
                                }
                            }
                        }
                        if (!canonicalFile2.exists()) {
                            canonicalFile2.mkdirs();
                        }
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    }
                    throw new IOException("Invalid ZIP archive", e);
                }
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(zipInputStream, null);
            } catch (Throwable th4) {
                throw th4;
            }
        } catch (ZipException e2) {
            throw new IOException("Invalid ZIP archive", e2);
        }
    }

    public static final void d(File file, File file2) throws IOException {
        File file3 = new File(file2.getParentFile(), b.m(".", file2.getName(), ".previous"));
        FilesKt.deleteRecursively(file3);
        boolean zExists = file2.exists();
        if (zExists && !file2.renameTo(file3)) {
            throw new IOException("Could not stage previous plugin");
        }
        if (file.renameTo(file2)) {
            FilesKt.deleteRecursively(file3);
        } else {
            if (zExists) {
                file3.renameTo(file2);
            }
            throw new IOException("Could not publish plugin");
        }
    }

    public static final void e(a aVar, Context context, EnumC0420v1 enumC0420v1) {
        File fileO = o(aVar, context, enumC0420v1);
        if (!fileO.exists()) {
            fileO.mkdirs();
        }
        String strO = CollectionsKt.o(e.a(fileO), "\n", null, null, null, 62);
        File file = new File(o(aVar, context, enumC0420v1), ".install-trust");
        String str = aVar.g;
        String str2 = aVar.f1280e;
        Locale locale = Locale.ROOT;
        String lowerCase = str2.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String lowerCase2 = aVar.f.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        StringBuilder sb = new StringBuilder("VERIFIED\n");
        sb.append(str);
        sb.append("\n");
        kotlin.collections.unsigned.a.n(sb, lowerCase, "\n", lowerCase2, "\nCATALOG\ntrue\n");
        sb.append(strO);
        sb.append("\n");
        FilesKt__FileReadWriteKt.writeText$default(file, sb.toString(), null, 2, null);
    }

    public static final void f(a aVar, Context context, EnumC0420v1 enumC0420v1) {
        File fileO = o(aVar, context, enumC0420v1);
        if (!fileO.exists()) {
            fileO.mkdirs();
        }
        String strA = enumC0420v1.a();
        if (strA == null) {
            return;
        }
        List listB = enumC0420v1.b();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB, 10));
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(strA + "/" + ((String) it.next()));
        }
        List listPlus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) (enumC0420v1 == EnumC0420v1.RENPY7 ? CollectionsKt.listOf("private.mp3") : CollectionsKt.emptyList()));
        j(enumC0420v1, aVar);
        e.d(fileO, listPlus);
        CollectionsKt.o(listPlus, "\n", null, null, new d(fileO, 2), 30);
        new File(o(aVar, context, enumC0420v1), ".install-trust");
        throw null;
    }

    public static final void g(EnumC0420v1 enumC0420v1, File file) throws IOException {
        String strA = enumC0420v1.a();
        if (strA == null) {
            return;
        }
        File file2 = new File(file, strA);
        List listB = enumC0420v1.b();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listB) {
            if (!new File(file2, (String) obj).exists()) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new IOException("ZIP không chứa thư viện cần thiết cho " + strA + ": " + CollectionsKt.o(arrayList, null, null, null, null, 63));
        }
        if (enumC0420v1 == EnumC0420v1.RENPY7 && (!new File(file, "private.mp3").isFile() || new File(file2, "private.mp3").exists())) {
            throw new IOException("Ren'Py 7 private.mp3 must be at plugin root");
        }
        if (enumC0420v1 == EnumC0420v1.GODOT && !new File(file, "godot-lib.jar").isFile()) {
            throw new IOException("Godot plugin ZIP must include godot-lib.jar (Java half matching the .so)");
        }
        Log.i("NativePluginManager", "Plugin " + enumC0420v1.f6383c + " đã cài xong, tất cả .so đều có mặt.");
    }

    public static final void h(File file, EnumC0420v1 enumC0420v1, a aVar) {
        String strG = (enumC0420v1 != EnumC0420v1.GODOT || aVar == null) ? "" : kotlin.collections.unsigned.a.g(aVar.f1280e, "\n");
        FilesKt__FileReadWriteKt.writeText$default(new File(file, ".install-commit"), "COMMITTED\n" + j(enumC0420v1, aVar) + "\n" + (aVar != null ? aVar.f1279d : enumC0420v1.f6385e) + "\n" + strG, null, 2, null);
    }

    public static String j(EnumC0420v1 enumC0420v1, a aVar) {
        if (aVar == null) {
            return enumC0420v1 == EnumC0420v1.RENPY7 ? "renpy7:7.8.7" : "renpy8:8.5.3";
        }
        return enumC0420v1.b + ":" + aVar.b;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0078  */
    /* JADX WARN: Code duplicated, block: B:25:0x0087  */
    /* JADX WARN: Code duplicated, block: B:28:0x008e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0098  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:36:0x00af  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f5 A[Catch: Exception -> 0x0110, TryCatch #0 {Exception -> 0x0110, blocks: (B:47:0x00e0, B:52:0x00f5, B:54:0x00fb, B:56:0x0105, B:58:0x010b), top: B:70:0x00e0 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0110  */
    /* JADX WARN: Code duplicated, block: B:62:0x0113  */
    /* JADX WARN: Code duplicated, block: B:63:0x0116  */
    /* JADX WARN: Code duplicated, block: B:66:0x011b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:74:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:? A[LOOP:0: B:29:0x0092->B:76:?, LOOP_END, SYNTHETIC] */
    public static boolean k(a aVar, Context context, EnumC0420v1 plugin) {
        File file;
        int iIntValue;
        int i3;
        File file2;
        String text$default;
        String string;
        Integer intOrNull;
        Iterator it;
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(context, "context");
        String strA = plugin.a();
        if (strA != null) {
            List listB = plugin.b();
            EnumC0420v1 enumC0420v1 = EnumC0420v1.GODOT;
            if (plugin != enumC0420v1 || aVar == null) {
                File fileO = o(aVar, context, plugin);
                file = new File(fileO, strA);
                if (!listB.isEmpty()) {
                    if (listB.isEmpty()) {
                        it = listB.iterator();
                        while (it.hasNext()) {
                            if (!new File(file, (String) it.next()).isFile()) {
                            }
                        }
                        if (plugin == EnumC0420v1.RENPY7) {
                            Intrinsics.checkNotNullParameter(plugin, "plugin");
                            Intrinsics.checkNotNullParameter(context, "context");
                            file2 = new File(o(aVar, context, plugin), ".artifact-version");
                            if (!file2.isFile()) {
                                file2 = null;
                            }
                            if (file2 != null) {
                                iIntValue = 1;
                            } else {
                                iIntValue = 1;
                            }
                            if (aVar != null) {
                                i3 = aVar.f1279d;
                            } else {
                                i3 = plugin.f6385e;
                            }
                            if (iIntValue == i3) {
                                return true;
                            }
                        } else {
                            Intrinsics.checkNotNullParameter(plugin, "plugin");
                            Intrinsics.checkNotNullParameter(context, "context");
                            file2 = new File(o(aVar, context, plugin), ".artifact-version");
                            if (!file2.isFile()) {
                                file2 = null;
                            }
                            if (file2 != null) {
                                iIntValue = 1;
                            } else {
                                iIntValue = 1;
                            }
                            if (aVar != null) {
                                i3 = aVar.f1279d;
                            } else {
                                i3 = plugin.f6385e;
                            }
                            if (iIntValue == i3) {
                                return true;
                            }
                        }
                    } else if ((plugin == EnumC0420v1.RENPY7 || (new File(fileO, "private.mp3").isFile() && !new File(file, "private.mp3").exists())) && (plugin != EnumC0420v1.GODOT || new File(fileO, "godot-lib.jar").isFile())) {
                        Intrinsics.checkNotNullParameter(plugin, "plugin");
                        Intrinsics.checkNotNullParameter(context, "context");
                        try {
                            file2 = new File(o(aVar, context, plugin), ".artifact-version");
                            if (!file2.isFile()) {
                                file2 = null;
                            }
                            if (file2 != null || (text$default = FilesKt__FileReadWriteKt.readText$default(file2, null, 1, null)) == null || (string = StringsKt.trim((CharSequence) text$default).toString()) == null || (intOrNull = StringsKt.toIntOrNull(string)) == null) {
                                iIntValue = 1;
                            } else {
                                iIntValue = intOrNull.intValue();
                            }
                        } catch (Exception unused) {
                        }
                        if (aVar != null) {
                            i3 = aVar.f1279d;
                        } else {
                            i3 = plugin.f6385e;
                        }
                        if (iIntValue == i3) {
                            return true;
                        }
                    }
                }
            } else {
                try {
                    List lines$default = FilesKt__FileReadWriteKt.readLines$default(new File(o(aVar, context, plugin), ".install-commit"), null, 1, null);
                    if (lines$default.size() >= 3 && Intrinsics.areEqual(lines$default.get(0), "COMMITTED") && Intrinsics.areEqual(lines$default.get(1), j(plugin, aVar)) && Intrinsics.areEqual(lines$default.get(2), String.valueOf(aVar.f1279d)) && (plugin != enumC0420v1 || (lines$default.size() >= 4 && StringsKt.equals((String) lines$default.get(3), aVar.f1280e, true)))) {
                        File fileO2 = o(aVar, context, plugin);
                        file = new File(fileO2, strA);
                        if (!listB.isEmpty()) {
                            if (listB.isEmpty()) {
                                it = listB.iterator();
                                while (it.hasNext()) {
                                    if (!new File(file, (String) it.next()).isFile()) {
                                    }
                                }
                                if (plugin == EnumC0420v1.RENPY7) {
                                    Intrinsics.checkNotNullParameter(plugin, "plugin");
                                    Intrinsics.checkNotNullParameter(context, "context");
                                    file2 = new File(o(aVar, context, plugin), ".artifact-version");
                                    if (!file2.isFile()) {
                                        file2 = null;
                                    }
                                    if (file2 != null) {
                                        iIntValue = 1;
                                    } else {
                                        iIntValue = 1;
                                    }
                                    if (aVar != null) {
                                        i3 = aVar.f1279d;
                                    } else {
                                        i3 = plugin.f6385e;
                                    }
                                    if (iIntValue == i3) {
                                        return true;
                                    }
                                } else {
                                    Intrinsics.checkNotNullParameter(plugin, "plugin");
                                    Intrinsics.checkNotNullParameter(context, "context");
                                    file2 = new File(o(aVar, context, plugin), ".artifact-version");
                                    if (!file2.isFile()) {
                                        file2 = null;
                                    }
                                    if (file2 != null) {
                                        iIntValue = 1;
                                    } else {
                                        iIntValue = 1;
                                    }
                                    if (aVar != null) {
                                        i3 = aVar.f1279d;
                                    } else {
                                        i3 = plugin.f6385e;
                                    }
                                    if (iIntValue == i3) {
                                        return true;
                                    }
                                }
                            } else if (plugin == EnumC0420v1.RENPY7) {
                                Intrinsics.checkNotNullParameter(plugin, "plugin");
                                Intrinsics.checkNotNullParameter(context, "context");
                                file2 = new File(o(aVar, context, plugin), ".artifact-version");
                                if (!file2.isFile()) {
                                    file2 = null;
                                }
                                if (file2 != null) {
                                    iIntValue = 1;
                                } else {
                                    iIntValue = 1;
                                }
                                if (aVar != null) {
                                    i3 = aVar.f1279d;
                                } else {
                                    i3 = plugin.f6385e;
                                }
                                if (iIntValue == i3) {
                                    return true;
                                }
                            } else {
                                Intrinsics.checkNotNullParameter(plugin, "plugin");
                                Intrinsics.checkNotNullParameter(context, "context");
                                file2 = new File(o(aVar, context, plugin), ".artifact-version");
                                if (!file2.isFile()) {
                                    file2 = null;
                                }
                                if (file2 != null) {
                                    iIntValue = 1;
                                } else {
                                    iIntValue = 1;
                                }
                                if (aVar != null) {
                                    i3 = aVar.f1279d;
                                } else {
                                    i3 = plugin.f6385e;
                                }
                                if (iIntValue == i3) {
                                    return true;
                                }
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
            }
        }
        return false;
    }

    public static String l(EnumC0420v1 enumC0420v1, a aVar) {
        String strA;
        return (aVar == null || (strA = aVar.a()) == null) ? enumC0420v1.b : strA;
    }

    public static String m(String str) {
        if (str.length() == 0 || StringsKt__StringsKt.startsWith$default((CharSequence) str, '/', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\\', false, 2, (Object) null) || new Regex("^[A-Za-z]:").containsMatchIn(str)) {
            return null;
        }
        String strTrimEnd = StringsKt.trimEnd(str, '/');
        if (strTrimEnd.length() == 0) {
            return null;
        }
        List<String> listSplit$default = StringsKt__StringsKt.split$default(strTrimEnd, new char[]{'/'}, false, 0, 6, (Object) null);
        if (listSplit$default == null || !listSplit$default.isEmpty()) {
            for (String str2 : listSplit$default) {
                if (str2.length() == 0 || Intrinsics.areEqual(str2, ".") || Intrinsics.areEqual(str2, "..")) {
                    return null;
                }
            }
        }
        if (listSplit$default.size() == 1) {
            return StringsKt.s(str, '/') ? "" : (String) listSplit$default.get(0);
        }
        return SetsKt.setOf((Object[]) new String[]{"arm64-v8a", "armeabi-v7a", "x86_64", "x86"}).contains(listSplit$default.get(0)) ? CollectionsKt.o(listSplit$default, "/", null, null, null, 62) : CollectionsKt.o(CollectionsKt___CollectionsKt.drop(listSplit$default, 1), "/", null, null, null, 62);
    }

    public static HttpURLConnection n(String str) throws IOException {
        URL url = new URL(str);
        if (!StringsKt.equals(url.getProtocol(), "https", true)) {
            throw new IllegalArgumentException("Initial URL must use HTTPS");
        }
        if (url.getUserInfo() != null) {
            throw new IllegalArgumentException("URL credentials are forbidden");
        }
        int i3 = 0;
        while (i3 < 9) {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setReadTimeout(90000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Android; Mobile)");
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (200 <= responseCode && responseCode < 300) {
                return httpURLConnection;
            }
            if (300 > responseCode || responseCode >= 400) {
                httpURLConnection.disconnect();
                throw new IOException(b.i(responseCode, "HTTP response is not successful: "));
            }
            if (i3 == 8) {
                httpURLConnection.disconnect();
                throw new IOException("Too many redirects");
            }
            String headerField = httpURLConnection.getHeaderField("Location");
            if (headerField == null) {
                httpURLConnection.disconnect();
                throw new IOException("Redirect without Location");
            }
            URL url2 = new URL(url, headerField);
            httpURLConnection.disconnect();
            if (!StringsKt.equals(url2.getProtocol(), "https", true)) {
                throw new IllegalArgumentException("Redirect must remain HTTPS");
            }
            if (url2.getUserInfo() != null) {
                throw new IllegalArgumentException("Redirect credentials are forbidden");
            }
            i3++;
            url = url2;
        }
        throw new IllegalStateException("Unreachable");
    }

    public static File o(a aVar, Context context, EnumC0420v1 plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(context.getFilesDir(), kotlin.collections.unsigned.a.o("engine-plugins/", l(plugin, aVar)));
    }

    public static void p(a aVar, Context context, EnumC0420v1 plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            File fileO = o(aVar, context, plugin);
            if (!fileO.exists()) {
                fileO.mkdirs();
            }
            FilesKt__FileReadWriteKt.writeText$default(new File(o(aVar, context, plugin), ".artifact-version"), String.valueOf(aVar != null ? aVar.f1279d : plugin.f6385e), null, 2, null);
        } catch (Exception e2) {
            Log.w("NativePluginManager", "Could not record artifact version for " + l(plugin, aVar) + ": " + e2.getMessage());
        }
    }

    public static boolean q(a aVar, Context context, EnumC0420v1 plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            File fileO = o(aVar, context, plugin);
            boolean z2 = !fileO.exists() || FilesKt.deleteRecursively(fileO);
            Log.w("NativePluginManager", "Cleared " + l(plugin, aVar) + " install for re-download (success=" + z2 + ")");
            return z2;
        } catch (Exception e2) {
            Log.e("NativePluginManager", "Could not clear " + l(plugin, aVar) + " install: " + e2.getMessage());
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0242  */
    /* JADX WARN: Code duplicated, block: B:102:0x024b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x024d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0250  */
    /* JADX WARN: Code duplicated, block: B:107:0x0256  */
    /* JADX WARN: Code duplicated, block: B:109:0x0260  */
    /* JADX WARN: Code duplicated, block: B:111:0x0266  */
    /* JADX WARN: Code duplicated, block: B:113:0x026c  */
    /* JADX WARN: Code duplicated, block: B:114:0x0274  */
    /* JADX WARN: Code duplicated, block: B:116:0x0289  */
    /* JADX WARN: Code duplicated, block: B:117:0x0294  */
    /* JADX WARN: Code duplicated, block: B:166:0x022b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:? A[LOOP:2: B:85:0x01db->B:172:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x01c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:? A[LOOP:3: B:74:0x01a8->B:175:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:84:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:87:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:93:0x020c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0235  */
    /* JADX WARN: Instruction removed from duplicated block: B:114:0x0274, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x020c, please report this as an issue */
    public static k r(a aVar, Context context, EnumC0420v1 plugin) {
        boolean z2;
        k kVar;
        List listEmptyList;
        String strG;
        Iterator it;
        Set set;
        Iterator it2;
        ArrayList arrayList;
        boolean z3;
        int iOrdinal;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        boolean z4 = false;
        if (!k(aVar, context, plugin)) {
            return new k(false, j.f1374d, false, 12);
        }
        g artifact = plugin == EnumC0420v1.RENPY7 ? h.b : h.f1368c;
        String abi = plugin.a();
        if (abi == null) {
            return new k(false, j.f1373c, false, 12);
        }
        File root = o(aVar, context, plugin);
        Intrinsics.checkNotNullParameter(artifact, "artifact");
        Intrinsics.checkNotNullParameter(root, "root");
        Intrinsics.checkNotNullParameter(abi, "abi");
        M1.a validator = M1.a.f1354a;
        Intrinsics.checkNotNullParameter(validator, "validator");
        LinkedHashSet files = new LinkedHashSet();
        List<String> listA = artifact.a(abi);
        M1.b bVar = (M1.b) artifact.f1365e;
        String str = (String) artifact.f1363c;
        f fVar = (f) artifact.f1364d;
        for (String str2 : listA) {
            boolean z5 = z4;
            if (new File(root, kotlin.collections.unsigned.a.h(abi, "/", str2)).isFile()) {
                files.add(abi + "/" + str2);
            }
            z4 = z5;
        }
        boolean z6 = z4;
        if (fVar == f.b && new File(root, "private.mp3").isFile()) {
            files.add("private.mp3");
        }
        Intrinsics.checkNotNullParameter(files, "files");
        C0009b tree = new C0009b();
        Set setUnmodifiableSet = Collections.unmodifiableSet(CollectionsKt.toSet(files));
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet, "unmodifiableSet(...)");
        tree.b = setUnmodifiableSet;
        Intrinsics.checkNotNullParameter(artifact, "artifact");
        Intrinsics.checkNotNullParameter(tree, "tree");
        Intrinsics.checkNotNullParameter(abi, "abi");
        Intrinsics.checkNotNullParameter(abi, "abi");
        if (((Set) artifact.f).contains(abi) && ((Map) artifact.f1366h).containsKey(abi)) {
            Set set2 = (Set) tree.b;
            if (set2 == null || !set2.isEmpty()) {
                Iterator it3 = set2.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        String str3 = (String) it3.next();
                        if (str3.length() > 0 && str3.length() <= 4096 && !StringsKt__StringsKt.startsWith$default((CharSequence) str3, '/', false, 2, (Object) null) && ((str3.length() < 3 || str3.charAt(1) != ':' || str3.charAt(2) != '/') && !StringsKt__StringsKt.contains$default((CharSequence) str3, '\\', false, 2, (Object) null))) {
                            char[] cArr = new char[1];
                            cArr[z6 ? 1 : 0] = '/';
                            List listSplit$default = StringsKt__StringsKt.split$default(str3, cArr, false, 0, 6, (Object) null);
                            if (listSplit$default == null || !listSplit$default.isEmpty()) {
                                Iterator it4 = listSplit$default.iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        String str4 = (String) it4.next();
                                        if (str4.length() != 0 && !Intrinsics.areEqual(str4, ".") && !Intrinsics.areEqual(str4, "..")) {
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                        j jVar = j.f1376h;
                        z2 = z6 ? 1 : 0;
                        kVar = new k(z2, jVar, z2, 12);
                    } else {
                        char[] cArr2 = new char[1];
                        cArr2[z6 ? 1 : 0] = '/';
                        strG = kotlin.collections.unsigned.a.g(StringsKt.trimEnd(str, cArr2), "/");
                        if (set2 == null && set2.isEmpty()) {
                            set = CollectionsKt.toSet((List) artifact.g);
                            if (set2 == null) {
                                it2 = set2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        List listA2 = artifact.a(abi);
                                        arrayList = new ArrayList();
                                        for (Object obj : listA2) {
                                            if (!set2.contains(abi + "/" + ((String) obj))) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        if (arrayList.isEmpty()) {
                                            z3 = false;
                                            iOrdinal = fVar.ordinal();
                                            if (iOrdinal != 0) {
                                                if (set2.contains(strG + "private.mp3")) {
                                                    z2 = false;
                                                } else {
                                                    z2 = false;
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                            } else if (iOrdinal != 1) {
                                                if (!set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                                z2 = false;
                                            } else {
                                                if (iOrdinal == 2) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                if (set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.g, false, 12);
                                                }
                                                z2 = false;
                                            }
                                            c cVar = c.b;
                                            Intrinsics.checkNotNullParameter(bVar, "<this>");
                                            bVar.getClass();
                                            kVar = new k(true, (j) null, z2, 6);
                                        } else {
                                            z3 = false;
                                            kVar = new k(false, j.f1374d, false, 12);
                                        }
                                        z2 = z3;
                                    } else if (!set.contains((String) it2.next())) {
                                        z2 = false;
                                        kVar = new k(false, j.f1377i, false, 12);
                                    }
                                }
                            } else {
                                it2 = set2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        List listA3 = artifact.a(abi);
                                        arrayList = new ArrayList();
                                        while (r1.hasNext()) {
                                            if (!set2.contains(abi + "/" + ((String) obj))) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        if (arrayList.isEmpty()) {
                                            z3 = false;
                                            kVar = new k(false, j.f1374d, false, 12);
                                        } else {
                                            z3 = false;
                                            iOrdinal = fVar.ordinal();
                                            if (iOrdinal != 0) {
                                                if (set2.contains(strG + "private.mp3")) {
                                                    z2 = false;
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                } else {
                                                    z2 = false;
                                                }
                                            } else if (iOrdinal != 1) {
                                                if (!set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                                z2 = false;
                                            } else {
                                                if (iOrdinal == 2) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                if (set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.g, false, 12);
                                                }
                                                z2 = false;
                                            }
                                            c cVar2 = c.b;
                                            Intrinsics.checkNotNullParameter(bVar, "<this>");
                                            bVar.getClass();
                                            kVar = new k(true, (j) null, z2, 6);
                                        }
                                        z2 = z3;
                                    } else if (!set.contains((String) it2.next())) {
                                        z2 = false;
                                        kVar = new k(false, j.f1377i, false, 12);
                                    }
                                }
                            }
                        } else {
                            it = set2.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    set = CollectionsKt.toSet((List) artifact.g);
                                    if (set2 == null && set2.isEmpty()) {
                                        List listA4 = artifact.a(abi);
                                        arrayList = new ArrayList();
                                        while (r1.hasNext()) {
                                            if (!set2.contains(abi + "/" + ((String) obj))) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        if (arrayList.isEmpty()) {
                                            z3 = false;
                                            kVar = new k(false, j.f1374d, false, 12);
                                        } else {
                                            z3 = false;
                                            iOrdinal = fVar.ordinal();
                                            if (iOrdinal != 0) {
                                                if (set2.contains(strG + "private.mp3")) {
                                                    z2 = false;
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                } else {
                                                    z2 = false;
                                                }
                                            } else if (iOrdinal != 1) {
                                                if (!set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                                z2 = false;
                                            } else {
                                                if (iOrdinal == 2) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                if (set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.g, false, 12);
                                                }
                                                z2 = false;
                                            }
                                            c cVar3 = c.b;
                                            Intrinsics.checkNotNullParameter(bVar, "<this>");
                                            bVar.getClass();
                                            kVar = new k(true, (j) null, z2, 6);
                                        }
                                        z2 = z3;
                                    } else {
                                        it2 = set2.iterator();
                                        while (true) {
                                            if (!it2.hasNext()) {
                                                List listA5 = artifact.a(abi);
                                                arrayList = new ArrayList();
                                                while (r1.hasNext()) {
                                                    if (!set2.contains(abi + "/" + ((String) obj))) {
                                                        arrayList.add(obj);
                                                    }
                                                }
                                                if (arrayList.isEmpty()) {
                                                    z3 = false;
                                                    kVar = new k(false, j.f1374d, false, 12);
                                                } else {
                                                    z3 = false;
                                                    iOrdinal = fVar.ordinal();
                                                    if (iOrdinal != 0) {
                                                        if (set2.contains(strG + "private.mp3")) {
                                                            z2 = false;
                                                            kVar = new k(false, j.f1375e, false, 12);
                                                        } else {
                                                            z2 = false;
                                                        }
                                                    } else if (iOrdinal != 1) {
                                                        if (!set2.contains("private.mp3")) {
                                                            kVar = new k(false, j.f1375e, false, 12);
                                                        }
                                                        z2 = false;
                                                    } else {
                                                        if (iOrdinal == 2) {
                                                            throw new NoWhenBranchMatchedException();
                                                        }
                                                        if (set2.contains("private.mp3")) {
                                                            kVar = new k(false, j.g, false, 12);
                                                        }
                                                        z2 = false;
                                                    }
                                                    c cVar4 = c.b;
                                                    Intrinsics.checkNotNullParameter(bVar, "<this>");
                                                    bVar.getClass();
                                                    kVar = new k(true, (j) null, z2, 6);
                                                }
                                                z2 = z3;
                                            } else if (!set.contains((String) it2.next())) {
                                                z2 = false;
                                                kVar = new k(false, j.f1377i, false, 12);
                                            }
                                        }
                                    }
                                } else if (StringsKt.N((String) it.next(), strG)) {
                                    z2 = false;
                                    kVar = new k(false, j.f, false, 12);
                                }
                            }
                        }
                    }
                }
            } else {
                char[] cArr3 = new char[1];
                cArr3[z6 ? 1 : 0] = '/';
                strG = kotlin.collections.unsigned.a.g(StringsKt.trimEnd(str, cArr3), "/");
                if (set2 == null) {
                    it = set2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            set = CollectionsKt.toSet((List) artifact.g);
                            if (set2 == null) {
                                it2 = set2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        List listA6 = artifact.a(abi);
                                        arrayList = new ArrayList();
                                        while (r1.hasNext()) {
                                            if (!set2.contains(abi + "/" + ((String) obj))) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        if (arrayList.isEmpty()) {
                                            z3 = false;
                                            kVar = new k(false, j.f1374d, false, 12);
                                        } else {
                                            z3 = false;
                                            iOrdinal = fVar.ordinal();
                                            if (iOrdinal != 0) {
                                                if (set2.contains(strG + "private.mp3")) {
                                                    z2 = false;
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                } else {
                                                    z2 = false;
                                                }
                                            } else if (iOrdinal != 1) {
                                                if (!set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                                z2 = false;
                                            } else {
                                                if (iOrdinal == 2) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                if (set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.g, false, 12);
                                                }
                                                z2 = false;
                                            }
                                            c cVar5 = c.b;
                                            Intrinsics.checkNotNullParameter(bVar, "<this>");
                                            bVar.getClass();
                                            kVar = new k(true, (j) null, z2, 6);
                                        }
                                        z2 = z3;
                                    } else if (!set.contains((String) it2.next())) {
                                        z2 = false;
                                        kVar = new k(false, j.f1377i, false, 12);
                                    }
                                }
                            } else {
                                it2 = set2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        List listA7 = artifact.a(abi);
                                        arrayList = new ArrayList();
                                        while (r1.hasNext()) {
                                            if (!set2.contains(abi + "/" + ((String) obj))) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        if (arrayList.isEmpty()) {
                                            z3 = false;
                                            kVar = new k(false, j.f1374d, false, 12);
                                        } else {
                                            z3 = false;
                                            iOrdinal = fVar.ordinal();
                                            if (iOrdinal != 0) {
                                                if (set2.contains(strG + "private.mp3")) {
                                                    z2 = false;
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                } else {
                                                    z2 = false;
                                                }
                                            } else if (iOrdinal != 1) {
                                                if (!set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                                z2 = false;
                                            } else {
                                                if (iOrdinal == 2) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                if (set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.g, false, 12);
                                                }
                                                z2 = false;
                                            }
                                            c cVar6 = c.b;
                                            Intrinsics.checkNotNullParameter(bVar, "<this>");
                                            bVar.getClass();
                                            kVar = new k(true, (j) null, z2, 6);
                                        }
                                        z2 = z3;
                                    } else if (!set.contains((String) it2.next())) {
                                        z2 = false;
                                        kVar = new k(false, j.f1377i, false, 12);
                                    }
                                }
                            }
                        } else if (StringsKt.N((String) it.next(), strG)) {
                            z2 = false;
                            kVar = new k(false, j.f, false, 12);
                        }
                    }
                } else {
                    it = set2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            set = CollectionsKt.toSet((List) artifact.g);
                            if (set2 == null) {
                                it2 = set2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        List listA8 = artifact.a(abi);
                                        arrayList = new ArrayList();
                                        while (r1.hasNext()) {
                                            if (!set2.contains(abi + "/" + ((String) obj))) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        if (arrayList.isEmpty()) {
                                            z3 = false;
                                            kVar = new k(false, j.f1374d, false, 12);
                                        } else {
                                            z3 = false;
                                            iOrdinal = fVar.ordinal();
                                            if (iOrdinal != 0) {
                                                if (set2.contains(strG + "private.mp3")) {
                                                    z2 = false;
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                } else {
                                                    z2 = false;
                                                }
                                            } else if (iOrdinal != 1) {
                                                if (!set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                                z2 = false;
                                            } else {
                                                if (iOrdinal == 2) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                if (set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.g, false, 12);
                                                }
                                                z2 = false;
                                            }
                                            c cVar7 = c.b;
                                            Intrinsics.checkNotNullParameter(bVar, "<this>");
                                            bVar.getClass();
                                            kVar = new k(true, (j) null, z2, 6);
                                        }
                                        z2 = z3;
                                    } else if (!set.contains((String) it2.next())) {
                                        z2 = false;
                                        kVar = new k(false, j.f1377i, false, 12);
                                    }
                                }
                            } else {
                                it2 = set2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        List listA9 = artifact.a(abi);
                                        arrayList = new ArrayList();
                                        while (r1.hasNext()) {
                                            if (!set2.contains(abi + "/" + ((String) obj))) {
                                                arrayList.add(obj);
                                            }
                                        }
                                        if (arrayList.isEmpty()) {
                                            z3 = false;
                                            kVar = new k(false, j.f1374d, false, 12);
                                        } else {
                                            z3 = false;
                                            iOrdinal = fVar.ordinal();
                                            if (iOrdinal != 0) {
                                                if (set2.contains(strG + "private.mp3")) {
                                                    z2 = false;
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                } else {
                                                    z2 = false;
                                                }
                                            } else if (iOrdinal != 1) {
                                                if (!set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.f1375e, false, 12);
                                                }
                                                z2 = false;
                                            } else {
                                                if (iOrdinal == 2) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                if (set2.contains("private.mp3")) {
                                                    kVar = new k(false, j.g, false, 12);
                                                }
                                                z2 = false;
                                            }
                                            c cVar8 = c.b;
                                            Intrinsics.checkNotNullParameter(bVar, "<this>");
                                            bVar.getClass();
                                            kVar = new k(true, (j) null, z2, 6);
                                        }
                                        z2 = z3;
                                    } else if (!set.contains((String) it2.next())) {
                                        z2 = false;
                                        kVar = new k(false, j.f1377i, false, 12);
                                    }
                                }
                            }
                        } else if (StringsKt.N((String) it.next(), strG)) {
                            z2 = false;
                            kVar = new k(false, j.f, false, 12);
                        }
                    }
                }
            }
        } else {
            z2 = z6 ? 1 : 0;
            kVar = new k(z2, j.f1373c, z2, 12);
        }
        if (kVar.f1381a) {
            bVar.getClass();
            kVar = k.a(kVar, z2, 7);
        }
        if (!kVar.f1381a) {
            return kVar;
        }
        File file = new File(o(aVar, context, plugin), ".install-trust");
        if (!file.isFile()) {
            Log.w("NativePluginManager", "Legacy Ren'Py install is UNVERIFIED_LEGACY; launching without trust");
            File fileO = o(aVar, context, plugin);
            if (!fileO.exists()) {
                fileO.mkdirs();
            }
            FilesKt__FileReadWriteKt.writeText$default(new File(o(aVar, context, plugin), ".install-trust"), "UNVERIFIED_LEGACY\n", null, 2, null);
            return k.a(kVar, false, 6);
        }
        try {
            listEmptyList = FilesKt__FileReadWriteKt.readLines$default(file, null, 1, null);
        } catch (Exception unused) {
            listEmptyList = CollectionsKt.emptyList();
        }
        if (Intrinsics.areEqual(CollectionsKt.firstOrNull(listEmptyList), StringsKt.trim((CharSequence) "UNVERIFIED_LEGACY\n").toString())) {
            return k.a(kVar, false, 6);
        }
        String strJ = j(plugin, aVar);
        if (Intrinsics.areEqual(CollectionsKt.firstOrNull(listEmptyList), "VERIFIED") && listEmptyList.size() >= 7 && Intrinsics.areEqual(listEmptyList.get(1), strJ)) {
            Object obj2 = listEmptyList.get(2);
            Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
            if (!StringsKt.isBlank((CharSequence) obj2)) {
                Object obj3 = listEmptyList.get(3);
                Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
                if (!StringsKt.isBlank((CharSequence) obj3)) {
                    Object obj4 = listEmptyList.get(4);
                    Intrinsics.checkNotNullExpressionValue(obj4, "get(...)");
                    if (!StringsKt.isBlank((CharSequence) obj4) && Intrinsics.areEqual(listEmptyList.get(5), "true")) {
                        bVar.getClass();
                        return new k(false, j.f1378j, false, 12);
                    }
                }
            }
        }
        return new k(false, j.f1378j, false, 12);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object i(EnumC0420v1 enumC0420v1, String str, Context context, Function1 function1, a aVar, ContinuationImpl continuationImpl) throws Throwable {
        C0423w1 c0423w1;
        if (continuationImpl instanceof C0423w1) {
            c0423w1 = (C0423w1) continuationImpl;
            int i3 = c0423w1.f6397k;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0423w1.f6397k = i3 - Integer.MIN_VALUE;
            } else {
                c0423w1 = new C0423w1(this, continuationImpl);
            }
        } else {
            c0423w1 = new C0423w1(this, continuationImpl);
        }
        Object objE = c0423w1.f6395i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c0423w1.f6397k;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objE);
            c2.c cVar = H.b;
            C0426x1 c0426x1 = new C0426x1(enumC0420v1, aVar, str, context, function1, null);
            c0423w1.b = SpillingKt.nullOutSpilledVariable(enumC0420v1);
            c0423w1.f6391c = SpillingKt.nullOutSpilledVariable(str);
            c0423w1.f6392d = SpillingKt.nullOutSpilledVariable(context);
            c0423w1.f6393e = SpillingKt.nullOutSpilledVariable(function1);
            c0423w1.f = SpillingKt.nullOutSpilledVariable(null);
            c0423w1.g = SpillingKt.nullOutSpilledVariable(null);
            c0423w1.f6394h = SpillingKt.nullOutSpilledVariable(aVar);
            c0423w1.f6397k = 1;
            objE = A.e(cVar, c0426x1, c0423w1);
            if (objE == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objE);
        }
        return ((Result) objE).getValue();
    }
}
