package com.minhub.gamehub.data;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p023i1.l;
import p023i1.n;
import p023i1.o;
import p023i1.q;
import p023i1.r;
import p023i1.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"", "json", "Li1/l;", "gson", "", "Lcom/minhub/gamehub/data/Game;", "parseStoredGamesJson", "(Ljava/lang/String;Li1/l;)Ljava/util/List;", "Lcom/minhub/gamehub/data/StoredParse;", "parseStoredGames", "(Ljava/lang/String;Li1/l;)Lcom/minhub/gamehub/data/StoredParse;", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorageKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n1#2:321\n1#2:332\n1617#3,9:322\n1869#3:331\n1870#3:333\n1626#3:334\n1563#3:335\n1634#3,3:336\n774#3:339\n865#3,2:340\n*S KotlinDebug\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorageKt\n*L\n57#1:332\n57#1:322,9\n57#1:331\n57#1:333\n57#1:334\n60#1:335\n60#1:336,3\n60#1:339\n60#1:340,2\n*E\n"})
public final class GameStorageKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final StoredParse parseStoredGames(String str, l lVar) {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(p000a.a.E(str));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        n nVar = objM9constructorimpl instanceof n ? (n) objM9constructorimpl : null;
        if (nVar == null) {
            return StoredParse.Invalid.INSTANCE;
        }
        ArrayList arrayList = nVar.b;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            o oVar = (o) it.next();
            r rVar = oVar instanceof r ? (r) oVar : null;
            if (rVar == null) {
                return StoredParse.Invalid.INSTANCE;
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                String storedGames$string = parseStoredGames$string(rVar, NotificationCompat.CATEGORY_STATUS, "INSTALLED");
                GameStatus.valueOf(storedGames$string);
                objM9constructorimpl2 = Result.m9constructorimpl(new Game(parseStoredGames$int$default(rVar, "id", 0, 4, null), parseStoredGames$string$default(rVar, "title", null, 4, null), parseStoredGames$string(rVar, "engine", "MV"), parseStoredGames$string(rVar, "version", "1.0.0"), parseStoredGames$string(rVar, "sizeLabel", "0 MB"), parseStoredGames$string$default(rVar, "gamePath", null, 4, null), parseStoredGames$nullableString(rVar, "iconPath"), parseStoredGames$nullableString(rVar, "bgPath"), parseStoredGames$string(rVar, "coverColor1", "#1e1b4b"), parseStoredGames$string(rVar, "coverColor2", "#060b18"), parseStoredGames$string$default(rVar, "description", null, 4, null), parseStoredGames$bool$default(rVar, "favorite", false, 4, null), parseStoredGames$int$default(rVar, "playtimeMinutes", 0, 4, null), parseStoredGames$long$default(rVar, "lastPlayedMs", 0L, 4, null), parseStoredGames$int$default(rVar, "saveCount", 0, 4, null), storedGames$string, parseStoredGames$int$default(rVar, "downloadProgress", 0, 4, null), parseStoredGames$string(rVar, "pluginsJson", "[]"), parseStoredGames$string(rVar, "accentColor", "#EF4444"), parseStoredGames$string(rVar, "translationPackagesJson", "[]"), parseStoredGames$string$default(rVar, "activeTranslationLabel", null, 4, null), parseStoredGames$string$default(rVar, "activeTranslationCode", null, 4, null), parseStoredGames$bool$default(rVar, "isPortraitGame", false, 4, null), parseStoredGames$long$default(rVar, "catalogPostId", 0L, 4, null), parseStoredGames$string$default(rVar, "streamUrl", null, 4, null), parseStoredGames$string$default(rVar, "thumbnailUrl", null, 4, null), parseStoredGames$stringList(rVar, "tags")));
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
            }
            if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                objM9constructorimpl2 = null;
            }
            Game game = (Game) objM9constructorimpl2;
            if (game == null) {
                return StoredParse.Invalid.INSTANCE;
            }
            arrayList2.add(game);
        }
        return new StoredParse.Valid(arrayList2);
    }

    private static final boolean parseStoredGames$bool(r rVar, String str, boolean z2) {
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof q) {
                oVarK = null;
            }
            if (oVarK != null) {
                if ((oVarK instanceof s) && (oVarK.e().b instanceof Boolean)) {
                    return oVarK.b();
                }
                throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is not boolean"));
            }
        }
        return z2;
    }

    public static /* synthetic */ boolean parseStoredGames$bool$default(r rVar, String str, boolean z2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return parseStoredGames$bool(rVar, str, z2);
    }

    private static final int parseStoredGames$int(r rVar, String str, int i3) {
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof q) {
                oVarK = null;
            }
            if (oVarK != null) {
                if (!(oVarK instanceof s) || !(oVarK.e().b instanceof Number)) {
                    throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is not an integer"));
                }
                String strF = oVarK.f();
                Intrinsics.checkNotNull(strF);
                Long longOrNull = StringsKt.toLongOrNull(strF);
                if (longOrNull == null) {
                    throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is not an integer"));
                }
                long jLongValue = longOrNull.longValue();
                if (-2147483648L > jLongValue || jLongValue >= 2147483648L) {
                    throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is out of range"));
                }
                return (int) jLongValue;
            }
        }
        return i3;
    }

    public static /* synthetic */ int parseStoredGames$int$default(r rVar, String str, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        return parseStoredGames$int(rVar, str, i3);
    }

    private static final long parseStoredGames$long(r rVar, String str, long j2) {
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof q) {
                oVarK = null;
            }
            if (oVarK != null) {
                if (!(oVarK instanceof s) || !(oVarK.e().b instanceof Number)) {
                    throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is not an integer"));
                }
                String strF = oVarK.f();
                Intrinsics.checkNotNullExpressionValue(strF, "getAsString(...)");
                Long longOrNull = StringsKt.toLongOrNull(strF);
                if (longOrNull != null) {
                    return longOrNull.longValue();
                }
                throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is not an integer"));
            }
        }
        return j2;
    }

    public static /* synthetic */ long parseStoredGames$long$default(r rVar, String str, long j2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            j2 = 0;
        }
        return parseStoredGames$long(rVar, str, j2);
    }

    private static final String parseStoredGames$nullableString(r rVar, String str) {
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof q) {
                oVarK = null;
            }
            if (oVarK != null) {
                if ((oVarK instanceof s) && (oVarK.e().b instanceof String)) {
                    return oVarK.f();
                }
                throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is not a string"));
            }
        }
        return null;
    }

    private static final String parseStoredGames$string(r rVar, String str, String str2) {
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof q) {
                oVarK = null;
            }
            if (oVarK != null) {
                if (!(oVarK instanceof s) || !(oVarK.e().b instanceof String)) {
                    throw new IllegalArgumentException(kotlin.collections.unsigned.a.g(str, " is not a string"));
                }
                String strF = oVarK.f();
                if (strF != null) {
                    return strF;
                }
            }
        }
        return str2;
    }

    public static /* synthetic */ String parseStoredGames$string$default(r rVar, String str, String str2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            str2 = "";
        }
        return parseStoredGames$string(rVar, str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.List] */
    private static final List<String> parseStoredGames$stringList(r rVar, String str) {
        ?? EmptyList;
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof q) {
                oVarK = null;
            }
            if (oVarK != null) {
                int i3 = 0;
                if (oVarK instanceof n) {
                    n nVarC = oVarK.c();
                    Intrinsics.checkNotNullExpressionValue(nVarC, "getAsJsonArray(...)");
                    EmptyList = new ArrayList();
                    ArrayList arrayList = nVarC.b;
                    int size = arrayList.size();
                    while (i3 < size) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        o oVar = (o) obj;
                        oVar.getClass();
                        String strF = ((oVar instanceof s) && (oVar.e().b instanceof String)) ? oVar.f() : null;
                        if (strF != null) {
                            EmptyList.add(strF);
                        }
                    }
                } else if ((oVarK instanceof s) && (oVarK.e().b instanceof String)) {
                    String strF2 = oVarK.f();
                    Intrinsics.checkNotNullExpressionValue(strF2, "getAsString(...)");
                    String string = StringsKt.trim((CharSequence) strF2).toString();
                    if (string.length() == 0) {
                        EmptyList = CollectionsKt.emptyList();
                    } else {
                        List listSplit$default = StringsKt__StringsKt.split$default(string, new char[]{','}, false, 0, 6, (Object) null);
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSplit$default, 10));
                        Iterator it = listSplit$default.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(StringsKt.trim((CharSequence) it.next()).toString());
                        }
                        ArrayList arrayList3 = new ArrayList();
                        int size2 = arrayList2.size();
                        while (i3 < size2) {
                            Object obj2 = arrayList2.get(i3);
                            i3++;
                            if (((String) obj2).length() > 0) {
                                arrayList3.add(obj2);
                            }
                        }
                        EmptyList = arrayList3;
                    }
                } else {
                    EmptyList = CollectionsKt.emptyList();
                }
                if (EmptyList != 0) {
                    return EmptyList;
                }
            }
        }
        return CollectionsKt.emptyList();
    }

    public static final List<Game> parseStoredGamesJson(String json, l gson) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(gson, "gson");
        StoredParse storedGames = parseStoredGames(json, gson);
        if (storedGames instanceof StoredParse.Valid) {
            return ((StoredParse.Valid) storedGames).getGames();
        }
        if (Intrinsics.areEqual(storedGames, StoredParse.Invalid.INSTANCE)) {
            return CollectionsKt.emptyList();
        }
        throw new NoWhenBranchMatchedException();
    }

    public static /* synthetic */ List parseStoredGamesJson$default(String str, l lVar, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            lVar = new l();
        }
        return parseStoredGamesJson(str, lVar);
    }
}
