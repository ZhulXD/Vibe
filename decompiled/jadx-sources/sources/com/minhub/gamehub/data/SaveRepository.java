package com.minhub.gamehub.data;

import A1.C0035p;
import A1.F;
import E.e;
import L1.d;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;
import p064y1.AbstractC0367d1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 D2\u00020\u0001:\u0001DB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0002J\u001e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rH\u0002J\u001e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nH\u0002J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000fH\u0002J(\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0019H\u0002J \u0010 \u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u0019H\u0002J\u0012\u0010!\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\"\u001a\u00020\u000fH\u0002J\u0010\u0010#\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0019H\u0002J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020(J\u0016\u0010)\u001a\u00020%2\u0006\u0010&\u001a\u00020\b2\u0006\u0010*\u001a\u00020(J\u0010\u0010+\u001a\u0004\u0018\u00010\r2\u0006\u0010&\u001a\u00020\bJ\u000e\u0010,\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\bJ\u001d\u0010-\u001a\u00020%2\u0006\u0010&\u001a\u00020\b2\u0006\u0010.\u001a\u00020/H\u0000¢\u0006\u0002\b0J\u0016\u00101\u001a\u00020%2\u0006\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020(J\u0016\u00102\u001a\u00020%2\u0006\u0010&\u001a\u00020\b2\u0006\u0010*\u001a\u00020(J\u0010\u00103\u001a\u0004\u0018\u00010\r2\u0006\u0010&\u001a\u00020\bJ\u000e\u00104\u001a\u00020%2\u0006\u00105\u001a\u00020(J\u0010\u00106\u001a\u0004\u0018\u0001072\u0006\u00105\u001a\u00020(J\u001d\u00108\u001a\u0004\u0018\u00010\u00192\u0006\u00105\u001a\u00020(2\u0006\u0010\u000e\u001a\u000209¢\u0006\u0002\u0010:J\u0017\u0010;\u001a\u0004\u0018\u0001072\u0006\u0010<\u001a\u00020=H\u0000¢\u0006\u0002\b>J\u0012\u0010;\u001a\u0004\u0018\u0001072\u0006\u00105\u001a\u00020(H\u0002J\u001e\u0010?\u001a\u00020%2\u0006\u0010\t\u001a\u00020\n2\u0006\u00105\u001a\u00020(2\u0006\u0010@\u001a\u00020\u0019J \u0010A\u001a\u00020%2\u0006\u0010\t\u001a\u00020\n2\u0006\u00105\u001a\u00020(2\b\b\u0002\u0010@\u001a\u00020\u0019J\u0010\u0010B\u001a\u00020\u00192\u0006\u0010@\u001a\u00020\u0019H\u0002J\u000e\u0010C\u001a\u00020%2\u0006\u0010&\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006E"}, d2 = {"Lcom/minhub/gamehub/data/SaveRepository;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "scanSaves", "", "Lcom/minhub/gamehub/data/Save;", "game", "Lcom/minhub/gamehub/data/Game;", "scanRPGMakerSaves", "gameDir", "Ljava/io/File;", "engine", "", "scanTyranoSaves", "scanRenpySaves", "logRenpySaveIsolation", "", "ownSaveDir", "scanKiriKiriSaves", "godotUserDir", "scanGodotSaves", "extractSlotNumber", "", "fileName", "prefix", "extension", "parseRPGMakerSave", "file", "slotNum", "parseTyranoSave", "parseLeaderNameFromRPGMaker", "content", "getDefaultChapterName", "exportSave", "", SaveRepository.TYRANO_SAVE_PREFIX, "destinationUri", "Landroid/net/Uri;", "exportSaveToDirectory", "directoryUri", "exportSaveToAppPrivate", "zipFileNameFor", "writeSaveZip", "out", "Ljava/io/OutputStream;", "writeSaveZip$app_release", "exportSaveAsZip", "exportSaveAsZipToDirectory", "exportSaveAsZipToAppPrivate", "isSaveZip", "sourceUri", "readSaveManifest", "Lorg/json/JSONObject;", "zipSlotFor", "Lcom/minhub/gamehub/data/GameEngine;", "(Landroid/net/Uri;Lcom/minhub/gamehub/data/GameEngine;)Ljava/lang/Integer;", "readZipManifest", "input", "Ljava/io/InputStream;", "readZipManifest$app_release", "importSaveFromZip", "targetSlot", "importSave", "normalizeImportSlot", "deleteSave", "Companion", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSaveRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveRepository.kt\ncom/minhub/gamehub/data/SaveRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,722:1\n1068#2:723\n1869#2:724\n1870#2:727\n1374#2:743\n1460#2,2:744\n1462#2,3:759\n1573#2:762\n1604#2,3:763\n1607#2:767\n13472#3,2:725\n13472#3,2:728\n11546#3,9:730\n13472#3:739\n13473#3:741\n11555#3:742\n11546#3,9:746\n13472#3:755\n13473#3:757\n11555#3:758\n1#4:740\n1#4:756\n1#4:766\n*S KotlinDebug\n*F\n+ 1 SaveRepository.kt\ncom/minhub/gamehub/data/SaveRepository\n*L\n88#1:723\n103#1:724\n103#1:727\n232#1:743\n232#1:744,2\n232#1:759,3\n283#1:762\n283#1:763,3\n283#1:767\n110#1:725,2\n139#1:728,2\n173#1:730,9\n173#1:739\n173#1:741\n173#1:742\n234#1:746,9\n234#1:755\n234#1:757\n234#1:758\n173#1:740\n234#1:756\n*E\n"})
public final class SaveRepository {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String MINHUB_SAVE_MANIFEST = "minhub_save.json";
    private static final String RENPY_SAVE_DIR = "saves";
    private static final String TAG = "SaveRepository";
    private static final String TYRANO_SAVE_DIR = "data";
    private static final String TYRANO_SAVE_EXT = ".json";
    private static final String TYRANO_SAVE_PREFIX = "save";
    private final Context context;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/minhub/gamehub/data/SaveRepository$Companion;", "", "<init>", "()V", "TAG", "", "MINHUB_SAVE_MANIFEST", "TYRANO_SAVE_DIR", "TYRANO_SAVE_PREFIX", "TYRANO_SAVE_EXT", "RENPY_SAVE_DIR", "supportsSaveManagement", "", "engine", "Lcom/minhub/gamehub/data/GameEngine;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
        @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[GameEngine.values().length];
                try {
                    iArr[GameEngine.MV.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[GameEngine.MZ.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[GameEngine.TYRANO.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[GameEngine.VXACE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[GameEngine.RENPY8.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[GameEngine.RENPY7.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[GameEngine.KIRI.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[GameEngine.GODOT.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[GameEngine.HTML.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[GameEngine.BROWSE.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean supportsSaveManagement(GameEngine engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            switch (WhenMappings.$EnumSwitchMapping$0[engine.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    return true;
                case 9:
                case 10:
                    return false;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GameEngine.values().length];
            try {
                iArr[GameEngine.MV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GameEngine.MZ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GameEngine.TYRANO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GameEngine.VXACE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GameEngine.HTML.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[GameEngine.RENPY8.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[GameEngine.RENPY7.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[GameEngine.KIRI.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[GameEngine.GODOT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[GameEngine.BROWSE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SaveRepository(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    private final int extractSlotNumber(String fileName, String prefix, String extension) {
        try {
            if (StringsKt__StringsJVMKt.endsWith(fileName, extension, true)) {
                String strSubstring = fileName.substring(0, fileName.length() - extension.length());
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                if (StringsKt__StringsJVMKt.startsWith(strSubstring, prefix, true)) {
                    String strSubstring2 = strSubstring.substring(prefix.length());
                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                    Integer intOrNull = StringsKt.toIntOrNull(StringsKt.trimStart(strSubstring2, '_', '-', ' '));
                    if (intOrNull != null) {
                        return intOrNull.intValue();
                    }
                }
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    private final String getDefaultChapterName(int slotNum) {
        return (slotNum == 0 || slotNum == 999) ? "Quick Save" : E.b.i(slotNum, "Save Slot ");
    }

    private final File godotUserDir(Game game) {
        Set set = AbstractC0367d1.f6210a;
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        File gameDir = new File(game.getGamePath());
        int id = game.getId();
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        File fileB = AbstractC0367d1.b(gameDir);
        if (!new File(gameDir, ".minhub-godot-user").exists() && !fileB.isDirectory()) {
            File fileC = AbstractC0367d1.c(filesDir, id);
            if (fileC.isDirectory()) {
                return fileC;
            }
        }
        return fileB;
    }

    public static /* synthetic */ boolean importSave$default(SaveRepository saveRepository, Game game, Uri uri, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = -1;
        }
        return saveRepository.importSave(game, uri, i3);
    }

    private final void logRenpySaveIsolation(File ownSaveDir) {
        try {
            File file = new File(this.context.getExternalFilesDir(null), RENPY_SAVE_DIR);
            if (file.isDirectory()) {
                RenpySaveIsolationProbe renpySaveIsolationProbe = RenpySaveIsolationProbe.INSTANCE;
                String[] list = ownSaveDir.list();
                List<String> list2 = list != null ? ArraysKt.toList(list) : null;
                if (list2 == null) {
                    list2 = CollectionsKt.emptyList();
                }
                String[] list3 = file.list();
                List<String> list4 = list3 != null ? ArraysKt.toList(list3) : null;
                if (list4 == null) {
                    list4 = CollectionsKt.emptyList();
                }
                Log.i(TAG, "renpy-save-isolation " + renpySaveIsolationProbe.compare(list2, list4).summary());
            }
        } catch (Exception e2) {
            Log.d(TAG, "renpy-save-isolation probe skipped: " + e2.getMessage());
        }
    }

    private final int normalizeImportSlot(int targetSlot) {
        if (targetSlot == 0) {
            return 999;
        }
        return RangesKt.coerceAtLeast(targetSlot, 1);
    }

    private final String parseLeaderNameFromRPGMaker(String content) {
        List<String> groupValues;
        String str;
        Iterator it = CollectionsKt.listOf((Object[]) new Regex[]{new Regex("\"name\"\\s*:\\s*\"([^\"]+)"), new Regex("_name[\"']?\\s*[:=]\\s*[\"']([^\"']+)[\"']")}).iterator();
        while (it.hasNext()) {
            MatchResult matchResultFind$default = Regex.find$default((Regex) it.next(), content, 0, 2, null);
            if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && (str = groupValues.get(1)) != null) {
                return str;
            }
        }
        return null;
    }

    private final Save parseRPGMakerSave(File file, Game game, String engine, int slotNum) {
        String str;
        MatchResult matchResultFind$default;
        List<String> groupValues;
        String leaderNameFromRPGMaker = null;
        try {
            String text$default = FilesKt__FileReadWriteKt.readText$default(file, null, 1, null);
            if (!StringsKt__StringsKt.contains$default((CharSequence) text$default, (CharSequence) "playtime", false, 2, (Object) null) || (matchResultFind$default = Regex.find$default(new Regex("playtime[\"']?\\s*[:=]\\s*[\"']?([^\"']+)"), text$default, 0, 2, null)) == null || (groupValues = matchResultFind$default.getGroupValues()) == null || (str = groupValues.get(1)) == null) {
                str = null;
            }
            try {
                if (StringsKt__StringsKt.contains$default((CharSequence) text$default, (CharSequence) "_actors", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) text$default, (CharSequence) "actors", false, 2, (Object) null)) {
                    leaderNameFromRPGMaker = parseLeaderNameFromRPGMaker(text$default);
                }
            } catch (Exception e2) {
                e = e2;
                Log.d(TAG, "Could not parse save metadata for " + file.getName() + ": " + e.getMessage());
            }
        } catch (Exception e3) {
            e = e3;
            str = null;
        }
        String str2 = leaderNameFromRPGMaker;
        String str3 = str;
        String str4 = game.getId() + "_" + slotNum;
        int id = game.getId();
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return new Save(str4, slotNum, id, name, absolutePath, engine, file.lastModified(), file.length(), getDefaultChapterName(slotNum), str3, str2, null, file.length() > 100, null, null, 24576, null);
    }

    private final Save parseTyranoSave(File file, Game game, int slotNum) {
        String string;
        String string2;
        String string3 = null;
        try {
            JSONObject jSONObject = new JSONObject(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null));
            string2 = jSONObject.has("title") ? jSONObject.getString("title") : null;
            try {
                if (jSONObject.has("current_page")) {
                    string2 = "Page " + jSONObject.getInt("current_page");
                }
                string = jSONObject.has("playtime") ? jSONObject.getString("playtime") : null;
                try {
                    if (jSONObject.has("stats") && jSONObject.getJSONObject("stats").has("name")) {
                        string3 = jSONObject.getJSONObject("stats").getString("name");
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.d(TAG, "Could not parse Tyrano save: " + e.getMessage());
                }
            } catch (Exception e3) {
                e = e3;
                string = null;
            }
        } catch (Exception e4) {
            e = e4;
            string = null;
            string2 = null;
        }
        String str = string;
        String str2 = string3;
        String str3 = game.getId() + "_tyrano_" + slotNum;
        int id = game.getId();
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        long jLastModified = file.lastModified();
        long length = file.length();
        if (string2 == null) {
            string2 = "Checkpoint";
        }
        return new Save(str3, slotNum, id, name, absolutePath, "TYRANO", jLastModified, length, string2, str, str2, null, true, null, null, 24576, null);
    }

    private final JSONObject readZipManifest(Uri sourceUri) {
        try {
            InputStream inputStreamOpenInputStream = this.context.getContentResolver().openInputStream(sourceUri);
            if (inputStreamOpenInputStream != null) {
                try {
                    JSONObject zipManifest$app_release = readZipManifest$app_release(inputStreamOpenInputStream);
                    CloseableKt.closeFinally(inputStreamOpenInputStream, null);
                    return zipManifest$app_release;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(inputStreamOpenInputStream, th);
                        throw th2;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00e1  */
    private final List<Save> scanGodotSaves(Game game) {
        int i3;
        int iIntValue;
        String strValueOf;
        File fileGodotUserDir = godotUserDir(game);
        if (!fileGodotUserDir.exists() || !fileGodotUserDir.isDirectory()) {
            Log.d(TAG, "Godot save directory not found: " + fileGodotUserDir.getAbsolutePath());
            return CollectionsKt.emptyList();
        }
        List list = SequencesKt.toList(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(fileGodotUserDir).maxDepth(2), new C0035p(12, SetsKt.plus((Set<? extends String>) AbstractC0367d1.f6211c, ".prepared"))));
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        int i4 = 0;
        for (Object obj : list) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            File file = (File) obj;
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            int iExtractSlotNumber = extractSlotNumber(name, TYRANO_SAVE_PREFIX, ".save");
            Integer numValueOf = Integer.valueOf(iExtractSlotNumber);
            if (iExtractSlotNumber <= 0) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                iIntValue = numValueOf.intValue();
            } else {
                String name2 = file.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                int iExtractSlotNumber2 = extractSlotNumber(name2, "slot", ".dat");
                Integer numValueOf2 = iExtractSlotNumber2 > 0 ? Integer.valueOf(iExtractSlotNumber2) : null;
                if (numValueOf2 != null) {
                    iIntValue = numValueOf2.intValue();
                } else {
                    i3 = i5;
                }
                String str = game.getId() + "_godot_" + file.getName();
                int id = game.getId();
                String name3 = file.getName();
                Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                long jLastModified = file.lastModified();
                long length = file.length();
                String name4 = file.getName();
                if (1 <= i3 || i3 >= 100) {
                    strValueOf = "G";
                } else {
                    strValueOf = String.valueOf(i3);
                }
                arrayList.add(new Save(str, i3, id, name3, absolutePath, "GODOT", jLastModified, length, null, null, null, null, false, name4, strValueOf, 4096, null));
                i4 = i5;
            }
            i3 = iIntValue;
            String str2 = game.getId() + "_godot_" + file.getName();
            int id2 = game.getId();
            String name5 = file.getName();
            Intrinsics.checkNotNullExpressionValue(name5, "getName(...)");
            String absolutePath2 = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
            long jLastModified2 = file.lastModified();
            long length2 = file.length();
            String name6 = file.getName();
            if (1 <= i3) {
                strValueOf = "G";
            } else {
                strValueOf = "G";
            }
            arrayList.add(new Save(str2, i3, id2, name5, absolutePath2, "GODOT", jLastModified2, length2, null, null, null, null, false, name6, strValueOf, 4096, null));
            i4 = i5;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean scanGodotSaves$lambda$13(Set set, File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!file.isFile()) {
            return false;
        }
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        if (StringsKt.N(name, ".") || set.contains(file.getName())) {
            return false;
        }
        File parentFile = file.getParentFile();
        return !CollectionsKt.contains(set, parentFile != null ? parentFile.getName() : null);
    }

    private final List<Save> scanKiriKiriSaves(Game game, File gameDir) {
        Save save;
        List<File> listFindSaveDirs = KiriKiriSaveNaming.INSTANCE.findSaveDirs(gameDir);
        if (listFindSaveDirs.isEmpty()) {
            Log.d(TAG, "KiriKiri save directory not found under " + gameDir.getAbsolutePath());
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listFindSaveDirs.iterator();
        while (it.hasNext()) {
            File[] fileArrListFiles = ((File) it.next()).listFiles(new b(0));
            List listEmptyList = null;
            if (fileArrListFiles != null) {
                ArrayList arrayList2 = new ArrayList();
                for (File file : fileArrListFiles) {
                    KiriKiriSaveNaming kiriKiriSaveNaming = KiriKiriSaveNaming.INSTANCE;
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    Integer numSlotOf = kiriKiriSaveNaming.slotOf(name);
                    if (numSlotOf != null) {
                        int iIntValue = numSlotOf.intValue();
                        String str = game.getId() + "_" + file.getName();
                        int id = game.getId();
                        String name2 = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                        String absolutePath = file.getAbsolutePath();
                        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                        save = new Save(str, iIntValue, id, name2, absolutePath, GameKt.getEngineEnum(game).name(), file.lastModified(), file.length(), null, null, null, null, false, kiriKiriSaveNaming.label(iIntValue), kiriKiriSaveNaming.badge(iIntValue), 4096, null);
                    } else {
                        save = null;
                    }
                    if (save != null) {
                        arrayList2.add(save);
                    }
                }
                listEmptyList = arrayList2;
            }
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, listEmptyList);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean scanKiriKiriSaves$lambda$12$lambda$10(File file) {
        if (!file.isFile()) {
            return false;
        }
        KiriKiriSaveNaming kiriKiriSaveNaming = KiriKiriSaveNaming.INSTANCE;
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return kiriKiriSaveNaming.isPlayableSave(name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Iterable] */
    private final List<Save> scanRPGMakerSaves(final Game game, File gameDir, String engine) {
        ?? ListOf;
        ArrayList arrayList = new ArrayList();
        if (GameKt.getEngineEnum(game) == GameEngine.VXACE) {
            Intrinsics.checkNotNullParameter(gameDir, "gameRoot");
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            File file = new File(gameDir, "Save");
            if (file.exists() && file.isDirectory()) {
                listCreateListBuilder.add(file);
            }
            listCreateListBuilder.add(gameDir);
            List listBuild = CollectionsKt.build(listCreateListBuilder);
            HashSet hashSet = new HashSet();
            ListOf = new ArrayList();
            for (Object obj : listBuild) {
                if (hashSet.add(((File) obj).getAbsolutePath())) {
                    ListOf.add(obj);
                }
            }
        } else {
            ListOf = CollectionsKt.listOf(RpgMakerSaveStore.INSTANCE.saveDir(game));
        }
        ?? r3 = ListOf;
        boolean z2 = false;
        for (File file2 : r3) {
            if (file2.exists() && file2.isDirectory()) {
                File[] fileArrListFiles = file2.listFiles(new FileFilter() { // from class: com.minhub.gamehub.data.a
                    @Override // java.io.FileFilter
                    public final boolean accept(File file3) {
                        return SaveRepository.scanRPGMakerSaves$lambda$4$lambda$1(game, file3);
                    }
                });
                if (fileArrListFiles != null) {
                    for (File file3 : fileArrListFiles) {
                        RpgMakerSaveStore rpgMakerSaveStore = RpgMakerSaveStore.INSTANCE;
                        String name = file3.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        Integer numSlotFromFileName = rpgMakerSaveStore.slotFromFileName(name, GameKt.getEngineEnum(game));
                        if (numSlotFromFileName != null) {
                            int iIntValue = numSlotFromFileName.intValue();
                            Intrinsics.checkNotNull(file3);
                            Save rPGMakerSave = parseRPGMakerSave(file3, game, engine, iIntValue);
                            CollectionsKt__MutableCollectionsKt.removeAll((List) arrayList, (Function1) new F(iIntValue, file3, 2));
                            arrayList.add(rPGMakerSave);
                        }
                    }
                }
                z2 = true;
            }
        }
        if (!z2) {
            Log.d(TAG, "Save directory not found for " + game.getTitle() + ": " + CollectionsKt.o(r3, null, null, null, new d(22), 31));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean scanRPGMakerSaves$lambda$4$lambda$1(Game game, File file) {
        if (!file.isFile()) {
            return false;
        }
        RpgMakerSaveStore rpgMakerSaveStore = RpgMakerSaveStore.INSTANCE;
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return rpgMakerSaveStore.isPlayableSaveFile(name, GameKt.getEngineEnum(game));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean scanRPGMakerSaves$lambda$4$lambda$3$lambda$2(int i3, File file, Save it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getSlotNumber() == i3 && Intrinsics.areEqual(it.getFilePath(), file.getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence scanRPGMakerSaves$lambda$5(File it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String absolutePath = it.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    private final List<Save> scanRenpySaves(Game game, File gameDir) {
        Save save;
        File file = new File(gameDir, RENPY_SAVE_DIR);
        if (!file.exists() || !file.isDirectory()) {
            Log.d(TAG, "Ren'Py save directory not found: " + file.getAbsolutePath());
            return CollectionsKt.emptyList();
        }
        logRenpySaveIsolation(file);
        File[] fileArrListFiles = file.listFiles(new b(1));
        if (fileArrListFiles == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            RenpySaveNaming renpySaveNaming = RenpySaveNaming.INSTANCE;
            String name = file2.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            RenpySaveNaming.Slot slot = renpySaveNaming.parse(name);
            if (slot == null) {
                save = null;
            } else {
                String str = game.getId() + "_" + file2.getName();
                int iSortKey = renpySaveNaming.sortKey(slot);
                int id = game.getId();
                String name2 = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                String absolutePath = file2.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                save = new Save(str, iSortKey, id, name2, absolutePath, GameKt.getEngineEnum(game).name(), file2.lastModified(), file2.length(), null, null, null, null, false, renpySaveNaming.label(slot), renpySaveNaming.badge(slot), 4096, null);
            }
            if (save != null) {
                arrayList.add(save);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean scanRenpySaves$lambda$8(File file) {
        if (!file.isFile()) {
            return false;
        }
        RenpySaveNaming renpySaveNaming = RenpySaveNaming.INSTANCE;
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return renpySaveNaming.isPlayableSave(name);
    }

    private final List<Save> scanTyranoSaves(Game game, File gameDir) {
        ArrayList arrayList = new ArrayList();
        File file = new File(gameDir, TYRANO_SAVE_DIR);
        if (!file.exists()) {
            Log.d(TAG, "Tyrano save directory not found: " + file.getAbsolutePath());
            return arrayList;
        }
        File[] fileArrListFiles = file.listFiles(new b(2));
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                int iExtractSlotNumber = extractSlotNumber(name, TYRANO_SAVE_PREFIX, TYRANO_SAVE_EXT);
                Intrinsics.checkNotNull(file2);
                arrayList.add(parseTyranoSave(file2, game, iExtractSlotNumber));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean scanTyranoSaves$lambda$6(File file) {
        if (!file.isFile()) {
            return false;
        }
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        if (!StringsKt.N(name, TYRANO_SAVE_PREFIX)) {
            return false;
        }
        String name2 = file.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
        return StringsKt__StringsJVMKt.endsWith$default(name2, TYRANO_SAVE_EXT, false, 2, null);
    }

    public final boolean deleteSave(Save save) {
        Intrinsics.checkNotNullParameter(save, "save");
        try {
            return new File(save.getFilePath()).delete();
        } catch (Exception e2) {
            Log.e(TAG, "Delete failed: " + e2.getMessage());
            return false;
        }
    }

    public final boolean exportSave(Save save, Uri destinationUri) {
        Intrinsics.checkNotNullParameter(save, "save");
        Intrinsics.checkNotNullParameter(destinationUri, "destinationUri");
        try {
            File file = new File(save.getFilePath());
            if (!file.exists()) {
                return false;
            }
            OutputStream outputStreamOpenOutputStream = this.context.getContentResolver().openOutputStream(destinationUri);
            if (outputStreamOpenOutputStream == null) {
                return true;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    ByteStreamsKt.copyTo$default(fileInputStream, outputStreamOpenOutputStream, 0, 2, null);
                    CloseableKt.closeFinally(fileInputStream, null);
                    CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                    return true;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(outputStreamOpenOutputStream, th3);
                    throw th4;
                }
            }
        } catch (IOException e2) {
            Log.e(TAG, "Export failed: " + e2.getMessage());
            return false;
        }
    }

    public final boolean exportSaveAsZip(Save save, Uri destinationUri) {
        Intrinsics.checkNotNullParameter(save, "save");
        Intrinsics.checkNotNullParameter(destinationUri, "destinationUri");
        try {
            OutputStream outputStreamOpenOutputStream = this.context.getContentResolver().openOutputStream(destinationUri);
            if (outputStreamOpenOutputStream == null) {
                return false;
            }
            try {
                boolean zWriteSaveZip$app_release = writeSaveZip$app_release(save, outputStreamOpenOutputStream);
                CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                return zWriteSaveZip$app_release;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(outputStreamOpenOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            Log.e(TAG, "Zip export failed: " + e2.getMessage());
            return false;
        }
    }

    public final File exportSaveAsZipToAppPrivate(Save save) {
        Intrinsics.checkNotNullParameter(save, "save");
        try {
            File file = new File(this.context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), "exports");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, zipFileNameFor(save));
            FileOutputStream fileOutputStream = new FileOutputStream(file2, false);
            try {
                writeSaveZip$app_release(save, fileOutputStream);
                CloseableKt.closeFinally(fileOutputStream, null);
                return file2;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            Log.e(TAG, "Zip export-to-app-private failed: " + e2.getMessage());
            return null;
        }
    }

    public final boolean exportSaveAsZipToDirectory(Save save, Uri directoryUri) {
        OutputStream outputStreamOpenOutputStream;
        Intrinsics.checkNotNullParameter(save, "save");
        Intrinsics.checkNotNullParameter(directoryUri, "directoryUri");
        try {
            e eVarG = E.a.g(this.context, directoryUri);
            String strZipFileNameFor = zipFileNameFor(save);
            E.a aVarF = eVarG.f(strZipFileNameFor);
            if (aVarF != null) {
                aVarF.d();
            }
            E.a aVarC = eVarG.c("application/zip", strZipFileNameFor);
            if (aVarC != null && (outputStreamOpenOutputStream = this.context.getContentResolver().openOutputStream(((e) aVarC).b, "w")) != null) {
                try {
                    boolean zWriteSaveZip$app_release = writeSaveZip$app_release(save, outputStreamOpenOutputStream);
                    CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                    return zWriteSaveZip$app_release;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(outputStreamOpenOutputStream, th);
                        throw th2;
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            Log.e(TAG, "Zip export-to-directory failed: " + e2.getMessage());
            return false;
        }
    }

    public final File exportSaveToAppPrivate(Save save) {
        Intrinsics.checkNotNullParameter(save, "save");
        try {
            File file = new File(save.getFilePath());
            if (!file.exists()) {
                return null;
            }
            File file2 = new File(this.context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), "exports");
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(file2, SaveExportNamingPolicy.INSTANCE.fileNameFor(save));
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3, false);
                try {
                    ByteStreamsKt.copyTo$default(fileInputStream, fileOutputStream, 0, 2, null);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(fileInputStream, null);
                    return file3;
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
        } catch (IOException e2) {
            Log.e(TAG, "Export-to-app-private failed: " + e2.getMessage());
            return null;
        }
    }

    public final boolean exportSaveToDirectory(Save save, Uri directoryUri) {
        OutputStream outputStreamOpenOutputStream;
        Intrinsics.checkNotNullParameter(save, "save");
        Intrinsics.checkNotNullParameter(directoryUri, "directoryUri");
        try {
            File file = new File(save.getFilePath());
            if (file.exists()) {
                e eVarG = E.a.g(this.context, directoryUri);
                String strFileNameFor = SaveExportNamingPolicy.INSTANCE.fileNameFor(save);
                E.a aVarF = eVarG.f(strFileNameFor);
                if (aVarF != null) {
                    aVarF.d();
                }
                E.a aVarC = eVarG.c("application/octet-stream", strFileNameFor);
                if (aVarC != null && (outputStreamOpenOutputStream = this.context.getContentResolver().openOutputStream(((e) aVarC).b, "w")) != null) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            ByteStreamsKt.copyTo$default(fileInputStream, outputStreamOpenOutputStream, 0, 2, null);
                            CloseableKt.closeFinally(fileInputStream, null);
                            CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                            return true;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(fileInputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.closeFinally(outputStreamOpenOutputStream, th3);
                            throw th4;
                        }
                    }
                }
            }
            return false;
        } catch (IOException e2) {
            Log.e(TAG, "Export-to-directory failed: " + e2.getMessage());
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x00f6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0129 A[Catch: IOException -> 0x002b, TryCatch #4 {IOException -> 0x002b, blocks: (B:3:0x0011, B:6:0x0025, B:7:0x002a, B:10:0x002e, B:18:0x00c5, B:21:0x00d4, B:22:0x00d9, B:23:0x00da, B:31:0x0123, B:33:0x0129, B:34:0x012c, B:40:0x014a, B:53:0x015d, B:51:0x0159, B:52:0x015c, B:24:0x00df, B:27:0x00f7, B:28:0x0101, B:29:0x010b, B:30:0x011d, B:11:0x0045, B:12:0x005b, B:13:0x0071, B:14:0x0085, B:15:0x0094, B:16:0x00a8, B:17:0x00b7, B:49:0x0157, B:36:0x013d, B:39:0x0147, B:47:0x0153, B:48:0x0156, B:38:0x0144, B:45:0x0151), top: B:64:0x0011, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x013d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00f4, code lost:
    
        if (r1 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean importSave(com.minhub.gamehub.data.Game r10, android.net.Uri r11, int r12) {
        /*
            Method dump skipped, instruction units count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.minhub.gamehub.data.SaveRepository.importSave(com.minhub.gamehub.data.Game, android.net.Uri, int):boolean");
    }

    public final boolean importSaveFromZip(Game game, Uri sourceUri, int targetSlot) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(sourceUri, "sourceUri");
        try {
            GameEngine engineEnum = GameKt.getEngineEnum(game);
            GameEngine gameEngine = GameEngine.GODOT;
            File fileGodotUserDir = engineEnum == gameEngine ? godotUserDir(game) : RpgMakerSaveStore.INSTANCE.saveDir(game);
            if (!fileGodotUserDir.exists()) {
                fileGodotUserDir.mkdirs();
            }
            String strFileNameForSlot = GameKt.getEngineEnum(game) == gameEngine ? "save_" + normalizeImportSlot(targetSlot) + ".save" : RpgMakerSaveStore.INSTANCE.fileNameForSlot(GameKt.getEngineEnum(game), normalizeImportSlot(targetSlot));
            InputStream inputStreamOpenInputStream = this.context.getContentResolver().openInputStream(sourceUri);
            if (inputStreamOpenInputStream != null) {
                try {
                    ZipInputStream zipInputStream = new ZipInputStream(inputStreamOpenInputStream);
                    try {
                        for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                            if (!nextEntry.isDirectory() && !Intrinsics.areEqual(nextEntry.getName(), MINHUB_SAVE_MANIFEST)) {
                                FileOutputStream fileOutputStream = new FileOutputStream(GameKt.getEngineEnum(game) == GameEngine.GODOT ? new File(fileGodotUserDir, new File(nextEntry.getName()).getName()) : new File(fileGodotUserDir, strFileNameForSlot), false);
                                try {
                                    ByteStreamsKt.copyTo$default(zipInputStream, fileOutputStream, 0, 2, null);
                                    CloseableKt.closeFinally(fileOutputStream, null);
                                    RpgMakerImportHandoff rpgMakerImportHandoff = RpgMakerImportHandoff.INSTANCE;
                                    if (rpgMakerImportHandoff.appliesTo(GameKt.getEngineEnum(game))) {
                                        rpgMakerImportHandoff.markPending(fileGodotUserDir, GameKt.getEngineEnum(game), normalizeImportSlot(targetSlot));
                                    }
                                    CloseableKt.closeFinally(zipInputStream, null);
                                    CloseableKt.closeFinally(inputStreamOpenInputStream, null);
                                    return true;
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        CloseableKt.closeFinally(fileOutputStream, th);
                                        throw th2;
                                    }
                                }
                            }
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(inputStreamOpenInputStream, th);
                                throw th3;
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(zipInputStream, null);
                        CloseableKt.closeFinally(inputStreamOpenInputStream, null);
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            CloseableKt.closeFinally(zipInputStream, th4);
                            throw th5;
                        }
                    }
                } catch (Throwable th6) {
                    throw th6;
                }
            }
        } catch (Exception e2) {
            Log.e(TAG, "Zip import failed: " + e2.getMessage());
        }
        return false;
    }

    public final boolean isSaveZip(Uri sourceUri) {
        Intrinsics.checkNotNullParameter(sourceUri, "sourceUri");
        return readZipManifest(sourceUri) != null;
    }

    public final JSONObject readSaveManifest(Uri sourceUri) {
        Intrinsics.checkNotNullParameter(sourceUri, "sourceUri");
        return readZipManifest(sourceUri);
    }

    public final JSONObject readZipManifest$app_release(InputStream input) {
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(input, "input");
        try {
            ZipInputStream zipInputStream = new ZipInputStream(input);
            try {
                for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                    if (Intrinsics.areEqual(nextEntry.getName(), MINHUB_SAVE_MANIFEST)) {
                        jSONObject = new JSONObject(new String(ByteStreamsKt.readBytes(zipInputStream), Charsets.UTF_8));
                        CloseableKt.closeFinally(zipInputStream, null);
                        return jSONObject;
                    }
                    return null;
                }
                jSONObject = null;
                CloseableKt.closeFinally(zipInputStream, null);
                return jSONObject;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(zipInputStream, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public final List<Save> scanSaves(Game game) {
        Intrinsics.checkNotNullParameter(game, "game");
        ArrayList arrayList = new ArrayList();
        File file = new File(game.getGamePath());
        if (!file.exists() || !file.isDirectory()) {
            E.b.x("Game directory not found: ", game.getGamePath(), TAG);
            return arrayList;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[GameKt.getEngineEnum(game).ordinal()]) {
            case 1:
                arrayList.addAll(scanRPGMakerSaves(game, file, "MV"));
                break;
            case 2:
                arrayList.addAll(scanRPGMakerSaves(game, file, "MZ"));
                break;
            case 3:
                arrayList.addAll(scanTyranoSaves(game, file));
                break;
            case 4:
                arrayList.addAll(scanRPGMakerSaves(game, file, "VXACE"));
                break;
            case 5:
            case 10:
                break;
            case 6:
            case 7:
                arrayList.addAll(scanRenpySaves(game, file));
                break;
            case 8:
                arrayList.addAll(scanKiriKiriSaves(game, file));
                break;
            case 9:
                arrayList.addAll(scanGodotSaves(game));
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.minhub.gamehub.data.SaveRepository$scanSaves$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t2, T t3) {
                return ComparisonsKt.compareValues(Long.valueOf(((Save) t3).getLastModifiedMs()), Long.valueOf(((Save) t2).getLastModifiedMs()));
            }
        });
    }

    public final boolean writeSaveZip$app_release(Save save, OutputStream out) {
        Intrinsics.checkNotNullParameter(save, "save");
        Intrinsics.checkNotNullParameter(out, "out");
        File file = new File(save.getFilePath());
        if (!file.exists()) {
            return false;
        }
        ZipOutputStream zipOutputStream = new ZipOutputStream(out);
        try {
            zipOutputStream.putNextEntry(new ZipEntry(save.getFileName()));
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ByteStreamsKt.copyTo$default(fileInputStream, zipOutputStream, 0, 2, null);
                CloseableKt.closeFinally(fileInputStream, null);
                zipOutputStream.closeEntry();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("app", "MinHub");
                jSONObject.put("engine", save.getEngine());
                jSONObject.put("slot", save.getSlotNumber());
                jSONObject.put("fileName", save.getFileName());
                jSONObject.put("gameId", save.getGameId());
                jSONObject.put("fileSizeBytes", save.getFileSizeBytes());
                jSONObject.put("exportedAtMs", System.currentTimeMillis());
                String chapterName = save.getChapterName();
                if (chapterName != null) {
                    jSONObject.put("chapterName", chapterName);
                }
                String playtime = save.getPlaytime();
                if (playtime != null) {
                    jSONObject.put("playtime", playtime);
                }
                String leaderName = save.getLeaderName();
                if (leaderName != null) {
                    jSONObject.put("leaderName", leaderName);
                }
                Integer level = save.getLevel();
                if (level != null) {
                    jSONObject.put("level", level.intValue());
                }
                zipOutputStream.putNextEntry(new ZipEntry(MINHUB_SAVE_MANIFEST));
                String string = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                byte[] bytes = string.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                zipOutputStream.write(bytes);
                zipOutputStream.closeEntry();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(zipOutputStream, null);
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(fileInputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(zipOutputStream, th3);
                throw th4;
            }
        }
    }

    public final String zipFileNameFor(Save save) {
        Intrinsics.checkNotNullParameter(save, "save");
        return E.b.m("minhub-save-", save.getFileName(), ".zip");
    }

    public final Integer zipSlotFor(Uri sourceUri, GameEngine engine) {
        Intrinsics.checkNotNullParameter(sourceUri, "sourceUri");
        Intrinsics.checkNotNullParameter(engine, "engine");
        JSONObject zipManifest = readZipManifest(sourceUri);
        if (zipManifest == null || !StringsKt.equals(zipManifest.optString("engine"), engine.name(), true)) {
            return null;
        }
        int iOptInt = zipManifest.optInt("slot", -1);
        Integer numValueOf = Integer.valueOf(iOptInt);
        if (iOptInt >= 0) {
            return numValueOf;
        }
        return null;
    }
}
