package com.minhub.gamehub.data;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u0017\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"renpyScriptVersionEvidence", "Lkotlin/Pair;", "", "Lcom/minhub/gamehub/data/GameEngine;", "root", "Ljava/io/File;", "renpyEngineFromScriptVersion", "renpyMajorVersion", "", "version", "(Ljava/lang/String;)Ljava/lang/Integer;", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRenpyEngineDetection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenpyEngineDetection.kt\ncom/minhub/gamehub/data/RenpyEngineDetectionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,43:1\n1#2:44\n1088#3,2:45\n*S KotlinDebug\n*F\n+ 1 RenpyEngineDetection.kt\ncom/minhub/gamehub/data/RenpyEngineDetectionKt\n*L\n25#1:45,2\n*E\n"})
public final class RenpyEngineDetectionKt {
    public static final GameEngine renpyEngineFromScriptVersion(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        Pair<String, GameEngine> pairRenpyScriptVersionEvidence = renpyScriptVersionEvidence(root);
        if (pairRenpyScriptVersionEvidence != null) {
            return pairRenpyScriptVersionEvidence.getSecond();
        }
        return null;
    }

    private static final Integer renpyMajorVersion(String str) {
        List<String> groupValues;
        String str2;
        List<String> groupValues2;
        String str3;
        Integer intOrNull;
        MatchResult matchResultFind$default = Regex.find$default(new Regex("\\b([78])\\s*,"), str, 0, 2, null);
        if (matchResultFind$default != null && (groupValues2 = matchResultFind$default.getGroupValues()) != null && (str3 = groupValues2.get(1)) != null && (intOrNull = StringsKt.toIntOrNull(str3)) != null) {
            return intOrNull;
        }
        MatchResult matchResultFind$default2 = Regex.find$default(new Regex("\\b([78])(?:\\.\\d+){1,3}\\b"), str, 0, 2, null);
        if (matchResultFind$default2 == null || (groupValues = matchResultFind$default2.getGroupValues()) == null || (str2 = groupValues.get(1)) == null) {
            return null;
        }
        return StringsKt.toIntOrNull(str2);
    }

    public static final Pair<String, GameEngine> renpyScriptVersionEvidence(File root) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(root, "root");
        Iterator it = CollectionsKt.listOf((Object[]) new String[]{"script_version.txt", "game/script_version.txt"}).iterator();
        while (true) {
            GameEngine gameEngine = null;
            if (!it.hasNext()) {
                return null;
            }
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            String str = (String) next;
            File file = new File(root, str);
            if (file.isFile() && file.length() <= 64) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(StringsKt.trim((CharSequence) FilesKt.readText(file, Charsets.UTF_8)).toString());
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = null;
                }
                String str2 = (String) objM9constructorimpl;
                if (str2 == null) {
                    continue;
                } else {
                    for (int i3 = 0; i3 < str2.length(); i3++) {
                        if (Character.isDigit(str2.charAt(i3))) {
                            Integer numRenpyMajorVersion = renpyMajorVersion(str2);
                            if (numRenpyMajorVersion != null && numRenpyMajorVersion.intValue() == 7) {
                                gameEngine = GameEngine.RENPY7;
                            } else if (numRenpyMajorVersion != null && numRenpyMajorVersion.intValue() == 8) {
                                gameEngine = GameEngine.RENPY8;
                            }
                            if (gameEngine == null) {
                                break;
                            }
                            return TuplesKt.to(str, gameEngine);
                        }
                    }
                }
            }
        }
    }
}
