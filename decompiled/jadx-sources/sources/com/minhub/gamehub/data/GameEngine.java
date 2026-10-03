package com.minhub.gamehub.data;

import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0015"}, d2 = {"Lcom/minhub/gamehub/data/GameEngine;", "", "label", "", "colorHex", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "getColorHex", "MV", "MZ", "TYRANO", "VXACE", "HTML", "RENPY8", "RENPY7", "KIRI", "GODOT", "BROWSE", "Companion", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public enum GameEngine {
    MV("RPG Maker MV", "#3B82F6"),
    MZ("RPG Maker MZ", "#8B5CF6"),
    TYRANO("Tyrano", "#F97316"),
    VXACE("RPG VX Ace", "#10B981"),
    HTML("HTML Game", "#EC4899"),
    RENPY8("Ren'Py 8", "#E91E8C"),
    RENPY7("Ren'Py 7", "#C2185B"),
    KIRI("KiriKiri", "#FF6B35"),
    GODOT("Godot", "#478CBF"),
    BROWSE("Browse Games", "#6366F1");

    private final String colorHex;
    private final String label;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00052\b\u0010\t\u001a\u0004\u0018\u00010\u0007¨\u0006\n"}, d2 = {"Lcom/minhub/gamehub/data/GameEngine$Companion;", "", "<init>", "()V", "fromString", "Lcom/minhub/gamehub/data/GameEngine;", "s", "", "fromConfigLabel", "label", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nGame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Game.kt\ncom/minhub/gamehub/data/GameEngine$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n295#2,2:77\n*S KotlinDebug\n*F\n+ 1 Game.kt\ncom/minhub/gamehub/data/GameEngine$Companion\n*L\n24#1:77,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GameEngine fromConfigLabel(String label) {
            String string;
            List<String> groupValues;
            String str;
            Integer intOrNull = null;
            if (label != null && (string = StringsKt.trim((CharSequence) label).toString()) != null) {
                String lowerCase = string.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (lowerCase != null) {
                    MatchResult matchResultFind$default = Regex.find$default(new Regex("ren\\s*['’]?\\s*py"), lowerCase, 0, 2, null);
                    if (matchResultFind$default != null) {
                        String strSubstring = lowerCase.substring(matchResultFind$default.getRange().getLast() + 1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        if (!new Regex("\\b[78]\\s*/\\s*[78]\\b").containsMatchIn(strSubstring)) {
                            MatchResult matchResultFind$default2 = Regex.find$default(new Regex("^\\s*[-:]?\\s*([78])(?:\\D|$)"), strSubstring, 0, 2, null);
                            if (matchResultFind$default2 != null && (groupValues = matchResultFind$default2.getGroupValues()) != null && (str = groupValues.get(1)) != null) {
                                intOrNull = StringsKt.toIntOrNull(str);
                            }
                            if (intOrNull != null && intOrNull.intValue() == 7) {
                                return GameEngine.RENPY7;
                            }
                            return (intOrNull != null && intOrNull.intValue() == 8) ? GameEngine.RENPY8 : GameEngine.RENPY8;
                        }
                    } else {
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "html", false, 2, (Object) null)) {
                            return GameEngine.HTML;
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "vxace", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "vx ace", false, 2, (Object) null)) {
                            return GameEngine.VXACE;
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "tyrano", false, 2, (Object) null)) {
                            return GameEngine.TYRANO;
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "kiri", false, 2, (Object) null)) {
                            return GameEngine.KIRI;
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "godot", false, 2, (Object) null)) {
                            return GameEngine.GODOT;
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "browse", false, 2, (Object) null)) {
                            return GameEngine.BROWSE;
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "mz", false, 2, (Object) null)) {
                            return GameEngine.MZ;
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "mv", false, 2, (Object) null)) {
                            return GameEngine.MV;
                        }
                    }
                }
            }
            return null;
        }

        public final GameEngine fromString(String s2) {
            GameEngine next;
            Intrinsics.checkNotNullParameter(s2, "s");
            Iterator<GameEngine> it = GameEngine.getEntries().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!StringsKt.equals(next.name(), s2, true));
            GameEngine gameEngine = next;
            return gameEngine == null ? GameEngine.MV : gameEngine;
        }

        private Companion() {
        }
    }

    GameEngine(String str, String str2) {
        this.label = str;
        this.colorHex = str2;
    }

    public static EnumEntries<GameEngine> getEntries() {
        return $ENTRIES;
    }

    public final String getColorHex() {
        return this.colorHex;
    }

    public final String getLabel() {
        return this.label;
    }
}
