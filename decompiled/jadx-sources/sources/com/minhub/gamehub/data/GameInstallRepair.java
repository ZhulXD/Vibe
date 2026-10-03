package com.minhub.gamehub.data;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J,\u0010\b\u001a\u0004\u0018\u00010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b2\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/minhub/gamehub/data/GameInstallRepair;", "", "<init>", "()V", "TAG", "", "IMPORT_DIR", "Lkotlin/text/Regex;", "findMovedInstall", "Ljava/io/File;", "gamesRoots", "", "gamePath", "claimed", "", "repairAll", "", "context", "Landroid/content/Context;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameInstallRepair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameInstallRepair.kt\ncom/minhub/gamehub/data/GameInstallRepair\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n18#2:69\n11546#3,9:70\n13472#3:79\n13473#3:81\n11555#3:82\n1#4:80\n1999#5,14:83\n1563#5:97\n1634#5,3:98\n1563#5:101\n1634#5,3:102\n*S KotlinDebug\n*F\n+ 1 GameInstallRepair.kt\ncom/minhub/gamehub/data/GameInstallRepair\n*L\n37#1:69\n37#1:70,9\n37#1:79\n37#1:81\n37#1:82\n37#1:80\n46#1:83,14\n55#1:97\n55#1:98,3\n56#1:101\n56#1:102,3\n*E\n"})
public final class GameInstallRepair {
    private static final String TAG = "GameInstallRepair";
    public static final GameInstallRepair INSTANCE = new GameInstallRepair();
    private static final Regex IMPORT_DIR = new Regex("^(.+)_(\\d{13})$");

    private GameInstallRepair() {
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c4  */
    public final File findMovedInstall(List<? extends File> gamesRoots, String gamePath, Set<String> claimed) {
        String invariantSeparatorsPath;
        Object next;
        Pair pair;
        Intrinsics.checkNotNullParameter(gamesRoots, "gamesRoots");
        Intrinsics.checkNotNullParameter(gamePath, "gamePath");
        Intrinsics.checkNotNullParameter(claimed, "claimed");
        if (!StringsKt.isBlank(gamePath)) {
            File file = new File(gamePath);
            if (!file.exists()) {
                Iterator<? extends File> it = gamesRoots.iterator();
                while (it.hasNext()) {
                    File absoluteFile = it.next().getAbsoluteFile();
                    File absoluteFile2 = file.getAbsoluteFile();
                    Intrinsics.checkNotNullExpressionValue(absoluteFile2, "getAbsoluteFile(...)");
                    Intrinsics.checkNotNull(absoluteFile);
                    File fileRelativeToOrNull = FilesKt.relativeToOrNull(absoluteFile2, absoluteFile);
                    if (fileRelativeToOrNull != null && (invariantSeparatorsPath = FilesKt.getInvariantSeparatorsPath(fileRelativeToOrNull)) != null) {
                        if (!StringsKt.N(invariantSeparatorsPath, "..") && invariantSeparatorsPath.length() != 0) {
                            String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(invariantSeparatorsPath, '/', (String) null, 2, (Object) null);
                            String strSubstringAfter = StringsKt__StringsKt.substringAfter(invariantSeparatorsPath, '/', "");
                            MatchResult matchResultMatchEntire = IMPORT_DIR.matchEntire(strSubstringBefore$default);
                            if (matchResultMatchEntire != null) {
                                String str = matchResultMatchEntire.getGroupValues().get(1);
                                Intrinsics.checkNotNullExpressionValue(str, "get(...)");
                                String str2 = str;
                                String str3 = matchResultMatchEntire.getGroupValues().get(2);
                                Intrinsics.checkNotNullExpressionValue(str3, "get(...)");
                                long j2 = Long.parseLong(str3);
                                File[] fileArrListFiles = absoluteFile.listFiles();
                                if (fileArrListFiles == null) {
                                    fileArrListFiles = new File[0];
                                }
                                ArrayList arrayList = new ArrayList();
                                int length = fileArrListFiles.length;
                                for (int i3 = 0; i3 < length; i3++) {
                                    File file2 = fileArrListFiles[i3];
                                    Regex regex = IMPORT_DIR;
                                    String name = file2.getName();
                                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                                    MatchResult matchResultMatchEntire2 = regex.matchEntire(name);
                                    if (matchResultMatchEntire2 != null && file2.isDirectory() && Intrinsics.areEqual(matchResultMatchEntire2.getGroupValues().get(1), str2)) {
                                        String str4 = matchResultMatchEntire2.getGroupValues().get(2);
                                        Intrinsics.checkNotNullExpressionValue(str4, "get(...)");
                                        long j3 = Long.parseLong(str4);
                                        if (j3 > j2) {
                                            if (strSubstringAfter.length() != 0) {
                                                file2 = new File(file2, strSubstringAfter);
                                            }
                                            if (!file2.isDirectory() || claimed.contains(file2.getAbsolutePath())) {
                                                pair = null;
                                            } else {
                                                pair = TuplesKt.to(Long.valueOf(j3), file2);
                                            }
                                        } else {
                                            pair = null;
                                        }
                                    } else {
                                        pair = null;
                                    }
                                    if (pair != null) {
                                        arrayList.add(pair);
                                    }
                                }
                                Iterator it2 = arrayList.iterator();
                                if (it2.hasNext()) {
                                    next = it2.next();
                                    if (it2.hasNext()) {
                                        long jLongValue = ((Number) ((Pair) next).getFirst()).longValue();
                                        do {
                                            Object next2 = it2.next();
                                            long jLongValue2 = ((Number) ((Pair) next2).getFirst()).longValue();
                                            if (jLongValue < jLongValue2) {
                                                next = next2;
                                                jLongValue = jLongValue2;
                                            }
                                        } while (it2.hasNext());
                                    }
                                } else {
                                    next = null;
                                }
                                Pair pair2 = (Pair) next;
                                if (pair2 != null) {
                                    return (File) pair2.getSecond();
                                }
                                return null;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final int repairAll(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        GameStorage gameStorage = GameStorage.INSTANCE.get(context);
        List<Game> value = gameStorage.getGames().getValue();
        if (value == null) {
            value = CollectionsKt.emptyList();
        }
        List listListOfNotNull = CollectionsKt.listOfNotNull((Object[]) new File[]{context.getExternalFilesDir(null), context.getFilesDir()});
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOfNotNull, 10));
        Iterator it = listListOfNotNull.iterator();
        while (it.hasNext()) {
            arrayList.add(new File((File) it.next(), "games"));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(value, 10));
        Iterator<T> it2 = value.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new File(((Game) it2.next()).getGamePath()).getAbsolutePath());
        }
        Set<String> mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList2);
        int i3 = 0;
        for (Game game : value) {
            File fileFindMovedInstall = findMovedInstall(arrayList, game.getGamePath(), mutableSet);
            if (fileFindMovedInstall != null) {
                String absolutePath = fileFindMovedInstall.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                gameStorage.replaceInstall(Game.copy$default(game, 0, null, null, null, null, absolutePath, null, null, null, null, null, false, 0, 0L, 0, "INSTALLED", 0, null, null, null, null, null, false, 0L, null, null, null, 134184927, null));
                mutableSet.add(fileFindMovedInstall.getAbsolutePath());
                i3++;
                Log.i(TAG, "Game " + game.getId() + " '" + game.getTitle() + "': " + game.getGamePath() + " -> " + fileFindMovedInstall.getAbsolutePath());
            }
        }
        return i3;
    }
}
