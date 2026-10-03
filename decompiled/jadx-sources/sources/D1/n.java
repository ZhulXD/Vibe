package D1;

import A1.C0015e;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.RenpyEngineDetectionKt;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import p064y1.L1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f840a = SetsKt.setOf((Object[]) new String[]{"__macosx", "save", "savedata"});

    public static final void a(ArrayList arrayList, File file, File file2, File file3, GameEngine gameEngine, k kVar) {
        arrayList.add(new l(file2, file3, gameEngine, kVar, StringsKt.F(FilesKt.toRelativeString(file2, file), File.separatorChar, '/')));
    }

    public static p b(File root) {
        Object objM9constructorimpl;
        o oVar;
        Intrinsics.checkNotNullParameter(root, "root");
        boolean z2 = false;
        if (!root.isDirectory()) {
            return new p(CollectionsKt.emptyList(), false, false, o.f848l);
        }
        ArrayList arrayList = new ArrayList();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(root.getCanonicalFile());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            return new p(CollectionsKt.emptyList(), false, false, o.f848l);
        }
        c(arrayList, root, booleanRef, booleanRef2, (File) objM9constructorimpl, root, 0);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            String absolutePath = ((l) obj).f835a.getAbsolutePath();
            Object arrayList2 = linkedHashMap.get(absolutePath);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(absolutePath, arrayList2);
            }
            ((List) arrayList2).add(obj);
        }
        ArrayList arrayList3 = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList3.add((l) CollectionsKt___CollectionsKt.minWithOrThrow((List) ((Map.Entry) it.next()).getValue(), ComparisonsKt.compareBy(new C0015e(25), new C0015e(26))));
        }
        List listSortedWith = CollectionsKt.sortedWith(arrayList3, ComparisonsKt.compareBy(new C0015e(22), new C0015e(23), new C0015e(24)));
        boolean z3 = listSortedWith.isEmpty() && booleanRef.element;
        if (listSortedWith.isEmpty() && booleanRef2.element) {
            z2 = true;
        }
        if (!listSortedWith.isEmpty()) {
            switch (m.f839a[((l) CollectionsKt.first(listSortedWith)).f836c.ordinal()]) {
                case 1:
                    oVar = o.b;
                    break;
                case 2:
                    oVar = o.f842d;
                    break;
                case 3:
                    oVar = o.f843e;
                    break;
                case 4:
                    oVar = o.f;
                    break;
                case 5:
                case 6:
                    oVar = o.g;
                    break;
                case 7:
                    oVar = o.f844h;
                    break;
                case 8:
                    oVar = o.f845i;
                    break;
                default:
                    oVar = o.f841c;
                    break;
            }
        } else if (z3) {
            oVar = o.f846j;
        } else {
            oVar = z2 ? o.f847k : o.f848l;
        }
        return new p(listSortedWith, z3, z2, oVar);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00fe A[EDGE_INSN: B:65:0x00fe->B:66:0x00ff BREAK  A[LOOP:4: B:58:0x00e7->B:64:0x00fb]] */
    public static final void c(ArrayList arrayList, File file, Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, File root, File file2, int i3) {
        File file3;
        File file4;
        int i4;
        Object objM9constructorimpl;
        File file5;
        File[] fileArrListFiles;
        File file6;
        File file7;
        File file8;
        ArrayList arrayList2 = new ArrayList();
        Pair<String, GameEngine> pairRenpyScriptVersionEvidence = RenpyEngineDetectionKt.renpyScriptVersionEvidence(file2);
        if (pairRenpyScriptVersionEvidence != null) {
            a(arrayList2, file, new File(file2, pairRenpyScriptVersionEvidence.component1()), file2, pairRenpyScriptVersionEvidence.component2(), k.b);
        }
        GameEngine gameEngine = null;
        if (arrayList2.isEmpty()) {
            Iterator it = CollectionsKt.listOf((Object[]) new File[]{new File(file2, "game"), file2}).iterator();
            while (true) {
                if (!it.hasNext()) {
                    file7 = null;
                    break;
                }
                File[] fileArrListFiles2 = ((File) it.next()).listFiles();
                if (fileArrListFiles2 != null) {
                    int length = fileArrListFiles2.length;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length) {
                            file8 = null;
                            break;
                        }
                        file8 = fileArrListFiles2[i5];
                        if (file8.isFile() && (E.b.y(file8, file8, "rpyc", true) || StringsKt.equals(FilesKt.getExtension(file8), "rpa", true))) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    if (file8 != null) {
                        file7 = file8;
                        break;
                    }
                }
            }
            if (file7 != null) {
                a(arrayList2, file, file7, file2, GameEngine.RENPY8, k.f832c);
            }
        }
        File[] fileArrListFiles3 = file2.listFiles();
        if (fileArrListFiles3 != null) {
            int length2 = fileArrListFiles3.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length2) {
                    file6 = null;
                    break;
                }
                File file9 = fileArrListFiles3[i6];
                if (file9.isFile() && E.b.y(file9, file9, "pck", true) && L1.C(file9) != null) {
                    file6 = file9;
                    break;
                }
                i6++;
            }
            if (file6 != null) {
                a(arrayList2, file, file6, file2, GameEngine.GODOT, k.b);
            }
        }
        File[] fileArrListFiles4 = file2.listFiles();
        if (fileArrListFiles4 == null) {
            file3 = null;
            break;
        }
        int length3 = fileArrListFiles4.length;
        int i7 = 0;
        while (true) {
            if (i7 >= length3) {
                file5 = null;
                break;
            }
            file5 = fileArrListFiles4[i7];
            if (file5.isDirectory() && StringsKt.equals(file5.getName(), "data", true)) {
                break;
            } else {
                i7++;
            }
        }
        if (file5 == null || (fileArrListFiles = file5.listFiles()) == null) {
            file3 = null;
            break;
        }
        int length4 = fileArrListFiles.length;
        int i8 = 0;
        while (true) {
            if (i8 >= length4) {
                file3 = null;
                break;
            }
            File file10 = fileArrListFiles[i8];
            if (file10.isFile() && E.b.y(file10, file10, "rvdata2", true)) {
                file3 = file10;
                break;
            }
            i8++;
        }
        if (file3 != null) {
            file4 = file2;
            a(arrayList2, file, file3, file4, GameEngine.VXACE, k.b);
        } else {
            file4 = file2;
        }
        File file11 = new File(file4, "startup.tjs");
        File file12 = file11.isFile() ? file11 : null;
        if (file12 != null) {
            a(arrayList2, file, file12, file4, GameEngine.KIRI, k.b);
        }
        File file13 = new File(file4, "index.html");
        File file14 = file13.isFile() ? file13 : null;
        if (file14 != null) {
            if (new File(file4, "js/rmmz_core.js").isFile()) {
                gameEngine = GameEngine.MZ;
            } else if (new File(file4, "js/rpg_core.js").isFile()) {
                gameEngine = GameEngine.MV;
            } else if (new File(file4, "tyrano/tyrano.js").isFile()) {
                gameEngine = GameEngine.TYRANO;
            }
            GameEngine gameEngine2 = gameEngine;
            if (gameEngine2 != null) {
                a(arrayList2, file, file14, file4, gameEngine2, k.b);
            } else {
                a(arrayList2, file, file14, file2, GameEngine.HTML, k.f833d);
            }
        }
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        File[] fileArrListFiles5 = file2.listFiles();
        if (fileArrListFiles5 == null) {
            return;
        }
        for (File candidate : fileArrListFiles5) {
            if (candidate.isFile()) {
                if (E.b.y(candidate, candidate, "xp3", true)) {
                    booleanRef.element = true;
                } else if (StringsKt.equals(FilesKt.getExtension(candidate), "rgss3a", true)) {
                    booleanRef2.element = true;
                }
            } else if (candidate.isDirectory() && (i4 = i3 + 1) < 4) {
                String name = candidate.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (!StringsKt.N(name, ".")) {
                    String name2 = candidate.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    String lowerCase = name2.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (!f840a.contains(lowerCase)) {
                        Intrinsics.checkNotNull(root);
                        Intrinsics.checkNotNull(candidate);
                        Intrinsics.checkNotNullParameter(root, "root");
                        Intrinsics.checkNotNullParameter(candidate, "candidate");
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(Boolean.valueOf(candidate.getCanonicalFile().toPath().startsWith(root.getCanonicalFile().toPath())));
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                        }
                        Boolean bool = Boolean.FALSE;
                        if (Result.m15isFailureimpl(objM9constructorimpl)) {
                            objM9constructorimpl = bool;
                        }
                        if (((Boolean) objM9constructorimpl).booleanValue()) {
                            c(arrayList, file, booleanRef, booleanRef2, root, candidate, i4);
                        }
                    }
                }
            }
        }
    }
}
