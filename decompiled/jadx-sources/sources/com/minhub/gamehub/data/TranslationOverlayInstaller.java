package com.minhub.gamehub.data;

import L1.d;
import android.util.Log;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.io.path.PathsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u0006*\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\fJ'\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\tJ%\u0010!\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b!\u0010\"J\u001d\u0010#\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b#\u0010$J\u001d\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004¢\u0006\u0004\b&\u0010'J\u0015\u0010(\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b(\u0010)J%\u0010+\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b+\u0010\"J\u001d\u0010,\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b,\u0010$J\u0015\u0010.\u001a\u00020-2\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b.\u0010/R\u0014\u00100\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u00101R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\u0006028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00106\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001a\u00109\u001a\b\u0012\u0004\u0012\u00020\u0006088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006;"}, d2 = {"Lcom/minhub/gamehub/data/TranslationOverlayInstaller;", "", "<init>", "()V", "Ljava/io/File;", "gameRoot", "", "relativePath", "resolveOverlayWrite", "(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;", "archiveFile", "detectStripPrefix", "(Ljava/io/File;)Ljava/lang/String;", "backupRoot", "Lcom/minhub/gamehub/data/TranslationBackupManifest;", "manifest", "", "writeManifest", "(Ljava/io/File;Lcom/minhub/gamehub/data/TranslationBackupManifest;)V", "rawPath", "normalizeRelativePath", "(Ljava/lang/String;)Ljava/lang/String;", "invariantRelativePath", "Ljava/util/zip/ZipOutputStream;", "zout", "strippedName", "Ljava/io/InputStream;", "input", "writeEntryContent", "(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V", "resolveTargetFile", "overlayRoot", "Lcom/minhub/gamehub/data/TranslationOverlayResult;", "installOverlayFromDirectory", "(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lcom/minhub/gamehub/data/TranslationOverlayResult;", "restoreOriginalFiles", "(Ljava/io/File;Ljava/io/File;)Lcom/minhub/gamehub/data/TranslationOverlayResult;", "destinationDir", "extractOverlayArchive", "(Ljava/io/File;Ljava/io/File;)V", "readManifest", "(Ljava/io/File;)Lcom/minhub/gamehub/data/TranslationBackupManifest;", "patchZipFile", "installRenpyGameZipPatch", "restoreRenpyGameZip", "", "hasRenpyGameZipBackup", "(Ljava/io/File;)Z", "MANIFEST_FILE_NAME", "Ljava/lang/String;", "", "KNOWN_GAME_CONTENT_DIRS", "Ljava/util/Set;", "Li1/l;", "gson", "Li1/l;", "", "CONTENT_ROOT_DIRS", "Ljava/util/List;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTranslationOverlayInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranslationOverlayInstaller.kt\ncom/minhub/gamehub/data/TranslationOverlayInstaller\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,472:1\n774#2:473\n865#2,2:474\n1208#2,2:477\n1236#2,4:479\n1869#2,2:483\n1056#2:485\n1761#2,3:486\n865#2,2:489\n1#3:476\n*S KotlinDebug\n*F\n+ 1 TranslationOverlayInstaller.kt\ncom/minhub/gamehub/data/TranslationOverlayInstaller\n*L\n57#1:473\n57#1:474,2\n85#1:477,2\n85#1:479,4\n88#1:483,2\n136#1:485\n244#1:486,3\n350#1:489,2\n*E\n"})
public final class TranslationOverlayInstaller {
    private static final String MANIFEST_FILE_NAME = "translation-backup-manifest.json";
    public static final TranslationOverlayInstaller INSTANCE = new TranslationOverlayInstaller();
    private static final Set<String> KNOWN_GAME_CONTENT_DIRS = SetsKt.setOf((Object[]) new String[]{"data", "js", "img", "audio", "video", "movies", "fonts", "effects", "tyrano", "scenario", "bgimage", "bgm", "fgimage", "se", "system", "css", "image", "sound", "save", "plugin", "lib", "www", "locales"});
    private static final l gson = new l();
    private static final List<String> CONTENT_ROOT_DIRS = CollectionsKt.listOf("www");

    private TranslationOverlayInstaller() {
    }

    private final String detectStripPrefix(File archiveFile) {
        ArrayList arrayList = new ArrayList();
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(archiveFile));
        try {
            for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                if (!nextEntry.isDirectory()) {
                    String name = nextEntry.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String strTrimStart = StringsKt.trimStart(StringsKt.F(name, '\\', '/'), '/');
                    if (!StringsKt.isBlank(strTrimStart)) {
                        arrayList.add(strTrimStart);
                    }
                }
                zipInputStream.closeEntry();
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zipInputStream, null);
            String str = "";
            if (arrayList.isEmpty()) {
                return "";
            }
            while (true) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    String str2 = (String) obj;
                    if (!StringsKt.N(str2, str)) {
                        return str;
                    }
                    String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.removePrefix(str2, (CharSequence) str), '/', (String) null, 2, (Object) null);
                    if (!StringsKt.isBlank(strSubstringBefore$default)) {
                        linkedHashSet.add(strSubstringBefore$default);
                    }
                }
                String str3 = (String) CollectionsKt___CollectionsKt.singleOrNull(linkedHashSet);
                if (str3 != null) {
                    Set<String> set = KNOWN_GAME_CONTENT_DIRS;
                    String lowerCase = str3.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (!set.contains(lowerCase)) {
                        String strH = kotlin.collections.unsigned.a.h(str, str3, "/");
                        if (!arrayList.isEmpty()) {
                            int size2 = arrayList.size();
                            int i4 = 0;
                            while (true) {
                                if (i4 < size2) {
                                    Object obj2 = arrayList.get(i4);
                                    i4++;
                                    String str4 = (String) obj2;
                                    if (!StringsKt.N(str4, strH) || !StringsKt__StringsKt.contains$default((CharSequence) StringsKt__StringsKt.removePrefix(str4, (CharSequence) strH), '/', false, 2, (Object) null)) {
                                    }
                                }
                            }
                            str = strH;
                        }
                    }
                }
                Log.d("MinHub-Diag", "detectStripPrefix='" + str + "'");
                return str;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(zipInputStream, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean installOverlayFromDirectory$lambda$6(File it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.isFile();
    }

    private final String invariantRelativePath(File file) {
        Path pathNormalize = file.toPath().normalize();
        Intrinsics.checkNotNullExpressionValue(pathNormalize, "normalize(...)");
        return PathsKt.getInvariantSeparatorsPathString(pathNormalize);
    }

    private final String normalizeRelativePath(String rawPath) {
        Object objM9constructorimpl;
        String string = StringsKt.trim((CharSequence) StringsKt.F(rawPath, '\\', '/')).toString();
        if (!StringsKt.N(string, "/") && !new Regex("^[A-Za-z]:/").containsMatchIn(string)) {
            String strTrimEnd = StringsKt.trimEnd(StringsKt.trimStart(string, '/'), '/');
            if (!StringsKt.isBlank(strTrimEnd)) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(Paths.get(strTrimEnd, new String[0]).normalize());
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = null;
                }
                Path pathL = androidx.core.view.accessibility.a.l(objM9constructorimpl);
                if (pathL != null) {
                    String invariantSeparatorsPathString = PathsKt.getInvariantSeparatorsPathString(pathL);
                    if (!Intrinsics.areEqual(invariantSeparatorsPathString, ".") && !StringsKt.N(invariantSeparatorsPathString, "..") && !StringsKt__StringsKt.contains$default((CharSequence) invariantSeparatorsPathString, (CharSequence) "/../", false, 2, (Object) null)) {
                        return invariantSeparatorsPathString;
                    }
                }
            }
        }
        return null;
    }

    private final File resolveOverlayWrite(File gameRoot, String relativePath) throws IOException {
        File fileResolveTargetFile;
        File fileResolveTargetFile2 = resolveTargetFile(gameRoot, relativePath);
        if (fileResolveTargetFile2 == null) {
            return null;
        }
        if (!fileResolveTargetFile2.exists()) {
            List listSplit$default = StringsKt__StringsKt.split$default(StringsKt.F(relativePath, '\\', '/'), new char[]{'/'}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listSplit$default) {
                if (!StringsKt.isBlank((String) obj)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                String strO = CollectionsKt.o(arrayList.subList(i3, arrayList.size()), "/", null, null, null, 62);
                if (i3 > 0 && (fileResolveTargetFile = resolveTargetFile(gameRoot, strO)) != null) {
                    if (!fileResolveTargetFile.exists()) {
                        fileResolveTargetFile = null;
                    }
                    if (fileResolveTargetFile != null) {
                        return fileResolveTargetFile;
                    }
                }
                for (String str : CONTENT_ROOT_DIRS) {
                    Intrinsics.checkNotNullExpressionValue(str, "next(...)");
                    String str2 = str;
                    if (FilesKt.resolve(gameRoot, str2).isDirectory()) {
                        File fileResolveTargetFile3 = resolveTargetFile(gameRoot, str2 + "/" + strO);
                        if (fileResolveTargetFile3 == null) {
                            continue;
                        } else {
                            if (!fileResolveTargetFile3.exists()) {
                                fileResolveTargetFile3 = null;
                            }
                            if (fileResolveTargetFile3 != null) {
                                return fileResolveTargetFile3;
                            }
                        }
                    }
                }
            }
        }
        return fileResolveTargetFile2;
    }

    private final void writeEntryContent(ZipOutputStream zout, String strippedName, InputStream input) throws IOException {
        if (!StringsKt__StringsJVMKt.endsWith$default(strippedName, ".rpy", false, 2, null)) {
            ByteStreamsKt.copyTo$default(input, zout, 0, 2, null);
            return;
        }
        byte[] bytes = ByteStreamsKt.readBytes(input);
        Charset charset = Charsets.UTF_8;
        byte[] bytes2 = RenpyTagFixer.INSTANCE.fixRpyContent(new String(bytes, charset)).getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
        zout.write(bytes2);
    }

    private final void writeManifest(File backupRoot, TranslationBackupManifest manifest) {
        backupRoot.mkdirs();
        File fileResolve = FilesKt.resolve(backupRoot, MANIFEST_FILE_NAME);
        String strG = gson.g(manifest);
        Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
        FilesKt__FileReadWriteKt.writeText$default(fileResolve, strG, null, 2, null);
    }

    public final void extractOverlayArchive(File archiveFile, File destinationDir) {
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(destinationDir, "destinationDir");
        if (!archiveFile.exists() || !archiveFile.isFile()) {
            throw new IllegalStateException("Overlay archive missing");
        }
        String strDetectStripPrefix = detectStripPrefix(archiveFile);
        FilesKt.deleteRecursively(destinationDir);
        destinationDir.mkdirs();
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(archiveFile));
        try {
            int i3 = 0;
            for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                String name = nextEntry.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                String string = StringsKt.trim((CharSequence) StringsKt.F(name, '\\', '/')).toString();
                if (strDetectStripPrefix.length() > 0 && StringsKt.N(string, strDetectStripPrefix)) {
                    string = StringsKt__StringsKt.removePrefix(string, (CharSequence) strDetectStripPrefix);
                }
                if (!StringsKt.isBlank(string)) {
                    if (nextEntry.isDirectory()) {
                        string = StringsKt.trimEnd(string, '/');
                    }
                    if (StringsKt.isBlank(string)) {
                        continue;
                    } else {
                        File fileResolveTargetFile = INSTANCE.resolveTargetFile(destinationDir, string);
                        if (fileResolveTargetFile == null) {
                            throw new IllegalStateException("Unsafe ZIP entry: " + nextEntry.getName());
                        }
                        if (nextEntry.isDirectory()) {
                            fileResolveTargetFile.mkdirs();
                        } else {
                            File parentFile = fileResolveTargetFile.getParentFile();
                            if (parentFile != null) {
                                parentFile.mkdirs();
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(fileResolveTargetFile);
                            try {
                                ByteStreamsKt.copyTo$default(zipInputStream, fileOutputStream, 0, 2, null);
                                CloseableKt.closeFinally(fileOutputStream, null);
                                i3++;
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.closeFinally(fileOutputStream, th);
                                    throw th2;
                                }
                            }
                        }
                    }
                }
                zipInputStream.closeEntry();
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zipInputStream, null);
            if (i3 == 0) {
                throw new IllegalStateException("Archive does not contain any overlay files");
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(zipInputStream, th3);
                throw th4;
            }
        }
    }

    public final boolean hasRenpyGameZipBackup(File backupRoot) {
        Intrinsics.checkNotNullParameter(backupRoot, "backupRoot");
        return FilesKt.resolve(backupRoot, "game.zip").exists();
    }

    /* JADX WARN: Code duplicated, block: B:53:0x01a5  */
    public final TranslationOverlayResult installOverlayFromDirectory(File gameRoot, File overlayRoot, File backupRoot) {
        String message;
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(overlayRoot, "overlayRoot");
        Intrinsics.checkNotNullParameter(backupRoot, "backupRoot");
        if (!overlayRoot.exists() || !overlayRoot.isDirectory()) {
            return new TranslationOverlayResult(false, "Overlay directory missing", 0, 0, 12, null);
        }
        List<TranslationBackupEntry> entries = readManifest(backupRoot).getEntries();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(entries, 10)), 16));
        for (Object obj : entries) {
            linkedHashMap.put(((TranslationBackupEntry) obj).getRelativePath(), obj);
        }
        Map mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        List<File> list = SequencesKt.toList(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(overlayRoot), new d(23)));
        Log.d("MinHub-Diag", "installOverlay: " + list.size() + " files from " + overlayRoot);
        Iterator it = CollectionsKt.take(list, 3).iterator();
        while (it.hasNext()) {
            Log.d("MinHub-Diag", "  overlay: " + FilesKt.relativeTo((File) it.next(), overlayRoot));
        }
        try {
            File canonicalFile = gameRoot.getCanonicalFile();
            int i3 = 0;
            int i4 = 0;
            for (File file : list) {
                String strInvariantRelativePath = invariantRelativePath(FilesKt.relativeTo(file, overlayRoot));
                File fileResolveOverlayWrite = resolveOverlayWrite(gameRoot, strInvariantRelativePath);
                if (fileResolveOverlayWrite == null) {
                    return new TranslationOverlayResult(false, "Unsafe overlay path: " + strInvariantRelativePath, 0, 0, 12, null);
                }
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Intrinsics.checkNotNull(canonicalFile);
                    objM9constructorimpl = Result.m9constructorimpl(invariantRelativePath(FilesKt.relativeTo(fileResolveOverlayWrite, canonicalFile)));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                String str = (String) (Result.m15isFailureimpl(objM9constructorimpl) ? strInvariantRelativePath : objM9constructorimpl);
                if (fileResolveOverlayWrite.exists()) {
                    if (!mutableMap.containsKey(str)) {
                        File fileResolve = FilesKt.resolve(backupRoot, str);
                        File parentFile = fileResolve.getParentFile();
                        if (parentFile != null) {
                            parentFile.mkdirs();
                        }
                        FilesKt__UtilsKt.copyTo$default(fileResolveOverlayWrite, fileResolve, true, 0, 4, null);
                        String absolutePath = fileResolve.getAbsolutePath();
                        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                        mutableMap.put(str, new TranslationBackupEntry(str, absolutePath));
                    }
                    i3++;
                } else {
                    i4++;
                }
                File parentFile2 = fileResolveOverlayWrite.getParentFile();
                if (parentFile2 != null) {
                    parentFile2.mkdirs();
                }
                FilesKt__UtilsKt.copyTo$default(file, fileResolveOverlayWrite, true, 0, 4, null);
                if (StringsKt.equals(FilesKt.getExtension(fileResolveOverlayWrite), "rpy", true)) {
                    RenpyTagFixer.INSTANCE.fixRpyFile(fileResolveOverlayWrite);
                }
                message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                return new TranslationOverlayResult(false, message, 0, 0, 12, null);
            }
            writeManifest(backupRoot, new TranslationBackupManifest(CollectionsKt.sortedWith(mutableMap.values(), new Comparator() { // from class: com.minhub.gamehub.data.TranslationOverlayInstaller$installOverlayFromDirectory$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t2, T t3) {
                    return ComparisonsKt.compareValues(((TranslationBackupEntry) t2).getRelativePath(), ((TranslationBackupEntry) t3).getRelativePath());
                }
            })));
            return new TranslationOverlayResult(true, null, i3, i4, 2, null);
        } catch (Exception e2) {
            message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            return new TranslationOverlayResult(false, message, 0, 0, 12, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:174:0x033a  */
    public final TranslationOverlayResult installRenpyGameZipPatch(File gameRoot, File patchZipFile, File backupRoot) {
        String message;
        String str;
        ZipEntry entry;
        String str2;
        String str3;
        char c3;
        String str4 = "MinHub-Diag";
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(patchZipFile, "patchZipFile");
        Intrinsics.checkNotNullParameter(backupRoot, "backupRoot");
        File file = new File(gameRoot, "game.zip");
        if (!file.exists()) {
            return new TranslationOverlayResult(false, "game.zip not found in game root", 0, 0, 12, null);
        }
        try {
            backupRoot.mkdirs();
            File fileResolve = FilesKt.resolve(backupRoot, "game.zip");
            if (!fileResolve.exists()) {
                FilesKt__UtilsKt.copyTo$default(file, fileResolve, false, 0, 6, null);
            }
            String strDetectStripPrefix = detectStripPrefix(patchZipFile);
            Log.d("MinHub-Diag", "installRenpyPatch stripPrefix='" + strDetectStripPrefix + "'");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ZipFile zipFile = new ZipFile(patchZipFile);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (true) {
                    str = "getName(...)";
                    if (!enumerationEntries.hasMoreElements()) {
                        break;
                    }
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    if (!zipEntryNextElement.isDirectory()) {
                        String name = zipEntryNextElement.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        String strF = StringsKt.F(name, '\\', '/');
                        if (strDetectStripPrefix.length() > 0 && StringsKt.N(strF, strDetectStripPrefix)) {
                            strF = StringsKt__StringsKt.removePrefix(strF, (CharSequence) strDetectStripPrefix);
                        }
                        if (!StringsKt.isBlank(strF)) {
                            linkedHashMap.put(strF, zipEntryNextElement.getName());
                        }
                    }
                    message = e.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    return new TranslationOverlayResult(false, message, 0, 0, 12, null);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(zipFile, null);
                Log.d("MinHub-Diag", "installRenpyPatch: " + linkedHashMap.size() + " patch entries");
                Set setKeySet = linkedHashMap.keySet();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (Object obj : setKeySet) {
                    if (StringsKt__StringsJVMKt.endsWith$default((String) obj, ".rpy", false, 2, null)) {
                        linkedHashSet.add(obj);
                    }
                }
                File file2 = new File(gameRoot, "game.zip.tmp");
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2), 8192));
                try {
                    LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                    ZipFile zipFile2 = new ZipFile(file);
                    try {
                        ZipFile zipFile3 = new ZipFile(patchZipFile);
                        try {
                            Enumeration<? extends ZipEntry> enumerationEntries2 = zipFile2.entries();
                            int i3 = 0;
                            while (enumerationEntries2.hasMoreElements()) {
                                ZipEntry zipEntryNextElement2 = enumerationEntries2.nextElement();
                                if (zipEntryNextElement2.isDirectory()) {
                                    str2 = str4;
                                    str3 = str;
                                    c3 = '/';
                                } else {
                                    str2 = str4;
                                    String name2 = zipEntryNextElement2.getName();
                                    Intrinsics.checkNotNullExpressionValue(name2, str);
                                    str3 = str;
                                    c3 = '/';
                                    String strF2 = StringsKt.F(name2, '\\', '/');
                                    String strRemovePrefix = (strDetectStripPrefix.length() <= 0 || !StringsKt.N(strF2, strDetectStripPrefix)) ? strF2 : StringsKt__StringsKt.removePrefix(strF2, (CharSequence) strDetectStripPrefix);
                                    if (!Intrinsics.areEqual(strRemovePrefix, "progressive_download.txt") && !StringsKt__StringsKt.contains$default((CharSequence) strRemovePrefix, (CharSequence) "_mfsuplub.json", false, 2, (Object) null) && (!StringsKt__StringsJVMKt.endsWith$default(strRemovePrefix, ".rpyc", false, 2, null) || !linkedHashSet.contains(StringsKt.dropLast(strRemovePrefix, 1)))) {
                                        String str5 = (String) linkedHashMap.get(strRemovePrefix);
                                        zipOutputStream.putNextEntry(new ZipEntry(strF2));
                                        if (str5 != null) {
                                            ZipEntry entry2 = zipFile3.getEntry(str5);
                                            if (entry2 != null) {
                                                InputStream inputStream = zipFile3.getInputStream(entry2);
                                                try {
                                                    TranslationOverlayInstaller translationOverlayInstaller = INSTANCE;
                                                    Intrinsics.checkNotNull(inputStream);
                                                    translationOverlayInstaller.writeEntryContent(zipOutputStream, strRemovePrefix, inputStream);
                                                    Unit unit2 = Unit.INSTANCE;
                                                    CloseableKt.closeFinally(inputStream, null);
                                                    i3++;
                                                    linkedHashSet2.add(strRemovePrefix);
                                                } catch (Throwable th) {
                                                    try {
                                                        throw th;
                                                    } catch (Throwable th2) {
                                                        CloseableKt.closeFinally(inputStream, th);
                                                        throw th2;
                                                    }
                                                }
                                            } else {
                                                InputStream inputStream2 = zipFile2.getInputStream(zipEntryNextElement2);
                                                try {
                                                    Intrinsics.checkNotNull(inputStream2);
                                                    ByteStreamsKt.copyTo$default(inputStream2, zipOutputStream, 0, 2, null);
                                                    CloseableKt.closeFinally(inputStream2, null);
                                                } catch (Throwable th3) {
                                                    try {
                                                        throw th3;
                                                    } catch (Throwable th4) {
                                                        CloseableKt.closeFinally(inputStream2, th3);
                                                        throw th4;
                                                    }
                                                }
                                            }
                                        } else {
                                            InputStream inputStream3 = zipFile2.getInputStream(zipEntryNextElement2);
                                            try {
                                                Intrinsics.checkNotNull(inputStream3);
                                                ByteStreamsKt.copyTo$default(inputStream3, zipOutputStream, 0, 2, null);
                                                CloseableKt.closeFinally(inputStream3, null);
                                            } catch (Throwable th5) {
                                                try {
                                                    throw th5;
                                                } catch (Throwable th6) {
                                                    CloseableKt.closeFinally(inputStream3, th5);
                                                    throw th6;
                                                }
                                            }
                                        }
                                        zipOutputStream.closeEntry();
                                    }
                                }
                                str4 = str2;
                                str = str3;
                            }
                            String str6 = str4;
                            int i4 = i3;
                            Unit unit3 = Unit.INSTANCE;
                            CloseableKt.closeFinally(zipFile3, null);
                            CloseableKt.closeFinally(zipFile2, null);
                            ZipFile zipFile4 = new ZipFile(patchZipFile);
                            try {
                                int i5 = 0;
                                for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                                    String str7 = (String) entry3.getKey();
                                    String str8 = (String) entry3.getValue();
                                    if (strDetectStripPrefix.length() <= 0 || !StringsKt.N(str7, strDetectStripPrefix)) {
                                        if (!Intrinsics.areEqual(str7, "progressive_download.txt") && !StringsKt__StringsKt.contains$default((CharSequence) str7, (CharSequence) "_mfsuplub.json", false, 2, (Object) null) && !linkedHashSet2.contains(str7) && (entry = zipFile4.getEntry(str8)) != null) {
                                            zipOutputStream.putNextEntry(new ZipEntry(strDetectStripPrefix.length() > 0 ? strDetectStripPrefix + str7 : str7));
                                            InputStream inputStream4 = zipFile4.getInputStream(entry);
                                            try {
                                                TranslationOverlayInstaller translationOverlayInstaller2 = INSTANCE;
                                                Intrinsics.checkNotNull(inputStream4);
                                                translationOverlayInstaller2.writeEntryContent(zipOutputStream, str7, inputStream4);
                                                Unit unit4 = Unit.INSTANCE;
                                                CloseableKt.closeFinally(inputStream4, null);
                                                zipOutputStream.closeEntry();
                                                i5++;
                                            } catch (Throwable th7) {
                                                try {
                                                    throw th7;
                                                } catch (Throwable th8) {
                                                    CloseableKt.closeFinally(inputStream4, th7);
                                                    throw th8;
                                                }
                                            }
                                        }
                                    }
                                }
                                Unit unit5 = Unit.INSTANCE;
                                CloseableKt.closeFinally(zipFile4, null);
                                CloseableKt.closeFinally(zipOutputStream, null);
                                file.delete();
                                if (!file2.renameTo(file)) {
                                    FilesKt__UtilsKt.copyTo$default(file2, file, false, 0, 6, null);
                                    file2.delete();
                                }
                                new File(gameRoot, "__renpy_manifest__.json").delete();
                                FilesKt.deleteRecursively(new File(gameRoot, "__renpy_game__"));
                                Log.d(str6, "installRenpyPatch done: patched=" + i4 + " added=" + i5);
                                return new TranslationOverlayResult(true, null, i4, i5, 2, null);
                            } catch (Throwable th9) {
                                try {
                                    throw th9;
                                } catch (Throwable th10) {
                                    CloseableKt.closeFinally(zipFile4, th9);
                                    throw th10;
                                }
                            }
                        } catch (Throwable th11) {
                            try {
                                throw th11;
                            } catch (Throwable th12) {
                                CloseableKt.closeFinally(zipFile3, th11);
                                throw th12;
                            }
                        }
                    } catch (Throwable th13) {
                        try {
                            throw th13;
                        } catch (Throwable th14) {
                            CloseableKt.closeFinally(zipFile2, th13);
                            throw th14;
                        }
                    }
                } catch (Throwable th15) {
                    try {
                        throw th15;
                    } catch (Throwable th16) {
                        CloseableKt.closeFinally(zipOutputStream, th15);
                        throw th16;
                    }
                }
            } catch (Throwable th17) {
                try {
                    throw th17;
                } catch (Throwable th18) {
                    CloseableKt.closeFinally(zipFile, th17);
                    throw th18;
                }
            }
        } catch (Exception e2) {
            message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            return new TranslationOverlayResult(false, message, 0, 0, 12, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TranslationBackupManifest readManifest(File backupRoot) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(backupRoot, "backupRoot");
        File fileResolve = FilesKt.resolve(backupRoot, MANIFEST_FILE_NAME);
        int i3 = 1;
        List list = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (!fileResolve.exists()) {
            return new TranslationBackupManifest(list, i3, objArr5 == true ? 1 : 0);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            l lVar = gson;
            String text$default = FilesKt__FileReadWriteKt.readText$default(fileResolve, null, 1, null);
            Type type = new TypeToken<TranslationBackupManifest>() { // from class: com.minhub.gamehub.data.TranslationOverlayInstaller$readManifest$1$1
            }.getType();
            lVar.getClass();
            TranslationBackupManifest translationBackupManifest = (TranslationBackupManifest) lVar.b(text$default, TypeToken.get(type));
            if (translationBackupManifest == null) {
                translationBackupManifest = new TranslationBackupManifest(objArr4 == true ? 1 : 0, i3, objArr3 == true ? 1 : 0);
            }
            objM9constructorimpl = Result.m9constructorimpl(translationBackupManifest);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        TranslationBackupManifest translationBackupManifest2 = new TranslationBackupManifest(objArr2 == true ? 1 : 0, i3, objArr == true ? 1 : 0);
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = translationBackupManifest2;
        }
        return (TranslationBackupManifest) objM9constructorimpl;
    }

    public final File resolveTargetFile(File gameRoot, String relativePath) throws IOException {
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        String strNormalizeRelativePath = normalizeRelativePath(relativePath);
        if (strNormalizeRelativePath == null) {
            return null;
        }
        File canonicalFile = FilesKt.resolve(gameRoot, strNormalizeRelativePath).getCanonicalFile();
        if (canonicalFile.toPath().startsWith(gameRoot.getCanonicalFile().toPath())) {
            return canonicalFile;
        }
        return null;
    }

    public final TranslationOverlayResult restoreOriginalFiles(File gameRoot, File backupRoot) {
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(backupRoot, "backupRoot");
        TranslationBackupManifest manifest = readManifest(backupRoot);
        try {
            for (TranslationBackupEntry translationBackupEntry : manifest.getEntries()) {
                File fileResolveTargetFile = resolveTargetFile(gameRoot, translationBackupEntry.getRelativePath());
                if (fileResolveTargetFile == null) {
                    return new TranslationOverlayResult(false, "Unsafe restore path: " + translationBackupEntry.getRelativePath(), 0, 0, 12, null);
                }
                File file = new File(translationBackupEntry.getBackupPath());
                if (file.exists()) {
                    File parentFile = fileResolveTargetFile.getParentFile();
                    if (parentFile != null) {
                        parentFile.mkdirs();
                    }
                    FilesKt__UtilsKt.copyTo$default(file, fileResolveTargetFile, true, 0, 4, null);
                }
            }
            return new TranslationOverlayResult(true, null, manifest.getEntries().size(), 0, 10, null);
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            return new TranslationOverlayResult(false, message, 0, 0, 12, null);
        }
    }

    public final TranslationOverlayResult restoreRenpyGameZip(File gameRoot, File backupRoot) {
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(backupRoot, "backupRoot");
        File fileResolve = FilesKt.resolve(backupRoot, "game.zip");
        if (!fileResolve.exists()) {
            return new TranslationOverlayResult(false, "No backup game.zip found", 0, 0, 12, null);
        }
        try {
            FilesKt__UtilsKt.copyTo$default(fileResolve, new File(gameRoot, "game.zip"), true, 0, 4, null);
            new File(gameRoot, "__renpy_manifest__.json").delete();
            FilesKt.deleteRecursively(new File(gameRoot, "__renpy_game__"));
            fileResolve.delete();
            return new TranslationOverlayResult(true, null, 1, 0, 10, null);
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            return new TranslationOverlayResult(false, message, 0, 0, 12, null);
        }
    }
}
