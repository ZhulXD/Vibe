package com.minhub.gamehub.hub.catalog;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u0007\u001a8\u0010\t\u001a\u00020\u0001*\u00020\u00022\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u0007\u001a:\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u0007\u001a\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0004H\u0002\u001a\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0002¨\u0006\u0016"}, d2 = {"extractZip", "", "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;", "archiveFile", "Ljava/io/File;", "destinationDir", "onProgress", "Lkotlin/Function1;", "", "extractZipStreamWithFallback", "openStream", "Lkotlin/Function0;", "Ljava/io/InputStream;", "extractZipStream", "inputStream", "charset", "Ljava/nio/charset/Charset;", "ensureParentDirectory", "outFile", "resolveZipEntryFile", "entryName", "", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRemoteZipImporterExtract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteZipImporterExtract.kt\ncom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1878#2,2:237\n1880#2:240\n1#3:239\n*S KotlinDebug\n*F\n+ 1 RemoteZipImporterExtract.kt\ncom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt\n*L\n31#1:237,2\n31#1:240\n*E\n"})
public final class RemoteZipImporterExtractKt {
    private static final void ensureParentDirectory(File file) throws UncreatableFolderException {
        File parentFile = file.getParentFile();
        if (parentFile == null || parentFile.isDirectory()) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        String name = parentFile.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        throw new UncreatableFolderException(name);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0161 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:? A[LOOP:1: B:53:0x0132->B:101:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0138  */
    /* JADX WARN: Code duplicated, block: B:62:0x015a  */
    /* JADX WARN: Code duplicated, block: B:68:0x0164  */
    /* JADX WARN: Code duplicated, block: B:99:0x015f A[SYNTHETIC] */
    public static final void extractZip(RemoteZipImporter remoteZipImporter, File archiveFile, File destinationDir, Function1<? super Integer, Unit> onProgress) {
        Iterator it;
        Charset charset;
        ZipEfsPatchingStream zipEfsPatchingStream;
        Object objM9constructorimpl;
        Charset charset2;
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(destinationDir, "destinationDir");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        long j2 = 1024;
        Log.i("MinHub-Extract", "Opening ZIP [v2]: " + ((archiveFile.length() / j2) / j2) + " MB at " + archiveFile.getPath());
        try {
            try {
                ZipFile zipFile = new ZipFile(archiveFile);
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                    Intrinsics.checkNotNullExpressionValue(enumerationEntries, "entries(...)");
                    ArrayList list = Collections.list(enumerationEntries);
                    Intrinsics.checkNotNullExpressionValue(list, "list(...)");
                    int size = list.size();
                    if (size == 0) {
                        throw new IllegalStateException("Archive is empty (no ZIP entries)");
                    }
                    File canonicalFile = destinationDir.getCanonicalFile();
                    destinationDir.mkdirs();
                    int size2 = list.size();
                    int i3 = 0;
                    int i4 = 0;
                    while (i4 < size2) {
                        Object obj = list.get(i4);
                        i4++;
                        int i5 = i3 + 1;
                        if (i3 < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        ZipEntry zipEntry = (ZipEntry) obj;
                        Intrinsics.checkNotNull(canonicalFile);
                        String name = zipEntry.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        File fileResolveZipEntryFile = resolveZipEntryFile(canonicalFile, name);
                        if (zipEntry.isDirectory()) {
                            fileResolveZipEntryFile.mkdirs();
                        } else {
                            ensureParentDirectory(fileResolveZipEntryFile);
                            InputStream inputStream = zipFile.getInputStream(zipEntry);
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(fileResolveZipEntryFile);
                                try {
                                    Intrinsics.checkNotNull(inputStream);
                                    ByteStreamsKt.copyTo(inputStream, fileOutputStream, 262144);
                                    CloseableKt.closeFinally(fileOutputStream, null);
                                    CloseableKt.closeFinally(inputStream, null);
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
                        }
                        if (i3 % 5 == 0 || i3 == size - 1) {
                            onProgress.invoke(Integer.valueOf(RangesKt.coerceIn((i5 * 95) / size, 1, 95)));
                        }
                        i3 = i5;
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(zipFile, null);
                    onProgress.invoke(100);
                    return;
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(zipFile, th5);
                        throw th6;
                    }
                }
            } catch (Throwable th7) {
                Log.w("MinHub-Extract", E.b.n("ZipFile failed (", th7.getClass().getSimpleName(), ": ", th7.getMessage(), "), retrying with ZipInputStream+LenientCP932"));
                it = CollectionsKt.listOf((Object[]) new String[]{"windows-31j", "MS932", "x-MS932_0213", "Shift_JIS"}).iterator();
                while (true) {
                    if (it.hasNext()) {
                        charset = null;
                        break;
                    }
                    String str = (String) it.next();
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(Charset.forName(str));
                    } catch (Throwable th8) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th8));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl)) {
                        objM9constructorimpl = null;
                    }
                    charset2 = (Charset) objM9constructorimpl;
                    if (charset2 != null) {
                        charset = charset2;
                        break;
                    }
                }
                if (charset == null) {
                    charset = StandardCharsets.UTF_8;
                }
                Log.i("MinHub-Extract", "Base charset resolved: " + charset.name());
                Intrinsics.checkNotNull(charset);
                LenientCp932Charset lenientCp932Charset = new LenientCp932Charset(charset);
                FilesKt.deleteRecursively(destinationDir);
                zipEfsPatchingStream = new ZipEfsPatchingStream(new BufferedInputStream(new FileInputStream(archiveFile), 8192));
                extractZipStream(remoteZipImporter, zipEfsPatchingStream, destinationDir, lenientCp932Charset, onProgress);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(zipEfsPatchingStream, null);
                return;
            }
            extractZipStream(remoteZipImporter, zipEfsPatchingStream, destinationDir, lenientCp932Charset, onProgress);
            Unit unit3 = Unit.INSTANCE;
            CloseableKt.closeFinally(zipEfsPatchingStream, null);
            return;
        } catch (Throwable th9) {
            try {
                throw th9;
            } catch (Throwable th10) {
                CloseableKt.closeFinally(zipEfsPatchingStream, th9);
                throw th10;
            }
        }
        Log.w("MinHub-Extract", E.b.n("ZipFile failed (", th7.getClass().getSimpleName(), ": ", th7.getMessage(), "), retrying with ZipInputStream+LenientCP932"));
        it = CollectionsKt.listOf((Object[]) new String[]{"windows-31j", "MS932", "x-MS932_0213", "Shift_JIS"}).iterator();
        while (true) {
            if (it.hasNext()) {
                charset = null;
                break;
            }
            String str2 = (String) it.next();
            Result.Companion companion3 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(Charset.forName(str2));
            if (Result.m15isFailureimpl(objM9constructorimpl)) {
                objM9constructorimpl = null;
            }
            charset2 = (Charset) objM9constructorimpl;
            if (charset2 != null) {
                charset = charset2;
                break;
            }
        }
        if (charset == null) {
            charset = StandardCharsets.UTF_8;
        }
        Log.i("MinHub-Extract", "Base charset resolved: " + charset.name());
        Intrinsics.checkNotNull(charset);
        LenientCp932Charset lenientCp932Charset2 = new LenientCp932Charset(charset);
        FilesKt.deleteRecursively(destinationDir);
        zipEfsPatchingStream = new ZipEfsPatchingStream(new BufferedInputStream(new FileInputStream(archiveFile), 8192));
    }

    public static /* synthetic */ void extractZip$default(RemoteZipImporter remoteZipImporter, File file, File file2, Function1 function1, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            function1 = new h(3);
        }
        extractZip(remoteZipImporter, file, file2, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit extractZip$lambda$0(int i3) {
        return Unit.INSTANCE;
    }

    public static final void extractZipStream(RemoteZipImporter remoteZipImporter, InputStream inputStream, File destinationDir, Charset charset, Function1<? super Integer, Unit> onProgress) throws IOException {
        String name;
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        Intrinsics.checkNotNullParameter(destinationDir, "destinationDir");
        Intrinsics.checkNotNullParameter(charset, "charset");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        Log.i("MinHub-Extract", "ZipInputStream: starting extraction to " + destinationDir.getName() + " charset=" + charset.name());
        destinationDir.mkdirs();
        File canonicalFile = destinationDir.getCanonicalFile();
        ZipInputStream zipInputStream = new ZipInputStream(inputStream, charset);
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null || (name = nextEntry.getName()) == null) {
                name = "null (no entries)";
            }
            Log.i("MinHub-Extract", "ZipInputStream: first entry = ".concat(name));
            int i3 = 0;
            while (nextEntry != null) {
                Intrinsics.checkNotNull(canonicalFile);
                String name2 = nextEntry.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                File fileResolveZipEntryFile = resolveZipEntryFile(canonicalFile, name2);
                if (nextEntry.isDirectory()) {
                    fileResolveZipEntryFile.mkdirs();
                } else {
                    ensureParentDirectory(fileResolveZipEntryFile);
                    FileOutputStream fileOutputStream = new FileOutputStream(fileResolveZipEntryFile);
                    try {
                        ByteStreamsKt.copyTo(zipInputStream, fileOutputStream, 262144);
                        CloseableKt.closeFinally(fileOutputStream, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(fileOutputStream, th);
                            throw th2;
                        }
                    }
                }
                zipInputStream.closeEntry();
                i3++;
                if (i3 % 5 == 0) {
                    onProgress.invoke(Integer.valueOf(RangesKt.coerceIn(i3 / 2, 1, 95)));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            Log.i("MinHub-Extract", "ZipInputStream: finished, total entries = " + i3);
            if (i3 == 0) {
                throw new IllegalStateException("Archive is empty (no ZIP entries)");
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zipInputStream, null);
            onProgress.invoke(100);
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(zipInputStream, th3);
                throw th4;
            }
        }
    }

    public static /* synthetic */ void extractZipStream$default(RemoteZipImporter remoteZipImporter, InputStream inputStream, File file, Charset UTF_8, Function1 function1, int i3, Object obj) throws IOException {
        if ((i3 & 4) != 0) {
            UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        }
        if ((i3 & 8) != 0) {
            function1 = new h(4);
        }
        extractZipStream(remoteZipImporter, inputStream, file, UTF_8, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit extractZipStream$lambda$14(int i3) {
        return Unit.INSTANCE;
    }

    public static final void extractZipStreamWithFallback(RemoteZipImporter remoteZipImporter, Function0<? extends InputStream> openStream, File destinationDir, Function1<? super Integer, Unit> onProgress) throws Exception {
        String message;
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(openStream, "openStream");
        Intrinsics.checkNotNullParameter(destinationDir, "destinationDir");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        Charset charset = null;
        try {
            InputStream inputStreamInvoke = openStream.invoke();
            if (inputStreamInvoke == null) {
                throw new IllegalStateException("Cannot open archive stream");
            }
            try {
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                extractZipStream(remoteZipImporter, inputStreamInvoke, destinationDir, UTF_8, onProgress);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(inputStreamInvoke, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(inputStreamInvoke, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            if (!(e2 instanceof IllegalArgumentException) || (message = e2.getMessage()) == null || !StringsKt.N(message, "MALFORMED")) {
                throw e2;
            }
            Log.w("MinHub-Extract", "UTF-8 charset failed (" + e2.getMessage() + "), retrying with LenientCp932");
            for (String str : CollectionsKt.listOf((Object[]) new String[]{"windows-31j", "MS932", "x-MS932_0213", "Shift_JIS"})) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(Charset.forName(str));
                } catch (Throwable th3) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th3));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = null;
                }
                Charset charset2 = (Charset) objM9constructorimpl;
                if (charset2 != null) {
                    charset = charset2;
                    break;
                }
            }
            if (charset == null) {
                charset = StandardCharsets.UTF_8;
            }
            Intrinsics.checkNotNull(charset);
            LenientCp932Charset lenientCp932Charset = new LenientCp932Charset(charset);
            FilesKt.deleteRecursively(destinationDir);
            InputStream inputStreamInvoke2 = openStream.invoke();
            if (inputStreamInvoke2 == null) {
                throw new IllegalStateException("Cannot open archive stream for retry");
            }
            extractZipStream(remoteZipImporter, inputStreamInvoke2 instanceof BufferedInputStream ? (BufferedInputStream) inputStreamInvoke2 : new BufferedInputStream(inputStreamInvoke2, 8192), destinationDir, lenientCp932Charset, onProgress);
        }
    }

    public static /* synthetic */ void extractZipStreamWithFallback$default(RemoteZipImporter remoteZipImporter, Function0 function0, File file, Function1 function1, int i3, Object obj) throws Exception {
        if ((i3 & 4) != 0) {
            function1 = new h(5);
        }
        extractZipStreamWithFallback(remoteZipImporter, function0, file, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit extractZipStreamWithFallback$lambda$9(int i3) {
        return Unit.INSTANCE;
    }

    private static final File resolveZipEntryFile(File file, String path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        byte[] bytes = path.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        File fileI = p000a.a.I(file, bytes.length <= 220 ? path : CollectionsKt.o(StringsKt__StringsKt.split$default(path, new char[]{'/'}, false, 0, 6, (Object) null), "/", null, null, new L1.d(9), 30));
        if (fileI != null) {
            return fileI;
        }
        throw new IllegalStateException("Archive entry escapes destination directory: ".concat(path));
    }
}
