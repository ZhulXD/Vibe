package com.minhub.gamehub.hub.catalog;

import A1.G;
import C1.AbstractC0082l0;
import C1.C0079k0;
import android.content.Context;
import android.util.Log;
import com.minhub.gamehub.data.EngineDetector;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.GamePluginScanner;
import com.minhub.gamehub.data.GameRepository;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p023i1.l;
import p064y1.AbstractC0367d1;
import p064y1.L1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a3\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\b\u0010\t\u001a#\u0010\f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\b\f\u0010\r\u001a%\u0010\u0010\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0017\u0010\u0014\u001a\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0018\u0010\u0016\u001a\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0019\u0010\u0014\u001a\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001a\u0010\u0016\u001a?\u0010%\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\b\b\u0002\u0010\u001f\u001a\u00020\u00002\u0014\b\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 H\u0000¢\u0006\u0004\b%\u0010&\u001a\u0017\u0010(\u001a\u00020\u00002\u0006\u0010'\u001a\u00020$H\u0002¢\u0006\u0004\b(\u0010)\u001a\u001f\u0010,\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0007H\u0002¢\u0006\u0004\b,\u0010-\u001a\u001f\u0010.\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010/\u001a\u001f\u00101\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0007H\u0000¢\u0006\u0004\b1\u00102\u001a!\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u0007H\u0002¢\u0006\u0004\b6\u00107\u001a'\u00109\u001a\u0004\u0018\u00010\u00072\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u00105\u001a\u00020\u0007H\u0000¢\u0006\u0004\b9\u0010:\u001a\u0017\u0010<\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0000H\u0002¢\u0006\u0004\b<\u0010=\u001a\u001f\u0010>\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0000¢\u0006\u0004\b>\u0010?\u001a\u001f\u0010B\u001a\u00020\"2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0000H\u0002¢\u0006\u0004\bB\u0010C\"\u0014\u0010E\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010F¨\u0006G"}, d2 = {"", "displayName", "Ljava/io/File;", "importDir", "sizeLabel", "", "strictDetection", "Lcom/minhub/gamehub/data/Game;", "buildImportedGameFromDirectory", "(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)Lcom/minhub/gamehub/data/Game;", "root", "configuredLabel", "detectEngineFromDir", "(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;", "", "names", "isRenpyWebDir", "(Ljava/io/File;Ljava/util/List;)Z", "dir", "isVxAceDir", "(Ljava/io/File;)Z", "findVxAceRoot", "(Ljava/io/File;)Ljava/io/File;", "isKiriDir", "findKiriRoot", "hasExtractedKiriMarkers", "findGodotRoot", "Landroid/content/Context;", "appContext", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "item", "selectedUrl", "Lkotlin/Function1;", "", "", "onProgress", "", "importOnlineCatalogItem", "(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J", "bytes", "formatFileSize", "(J)Ljava/lang/String;", "oldGame", "newGame", "preserveSaves", "(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/Game;)V", "deleteOldInstall", "(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)V", "importedGame", "commitImportedGame", "(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)J", "Lcom/minhub/gamehub/data/GameRepository;", "repo", "g", "findExistingInstalledGame", "(Lcom/minhub/gamehub/data/GameRepository;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;", "all", "matchInstalledGame", "(Ljava/util/List;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;", "t", "normalizeGameTitle", "(Ljava/lang/String;)Ljava/lang/String;", "importStreamGame", "(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)J", "file", "checksum", "verifyChecksum", "(Ljava/io/File;Ljava/lang/String;)V", "Li1/l;", "catalogImportGson", "Li1/l;", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOnlineCatalogImportSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineCatalogImportSupport.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,407:1\n1#2:408\n1761#3,3:409\n1761#3,3:412\n1761#3,3:421\n1761#3,3:428\n1056#3:438\n1869#3,2:439\n1056#3:446\n1869#3,2:447\n1056#3:458\n1869#3,2:459\n295#3,2:461\n295#3,2:463\n295#3,2:465\n1310#4,2:415\n11228#4:417\n11563#4,3:418\n11228#4:424\n11563#4,3:425\n1310#4,2:431\n12637#4,2:433\n3829#4:435\n4344#4,2:436\n12637#4,2:441\n3829#4:443\n4344#4,2:444\n12637#4,2:449\n12637#4,2:451\n12637#4,2:453\n3829#4:455\n4344#4,2:456\n*S KotlinDebug\n*F\n+ 1 OnlineCatalogImportSupport.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt\n*L\n108#1:409,3\n109#1:412,3\n113#1:421,3\n121#1:428,3\n131#1:438\n132#1:439,2\n144#1:446\n145#1:447,2\n170#1:458\n171#1:459,2\n194#1:461,2\n352#1:463,2\n355#1:465,2\n110#1:415,2\n112#1:417\n112#1:418,3\n120#1:424\n120#1:425,3\n122#1:431,2\n124#1:433,2\n130#1:435\n130#1:436,2\n138#1:441,2\n143#1:443\n143#1:444,2\n159#1:449,2\n166#1:451,2\n168#1:453,2\n169#1:455\n169#1:456,2\n*E\n"})
public final class OnlineCatalogImportSupportKt {
    private static final l catalogImportGson = new l();

    public static final Game buildImportedGameFromDirectory(String displayName, File importDir, String sizeLabel, boolean z2) throws UnsupportedGameImportException {
        File fileFindVxAceRoot;
        File file;
        File parentFile;
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(importDir, "importDir");
        Intrinsics.checkNotNullParameter(sizeLabel, "sizeLabel");
        S1.b bVarK = com.bumptech.glide.c.K(importDir);
        if ((bVarK == null || (fileFindVxAceRoot = bVarK.f2056a) == null) && (fileFindVxAceRoot = findVxAceRoot(importDir)) == null && (fileFindVxAceRoot = findKiriRoot(importDir)) == null && (fileFindVxAceRoot = findGodotRoot(importDir)) == null) {
            fileFindVxAceRoot = importDir;
        }
        if (bVarK == null || (file = bVarK.f2057c) == null) {
            file = new File(fileFindVxAceRoot, "gameconfig.txt");
            if (!file.exists() || !file.isFile()) {
                file = null;
            }
            if (file == null) {
                file = new File(importDir, "gameconfig.txt");
                if (!file.exists() || !file.isFile()) {
                    file = null;
                }
            }
        }
        C0079k0 c0079k0B = file != null ? AbstractC0082l0.b(file) : new C0079k0();
        String strDetectEngineFromDir = detectEngineFromDir(fileFindVxAceRoot, c0079k0B.f631d);
        if (z2 && file == null) {
            if (findGodotRoot(importDir) != null) {
                throw new UnsupportedGameImportException(UnsupportedImportReason.GODOT_NEEDS_DEDICATED_IMPORT);
            }
            File fileFindKiriRoot = findKiriRoot(importDir);
            if (fileFindKiriRoot != null && !hasExtractedKiriMarkers(fileFindKiriRoot)) {
                throw new UnsupportedGameImportException(UnsupportedImportReason.KIRI_NOT_EXTRACTED);
            }
        }
        if (file == null || (parentFile = file.getParentFile()) == null) {
            parentFile = fileFindVxAceRoot;
        }
        File fileI = com.bumptech.glide.c.I(parentFile, c0079k0B.b);
        File fileI2 = com.bumptech.glide.c.I(parentFile, c0079k0B.f630c);
        String str = c0079k0B.f629a;
        if (str == null) {
            str = displayName;
        }
        String str2 = c0079k0B.f632e;
        if (str2 == null) {
            str2 = "1.0.0";
        }
        String absolutePath = null;
        String str3 = str;
        String absolutePath2 = fileFindVxAceRoot.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
        String absolutePath3 = fileI != null ? fileI.getAbsolutePath() : null;
        if (fileI2 != null) {
            absolutePath = fileI2.getAbsolutePath();
        }
        GamePluginScanner gamePluginScanner = GamePluginScanner.INSTANCE;
        String pluginsJson = gamePluginScanner.toPluginsJson(gamePluginScanner.scanEnabledPluginNames(fileFindVxAceRoot));
        Long l2 = c0079k0B.f633h;
        return new Game(0, str3, strDetectEngineFromDir, str2, sizeLabel, absolutePath2, absolutePath3, absolutePath, null, null, null, false, 0, 0L, 0, null, 0, pluginsJson, null, null, null, null, false, l2 != null ? l2.longValue() : 0L, null, null, null, 125697793, null);
    }

    public static /* synthetic */ Game buildImportedGameFromDirectory$default(String str, File file, String str2, boolean z2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            str2 = "-- MB";
        }
        if ((i3 & 8) != 0) {
            z2 = false;
        }
        return buildImportedGameFromDirectory(str, file, str2, z2);
    }

    public static final long commitImportedGame(Context appContext, Game importedGame) {
        int id;
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(importedGame, "importedGame");
        GameRepository gameRepository = new GameRepository(appContext);
        Game gameFindExistingInstalledGame = findExistingInstalledGame(gameRepository, importedGame);
        if (gameFindExistingInstalledGame != null) {
            preserveSaves(gameFindExistingInstalledGame, importedGame);
            String title = importedGame.getTitle();
            if (StringsKt.isBlank(title)) {
                title = gameFindExistingInstalledGame.getTitle();
            }
            String str = title;
            String engine = importedGame.getEngine();
            String version = importedGame.getVersion();
            String sizeLabel = importedGame.getSizeLabel();
            String gamePath = importedGame.getGamePath();
            String iconPath = importedGame.getIconPath();
            if (iconPath == null) {
                iconPath = gameFindExistingInstalledGame.getIconPath();
            }
            String str2 = iconPath;
            String bgPath = importedGame.getBgPath();
            if (bgPath == null) {
                bgPath = gameFindExistingInstalledGame.getBgPath();
            }
            String str3 = bgPath;
            String pluginsJson = importedGame.getPluginsJson();
            String translationPackagesJson = importedGame.getTranslationPackagesJson();
            if (StringsKt.isBlank(translationPackagesJson) || Intrinsics.areEqual(translationPackagesJson, "[]")) {
                translationPackagesJson = null;
            }
            if (translationPackagesJson == null) {
                translationPackagesJson = gameFindExistingInstalledGame.getTranslationPackagesJson();
            }
            String str4 = translationPackagesJson;
            long catalogPostId = importedGame.getCatalogPostId() > 0 ? importedGame.getCatalogPostId() : gameFindExistingInstalledGame.getCatalogPostId();
            String streamUrl = importedGame.getStreamUrl();
            if (StringsKt.isBlank(streamUrl)) {
                streamUrl = gameFindExistingInstalledGame.getStreamUrl();
            }
            String str5 = streamUrl;
            String thumbnailUrl = importedGame.getThumbnailUrl();
            if (StringsKt.isBlank(thumbnailUrl)) {
                thumbnailUrl = gameFindExistingInstalledGame.getThumbnailUrl();
            }
            gameRepository.replaceInstall(Game.copy$default(gameFindExistingInstalledGame, 0, str, engine, version, sizeLabel, gamePath, str2, str3, null, null, null, false, 0, 0L, 0, "INSTALLED", 0, pluginsJson, null, str4, null, null, false, catalogPostId, str5, thumbnailUrl, null, 74743553, null));
            deleteOldInstall(appContext, gameFindExistingInstalledGame);
            id = gameFindExistingInstalledGame.getId();
        } else {
            id = gameRepository.insert(importedGame).getId();
        }
        return id;
    }

    private static final void deleteOldInstall(Context context, Game game) {
        try {
            if (StringsKt.isBlank(game.getGamePath())) {
                return;
            }
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = context.getFilesDir();
            }
            File canonicalFile = new File(externalFilesDir, "games").getCanonicalFile();
            File canonicalFile2 = new File(game.getGamePath()).getCanonicalFile();
            while (canonicalFile2.getParentFile() != null) {
                File parentFile = canonicalFile2.getParentFile();
                Intrinsics.checkNotNull(parentFile);
                if (Intrinsics.areEqual(parentFile.getCanonicalFile(), canonicalFile)) {
                    break;
                }
                File parentFile2 = canonicalFile2.getParentFile();
                Intrinsics.checkNotNull(parentFile2);
                canonicalFile2 = parentFile2.getCanonicalFile();
            }
            File parentFile3 = canonicalFile2.getParentFile();
            if (!Intrinsics.areEqual(parentFile3 != null ? parentFile3.getCanonicalFile() : null, canonicalFile)) {
                canonicalFile2 = new File(game.getGamePath()).getCanonicalFile();
            }
            Intrinsics.checkNotNull(canonicalFile2);
            FilesKt.deleteRecursively(canonicalFile2);
        } catch (Exception e2) {
            E.b.x("Không xóa được folder cũ: ", e2.getMessage(), "MinHub-Import");
        }
    }

    public static final String detectEngineFromDir(File root, String str) {
        Intrinsics.checkNotNullParameter(root, "root");
        return EngineDetector.INSTANCE.detect(root, str).getEngine().name();
    }

    public static /* synthetic */ String detectEngineFromDir$default(File file, String str, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            str = null;
        }
        return detectEngineFromDir(file, str);
    }

    private static final Game findExistingInstalledGame(GameRepository gameRepository, Game game) {
        List<Game> value = gameRepository.getGames().getValue();
        if (value == null) {
            value = CollectionsKt.emptyList();
        }
        return matchInstalledGame(value, game);
    }

    private static final File findGodotRoot(File file) {
        File[] fileArrListFiles;
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile() && (E.b.y(file2, file2, "pck", true) || StringsKt.equals(FilesKt.getExtension(file2), "apk", true))) {
                return file;
            }
        }
        if (!new File(file, "assets/project.binary").exists()) {
            for (File file3 : fileArrListFiles) {
                if (!file3.isFile() || !Intrinsics.areEqual(file3.getName(), "project.binary")) {
                }
            }
            ArrayList arrayList = new ArrayList();
            for (File file4 : fileArrListFiles) {
                if (file4.isDirectory()) {
                    arrayList.add(file4);
                }
            }
            for (File file5 : CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt$findGodotRoot$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t2, T t3) {
                    String name = ((File) t2).getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    Locale locale = Locale.ROOT;
                    String lowerCase = name.toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    String name2 = ((File) t3).getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    String lowerCase2 = name2.toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                    return ComparisonsKt.compareValues(lowerCase, lowerCase2);
                }
            })) {
                Intrinsics.checkNotNull(file5);
                File fileFindGodotRoot = findGodotRoot(file5);
                if (fileFindGodotRoot != null) {
                    return fileFindGodotRoot;
                }
            }
            return null;
        }
        return file;
    }

    private static final File findKiriRoot(File file) {
        if (isKiriDir(file)) {
            return file;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                arrayList.add(file2);
            }
        }
        List<File> listSortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt$findKiriRoot$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t2, T t3) {
                String name = ((File) t2).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                Locale locale = Locale.ROOT;
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String name2 = ((File) t3).getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                String lowerCase2 = name2.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase, lowerCase2);
            }
        });
        if (listSortedWith == null) {
            return null;
        }
        for (File file3 : listSortedWith) {
            Intrinsics.checkNotNull(file3);
            File fileFindKiriRoot = findKiriRoot(file3);
            if (fileFindKiriRoot != null) {
                return fileFindKiriRoot;
            }
        }
        return null;
    }

    private static final File findVxAceRoot(File file) {
        if (isVxAceDir(file)) {
            return file;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                arrayList.add(file2);
            }
        }
        List<File> listSortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt$findVxAceRoot$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t2, T t3) {
                String name = ((File) t2).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                Locale locale = Locale.ROOT;
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String name2 = ((File) t3).getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                String lowerCase2 = name2.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase, lowerCase2);
            }
        });
        if (listSortedWith == null) {
            return null;
        }
        for (File file3 : listSortedWith) {
            Intrinsics.checkNotNull(file3);
            File fileFindVxAceRoot = findVxAceRoot(file3);
            if (fileFindVxAceRoot != null) {
                return fileFindVxAceRoot;
            }
        }
        return null;
    }

    private static final String formatFileSize(long j2) {
        StringBuilder sb;
        String str;
        if (j2 < 1048576) {
            sb = new StringBuilder();
            sb.append(j2 / ((long) 1024));
            str = " KB";
        } else {
            sb = new StringBuilder();
            sb.append(j2 / ((long) 1048576));
            str = " MB";
        }
        sb.append(str);
        return sb.toString();
    }

    private static final boolean hasExtractedKiriMarkers(File file) {
        if (!new File(file, "startup.tjs").isFile() && !new File(file, "system/Boot.tjs").isFile() && !new File(file, "first.ks").isFile()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (!file2.isFile() || !E.b.y(file2, file2, "tjs", true)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public static final long importOnlineCatalogItem(Context appContext, OnlineCatalogItem item, String str, Function1<? super Integer, Unit> onProgress) {
        Object next;
        File file;
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(item, "item");
        String selectedUrl = str;
        Intrinsics.checkNotNullParameter(selectedUrl, "selectedUrl");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        if (StringsKt.isBlank(selectedUrl)) {
            selectedUrl = null;
        }
        if (selectedUrl == null) {
            selectedUrl = item.getZipUrl();
        }
        File file2 = new File(appContext.getCacheDir(), "catalog-downloads/" + UUID.randomUUID());
        file2.mkdirs();
        RemoteZipImporter remoteZipImporter = RemoteZipImporter.INSTANCE;
        File file3 = new File(file2, remoteZipImporter.resolveArchiveFileName(item.getTitle(), selectedUrl));
        File externalFilesDir = appContext.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = appContext.getFilesDir();
        }
        File file4 = new File(externalFilesDir, kotlin.collections.unsigned.a.o("games/", remoteZipImporter.buildImportDirectoryName(item.getTitle(), System.currentTimeMillis())));
        Iterator<T> it = item.effectiveDownloadLinks().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((DownloadLink) next).getUrl(), selectedUrl));
        DownloadLink downloadLink = (DownloadLink) next;
        try {
            try {
                RemoteZipImporter remoteZipImporter2 = RemoteZipImporter.INSTANCE;
                remoteZipImporter2.downloadZip(selectedUrl, file3, appContext, new G(onProgress, 1));
                String checksum = downloadLink != null ? downloadLink.getChecksum() : null;
                if (checksum == null) {
                    checksum = "";
                }
                if (!StringsKt.isBlank(checksum)) {
                    onProgress.invoke(56);
                    Log.i("MinHub-Import", "Verifying checksum: " + checksum);
                    verifyChecksum(file3, checksum);
                    Log.i("MinHub-Import", "Checksum OK");
                }
                onProgress.invoke(56);
                RemoteZipImporterExtractKt.extractZip(remoteZipImporter2, file3, file4, new G(onProgress, 2));
                Game gameBuildImportedGameFromDirectory$default = buildImportedGameFromDirectory$default(item.getTitle(), file4, formatFileSize(file3.length()), false, 8, null);
                S1.b bVarK = com.bumptech.glide.c.K(file4);
                if (bVarK == null || (file = bVarK.f2056a) == null) {
                    file = file4;
                }
                String strName = EngineDetector.INSTANCE.detect(file, item.getEngine()).getEngine().name();
                if (!Intrinsics.areEqual(gameBuildImportedGameFromDirectory$default.getEngine(), "HTML")) {
                    strName = gameBuildImportedGameFromDirectory$default.getEngine();
                }
                String str2 = strName;
                String strG = catalogImportGson.g(item.getTranslations());
                Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
                long postId = item.getPostId();
                Long lValueOf = postId > 0 ? Long.valueOf(postId) : null;
                Game gameCopy$default = Game.copy$default(gameBuildImportedGameFromDirectory$default, 0, null, str2, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, strG, null, null, false, lValueOf != null ? lValueOf.longValue() : gameBuildImportedGameFromDirectory$default.getCatalogPostId(), null, null, null, 125304827, null);
                onProgress.invoke(96);
                long jCommitImportedGame = commitImportedGame(appContext, gameCopy$default);
                if (Intrinsics.areEqual(gameCopy$default.getEngine(), "RENPY8") || Intrinsics.areEqual(gameCopy$default.getEngine(), "RENPY7")) {
                    onProgress.invoke(96);
                    try {
                        L1.A(new File(gameCopy$default.getGamePath()));
                    } catch (Exception unused) {
                    }
                }
                onProgress.invoke(100);
                file3.delete();
                file2.delete();
                return jCommitImportedGame;
            } catch (Exception e2) {
                FilesKt.deleteRecursively(file4);
                throw e2;
            }
        } catch (Throwable th) {
            file3.delete();
            file2.delete();
            throw th;
        }
    }

    public static /* synthetic */ long importOnlineCatalogItem$default(Context context, OnlineCatalogItem onlineCatalogItem, String str, Function1 function1, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            str = onlineCatalogItem.getZipUrl();
        }
        if ((i3 & 8) != 0) {
            function1 = new L1.d(28);
        }
        return importOnlineCatalogItem(context, onlineCatalogItem, str, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit importOnlineCatalogItem$lambda$27(int i3) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit importOnlineCatalogItem$lambda$31(Function1 function1, int i3) {
        function1.invoke(Integer.valueOf(RangesKt.coerceIn((i3 * 55) / 100, 1, 55)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit importOnlineCatalogItem$lambda$32(Function1 function1, int i3) {
        function1.invoke(Integer.valueOf(RangesKt.coerceIn(((i3 * 40) / 100) + 55, 56, 95)));
        return Unit.INSTANCE;
    }

    public static final long importStreamGame(Context appContext, OnlineCatalogItem item) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(item, "item");
        return commitImportedGame(appContext, new Game(0, item.getTitle(), "BROWSE", null, "Online", "", null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, null, null, false, item.getPostId(), item.getStreamUrl(), item.getThumbnailUrl(), null, 75497417, null));
    }

    private static final boolean isKiriDir(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (E.b.y(file2, file2, "xp3", true)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0043  */
    /* JADX WARN: Code duplicated, block: B:24:0x004d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0071  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    /* JADX WARN: Code duplicated, block: B:40:0x008c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:0x009c A[LOOP:3: B:43:0x009a->B:44:0x009c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00be  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:55:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:68:0x0087 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x00e5 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x0092, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Iterable, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.util.ArrayList] */
    private static final boolean isRenpyWebDir(File file, List<String> list) {
        File[] fileArrListFiles;
        File file2;
        File[] fileArrListFiles2;
        ?? EmptyList;
        int i3;
        int length;
        int i4;
        File file3;
        if ((!list.contains("renpy.js") && !list.contains("game.js")) || !list.contains("index.html")) {
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (StringsKt__StringsJVMKt.endsWith$default((String) it.next(), ".rpa", false, 2, null)) {
                    }
                }
                if (list.isEmpty()) {
                    fileArrListFiles = file.listFiles();
                    file2 = null;
                    if (fileArrListFiles != null) {
                        length = fileArrListFiles.length;
                        for (i4 = 0; i4 < length; i4++) {
                            file3 = fileArrListFiles[i4];
                            if (!file3.isDirectory()) {
                            }
                        }
                    }
                    if (file2 != null) {
                        fileArrListFiles2 = file2.listFiles();
                        if (fileArrListFiles2 != null) {
                            EmptyList = new ArrayList(fileArrListFiles2.length);
                            for (File file4 : fileArrListFiles2) {
                                String name = file4.getName();
                                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                                String lowerCase = name.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                EmptyList.add(lowerCase);
                            }
                        } else {
                            EmptyList = CollectionsKt.emptyList();
                        }
                        if (EmptyList != 0) {
                        }
                        for (String str : EmptyList) {
                            if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "renpy", false, 2, (Object) null)) {
                            }
                        }
                    }
                    return false;
                }
                for (String str2 : list) {
                    if (!StringsKt__StringsJVMKt.endsWith$default(str2, ".rpy", false, 2, null)) {
                    }
                }
                fileArrListFiles = file.listFiles();
                file2 = null;
                if (fileArrListFiles != null) {
                    length = fileArrListFiles.length;
                    while (i4 < length) {
                        file3 = fileArrListFiles[i4];
                        if (!file3.isDirectory()) {
                        }
                    }
                }
                if (file2 != null) {
                    fileArrListFiles2 = file2.listFiles();
                    if (fileArrListFiles2 != null) {
                        EmptyList = new ArrayList(fileArrListFiles2.length);
                        while (i3 < r2) {
                            String name2 = file4.getName();
                            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                            String lowerCase2 = name2.toLowerCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                            EmptyList.add(lowerCase2);
                        }
                    } else {
                        EmptyList = CollectionsKt.emptyList();
                    }
                    if (EmptyList != 0) {
                    }
                    while (r7.hasNext()) {
                        if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "renpy", false, 2, (Object) null)) {
                        }
                    }
                }
                return false;
            }
            if (list.isEmpty()) {
                fileArrListFiles = file.listFiles();
                file2 = null;
                if (fileArrListFiles != null) {
                    length = fileArrListFiles.length;
                    while (i4 < length) {
                        file3 = fileArrListFiles[i4];
                        if (!file3.isDirectory() && StringsKt.equals(file3.getName(), "lib", true)) {
                            file2 = file3;
                            break;
                        }
                    }
                }
                if (file2 != null) {
                    fileArrListFiles2 = file2.listFiles();
                    if (fileArrListFiles2 != null) {
                        EmptyList = new ArrayList(fileArrListFiles2.length);
                        while (i3 < r2) {
                            String name3 = file4.getName();
                            Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                            String lowerCase3 = name3.toLowerCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                            EmptyList.add(lowerCase3);
                        }
                    } else {
                        EmptyList = CollectionsKt.emptyList();
                    }
                    if (EmptyList != 0 || !EmptyList.isEmpty()) {
                        while (r7.hasNext()) {
                            if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "renpy", false, 2, (Object) null) || Intrinsics.areEqual(str, "web")) {
                            }
                        }
                    }
                }
                return false;
            }
            while (r8.hasNext()) {
                if (!StringsKt__StringsJVMKt.endsWith$default(str2, ".rpy", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(str2, ".rpyc", false, 2, null)) {
                }
            }
            fileArrListFiles = file.listFiles();
            file2 = null;
            if (fileArrListFiles != null) {
                length = fileArrListFiles.length;
                while (i4 < length) {
                    file3 = fileArrListFiles[i4];
                    if (!file3.isDirectory()) {
                    }
                }
            }
            if (file2 != null) {
                fileArrListFiles2 = file2.listFiles();
                if (fileArrListFiles2 != null) {
                    EmptyList = new ArrayList(fileArrListFiles2.length);
                    while (i3 < r2) {
                        String name4 = file4.getName();
                        Intrinsics.checkNotNullExpressionValue(name4, "getName(...)");
                        String lowerCase4 = name4.toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                        EmptyList.add(lowerCase4);
                    }
                } else {
                    EmptyList = CollectionsKt.emptyList();
                }
                if (EmptyList != 0) {
                }
                while (r7.hasNext()) {
                    if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "renpy", false, 2, (Object) null)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    private static final boolean isVxAceDir(File file) {
        File file2;
        File[] fileArrListFiles;
        File[] fileArrListFiles2 = file.listFiles();
        if (fileArrListFiles2 != null) {
            ArrayList arrayList = new ArrayList(fileArrListFiles2.length);
            for (File file3 : fileArrListFiles2) {
                String name = file3.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                String lowerCase = name.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                arrayList.add(lowerCase);
            }
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    String str = (String) obj;
                    if (StringsKt__StringsJVMKt.endsWith$default(str, ".rgss3a", false, 2, null) || Intrinsics.areEqual(str, "game.ini")) {
                        return true;
                    }
                }
            }
            int length = fileArrListFiles2.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    file2 = null;
                    break;
                }
                file2 = fileArrListFiles2[i4];
                if (file2.isDirectory() && StringsKt.equals(file2.getName(), "data", true)) {
                    break;
                }
                i4++;
            }
            if (file2 != null && (fileArrListFiles = file2.listFiles()) != null) {
                for (File file4 : fileArrListFiles) {
                    if (E.b.y(file4, file4, "rvdata2", true)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final Game matchInstalledGame(List<Game> all, Game g) {
        Intrinsics.checkNotNullParameter(all, "all");
        Intrinsics.checkNotNullParameter(g, "g");
        Object obj = null;
        if (g.getCatalogPostId() > 0) {
            for (Object obj2 : all) {
                if (((Game) obj2).getCatalogPostId() == g.getCatalogPostId()) {
                    obj = obj2;
                    break;
                }
            }
            return (Game) obj;
        }
        String strNormalizeGameTitle = normalizeGameTitle(g.getTitle());
        if (StringsKt.isBlank(strNormalizeGameTitle)) {
            return null;
        }
        for (Object obj3 : all) {
            if (Intrinsics.areEqual(normalizeGameTitle(((Game) obj3).getTitle()), strNormalizeGameTitle)) {
                obj = obj3;
                break;
            }
        }
        return (Game) obj;
    }

    private static final String normalizeGameTitle(String str) {
        String lowerCase = StringsKt.trim((CharSequence) str).toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    private static final void preserveSaves(Game game, Game game2) {
        File[] fileArrListFiles;
        try {
            File file = new File(game.getGamePath());
            File file2 = new File(game2.getGamePath());
            if (file.exists() && file2.exists()) {
                GameEngine engineEnum = GameKt.getEngineEnum(game);
                GameEngine gameEngine = GameEngine.GODOT;
                if (engineEnum != gameEngine && GameKt.getEngineEnum(game2) != gameEngine) {
                    File fileM = com.bumptech.glide.c.M(file, GameKt.getEngineEnum(game));
                    if (fileM.exists() && (fileArrListFiles = fileM.listFiles()) != null && fileArrListFiles.length != 0) {
                        File fileM2 = com.bumptech.glide.c.M(file2, GameKt.getEngineEnum(game2));
                        fileM2.mkdirs();
                        FilesKt__UtilsKt.copyRecursively$default(fileM, fileM2, true, null, 4, null);
                        Log.i("MinHub-Import", "Giữ save khi cập nhật: " + fileM.getAbsolutePath() + " -> " + fileM2.getAbsolutePath());
                        return;
                    }
                    return;
                }
                AbstractC0367d1.a(file, file2);
                Log.i("MinHub-Import", "Giữ save Godot khi cập nhật: " + file.getAbsolutePath() + " -> " + file2.getAbsolutePath());
            }
        } catch (Exception e2) {
            E.b.x("Không chuyển được save khi cập nhật: ", e2.getMessage(), "MinHub-Import");
        }
    }

    private static final void verifyChecksum(File file, String str) throws NoSuchAlgorithmException, IOException {
        Pair pair;
        if (StringsKt__StringsJVMKt.startsWith(str, "md5:", true)) {
            String strSubstring = str.substring(4);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            pair = TuplesKt.to("MD5", StringsKt.trim((CharSequence) strSubstring).toString());
        } else {
            if (!StringsKt__StringsJVMKt.startsWith(str, "sha256:", true)) {
                return;
            }
            String strSubstring2 = str.substring(7);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            pair = TuplesKt.to("SHA-256", StringsKt.trim((CharSequence) strSubstring2).toString());
        }
        Object objComponent1 = pair.component1();
        Intrinsics.checkNotNullExpressionValue(objComponent1, "component1(...)");
        String str2 = (String) objComponent1;
        String str3 = (String) pair.component2();
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 8192);
        try {
            byte[] bArr = new byte[8192];
            for (int i3 = bufferedInputStream.read(bArr); i3 != -1; i3 = bufferedInputStream.read(bArr)) {
                messageDigest.update(bArr, 0, i3);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedInputStream, null);
            byte[] bArrDigest = messageDigest.digest();
            Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            String strJoinToString$default = ArraysKt___ArraysKt.joinToString$default(bArrDigest, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new L1.d(27), 30, (Object) null);
            if (StringsKt.equals(strJoinToString$default, str3, true)) {
                return;
            }
            String strTake = StringsKt.take(str3, 16);
            throw new IOException(kotlin.collections.unsigned.a.i(kotlin.collections.unsigned.a.j("File bị lỗi — checksum không khớp (", str2, ").\nExpected: ", strTake, "…\nGot:      "), StringsKt.take(strJoinToString$default, 16), "…"));
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(bufferedInputStream, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence verifyChecksum$lambda$41(byte b) {
        String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
