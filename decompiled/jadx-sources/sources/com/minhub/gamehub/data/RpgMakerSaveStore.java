package com.minhub.gamehub.data;

import L1.d;
import com.bumptech.glide.c;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005J\u0016\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerSaveStore;", "", "<init>", "()V", "QUICK_SAVE_SLOT", "", "MV_EXTENSIONS", "", "", "saveDir", "Ljava/io/File;", "game", "Lcom/minhub/gamehub/data/Game;", "extension", "engine", "Lcom/minhub/gamehub/data/GameEngine;", "fileNameForSlot", "slot", "backupFileNameForSlot", "isPlayableSaveFile", "", "fileName", "slotFromFileName", "(Ljava/lang/String;Lcom/minhub/gamehub/data/GameEngine;)Ljava/lang/Integer;", "saveFileRegex", "Lkotlin/text/Regex;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RpgMakerSaveStore {
    public static final RpgMakerSaveStore INSTANCE = new RpgMakerSaveStore();
    private static final List<String> MV_EXTENSIONS = CollectionsKt.listOf((Object[]) new String[]{".rpgsave", ".rmmvsave"});
    public static final int QUICK_SAVE_SLOT = 999;

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

    private RpgMakerSaveStore() {
    }

    private final Regex saveFileRegex(GameEngine engine) {
        return new Regex(E.b.m("^file(\\d+)(", WhenMappings.$EnumSwitchMapping$0[engine.ordinal()] == 1 ? CollectionsKt.o(MV_EXTENSIONS, "|", null, null, new d(21), 30) : Regex.INSTANCE.escape(extension(engine)), ")$"), RegexOption.IGNORE_CASE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence saveFileRegex$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Regex.INSTANCE.escape(it);
    }

    public final String backupFileNameForSlot(GameEngine engine, int slot) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        return kotlin.collections.unsigned.a.g(fileNameForSlot(engine, slot), ".bak");
    }

    public final String extension(GameEngine engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        switch (WhenMappings.$EnumSwitchMapping$0[engine.ordinal()]) {
            case 1:
                return ".rpgsave";
            case 2:
                return ".rmmzsave";
            case 3:
                return ".json";
            case 4:
                return ".rvdata2";
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return ".json";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final String fileNameForSlot(GameEngine engine, int slot) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine == GameEngine.VXACE) {
            return E.b.j(RangesKt.coerceAtLeast(slot, 1), "Save", extension(engine));
        }
        String strExtension = extension(engine);
        if (slot < 0) {
            return kotlin.collections.unsigned.a.o("config", strExtension);
        }
        return slot == 0 ? kotlin.collections.unsigned.a.o("global", strExtension) : E.b.j(slot, "file", strExtension);
    }

    public final boolean isPlayableSaveFile(String fileName, GameEngine engine) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine == GameEngine.TYRANO) {
            return StringsKt.N(fileName, "save") && StringsKt__StringsJVMKt.endsWith$default(fileName, ".json", false, 2, null);
        }
        return engine == GameEngine.VXACE ? new Regex("^Save(\\d+)\\.rvdata2$", RegexOption.IGNORE_CASE).matches(fileName) : saveFileRegex(engine).matches(fileName);
    }

    public final File saveDir(Game game) {
        Intrinsics.checkNotNullParameter(game, "game");
        return c.M(new File(game.getGamePath()), GameKt.getEngineEnum(game));
    }

    public final Integer slotFromFileName(String fileName, GameEngine engine) {
        List<String> groupValues;
        String str;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine == GameEngine.TYRANO) {
            return StringsKt.toIntOrNull(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removePrefix(fileName, (CharSequence) "save"), (CharSequence) ".json"));
        }
        if (engine == GameEngine.VXACE) {
            MatchResult matchResultFind$default = Regex.find$default(new Regex("^Save(\\d+)\\.rvdata2$", RegexOption.IGNORE_CASE), fileName, 0, 2, null);
            if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && (str = groupValues.get(1)) != null) {
                return StringsKt.toIntOrNull(str);
            }
        } else {
            MatchResult matchResultFind$default2 = Regex.find$default(saveFileRegex(engine), fileName, 0, 2, null);
            if (matchResultFind$default2 != null) {
                String str2 = matchResultFind$default2.getGroupValues().get(1);
                Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
                return StringsKt.toIntOrNull(str2);
            }
        }
        return null;
    }
}
