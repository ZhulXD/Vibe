package com.minhub.gamehub.data;

import L1.d;
import java.io.File;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p064y1.L1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\fJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0007\u001a\"\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\n0\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/minhub/gamehub/data/EngineDetector;", "", "<init>", "()V", "NATIVE_RUNTIME_ENGINES", "", "Lcom/minhub/gamehub/data/GameEngine;", "SIGNALS", "", "Lkotlin/Pair;", "Lkotlin/Function1;", "Ljava/io/File;", "", "detect", "Lcom/minhub/gamehub/data/EngineDetector$Result;", "root", "configuredLabel", "renpyFamilyEvidence", "godotEvidence", "holdsGodotProject", "", "apk", "vxAceEvidence", "kiriEvidence", "Result", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEngineDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineDetector.kt\ncom/minhub/gamehub/data/EngineDetector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,169:1\n1#2:170\n1310#3,2:171\n1310#3,2:173\n1310#3,2:175\n1310#3,2:179\n1310#3,2:181\n1255#4,2:177\n*S KotlinDebug\n*F\n+ 1 EngineDetector.kt\ncom/minhub/gamehub/data/EngineDetector\n*L\n110#1:171,2\n130#1:173,2\n132#1:175,2\n154#1:179,2\n157#1:181,2\n139#1:177,2\n*E\n"})
public final class EngineDetector {
    public static final EngineDetector INSTANCE;
    private static final Set<GameEngine> NATIVE_RUNTIME_ENGINES;
    private static final List<Pair<GameEngine, Function1<File, String>>> SIGNALS;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/minhub/gamehub/data/EngineDetector$Result;", "", "engine", "Lcom/minhub/gamehub/data/GameEngine;", "evidence", "", "<init>", "(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)V", "getEngine", "()Lcom/minhub/gamehub/data/GameEngine;", "getEvidence", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Result {
        private final GameEngine engine;
        private final String evidence;

        public Result(GameEngine engine, String str) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            this.engine = engine;
            this.evidence = str;
        }

        public static /* synthetic */ Result copy$default(Result result, GameEngine gameEngine, String str, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                gameEngine = result.engine;
            }
            if ((i3 & 2) != 0) {
                str = result.evidence;
            }
            return result.copy(gameEngine, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final GameEngine getEngine() {
            return this.engine;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getEvidence() {
            return this.evidence;
        }

        public final Result copy(GameEngine engine, String evidence) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            return new Result(engine, evidence);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Result)) {
                return false;
            }
            Result result = (Result) other;
            return this.engine == result.engine && Intrinsics.areEqual(this.evidence, result.evidence);
        }

        public final GameEngine getEngine() {
            return this.engine;
        }

        public final String getEvidence() {
            return this.evidence;
        }

        public int hashCode() {
            int iHashCode = this.engine.hashCode() * 31;
            String str = this.evidence;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Result(engine=" + this.engine + ", evidence=" + this.evidence + ")";
        }
    }

    static {
        EngineDetector engineDetector = new EngineDetector();
        INSTANCE = engineDetector;
        GameEngine gameEngine = GameEngine.GODOT;
        GameEngine gameEngine2 = GameEngine.KIRI;
        GameEngine gameEngine3 = GameEngine.VXACE;
        NATIVE_RUNTIME_ENGINES = SetsKt.setOf((Object[]) new GameEngine[]{gameEngine, gameEngine2, gameEngine3, GameEngine.RENPY7, GameEngine.RENPY8});
        SIGNALS = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(gameEngine, new EngineDetector$SIGNALS$1(engineDetector)), TuplesKt.to(gameEngine3, new EngineDetector$SIGNALS$2(engineDetector)), TuplesKt.to(gameEngine2, new EngineDetector$SIGNALS$3(engineDetector)), TuplesKt.to(GameEngine.MZ, new d(14)), TuplesKt.to(GameEngine.MV, new d(15)), TuplesKt.to(GameEngine.TYRANO, new d(16))});
    }

    private EngineDetector() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String SIGNALS$lambda$1(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        if (new File(root, "js/rmmz_core.js").isFile()) {
            return "js/rmmz_core.js";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String SIGNALS$lambda$3(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        if (new File(root, "js/rpg_core.js").isFile()) {
            return "js/rpg_core.js";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String SIGNALS$lambda$5(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        if (new File(root, "tyrano/tyrano.js").isFile()) {
            return "tyrano/tyrano.js";
        }
        return null;
    }

    public static /* synthetic */ Result detect$default(EngineDetector engineDetector, File file, String str, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            str = null;
        }
        return engineDetector.detect(file, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:32:0x0052  */
    public final String godotEvidence(File root) {
        File file;
        File[] fileArrListFiles = root.listFiles();
        if (fileArrListFiles != null) {
            int length = fileArrListFiles.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    file = null;
                    break;
                }
                file = fileArrListFiles[i3];
                if (file.isFile() && E.b.y(file, file, "pck", true) && L1.C(file) != null) {
                    break;
                }
                i3++;
            }
            if (file != null) {
                return file.getName();
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && E.b.y(file2, file2, "apk", true) && INSTANCE.holdsGodotProject(file2)) {
                    if (file2 != null) {
                        return file2.getName();
                    }
                }
            }
            file2 = null;
            if (file2 != null) {
                return file2.getName();
            }
        }
        return null;
    }

    private final boolean holdsGodotProject(File apk) {
        Object objM9constructorimpl;
        boolean z2;
        try {
            kotlin.Result.Companion companion = kotlin.Result.INSTANCE;
            ZipFile zipFile = new ZipFile(apk);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                Intrinsics.checkNotNullExpressionValue(enumerationEntries, "entries(...)");
                Iterator it = SequencesKt.asSequence(CollectionsKt.iterator(enumerationEntries)).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    }
                    String name = ((ZipEntry) it.next()).getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String strSubstringAfterLast$default = StringsKt__StringsKt.substringAfterLast$default(name, '/', (String) null, 2, (Object) null);
                    if (Intrinsics.areEqual(strSubstringAfterLast$default, "project.binary") || StringsKt__StringsJVMKt.endsWith(strSubstringAfterLast$default, ".pck", true)) {
                        z2 = true;
                        break;
                    }
                }
                CloseableKt.closeFinally(zipFile, null);
                objM9constructorimpl = kotlin.Result.m9constructorimpl(Boolean.valueOf(z2));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(zipFile, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            kotlin.Result.Companion companion2 = kotlin.Result.INSTANCE;
            objM9constructorimpl = kotlin.Result.m9constructorimpl(ResultKt.createFailure(th3));
        }
        Boolean bool = Boolean.FALSE;
        if (kotlin.Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = bool;
        }
        return ((Boolean) objM9constructorimpl).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String kiriEvidence(File root) {
        if (new File(root, "startup.tjs").isFile()) {
            return "startup.tjs";
        }
        return null;
    }

    private final String renpyFamilyEvidence(File root) {
        Iterator it = CollectionsKt.listOf((Object[]) new File[]{new File(root, "game"), root}).iterator();
        while (true) {
            File file = null;
            if (!it.hasNext()) {
                return null;
            }
            File file2 = (File) it.next();
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                for (File file3 : fileArrListFiles) {
                    if (file3.isFile() && (E.b.y(file3, file3, "rpyc", true) || StringsKt.equals(FilesKt.getExtension(file3), "rpa", true))) {
                        file = file3;
                        break;
                    }
                }
                if (file != null) {
                    return (!Intrinsics.areEqual(file2.getName(), "game") || Intrinsics.areEqual(file2, root)) ? file.getName() : kotlin.collections.unsigned.a.o("game/", file.getName());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    public final String vxAceEvidence(File root) {
        File file;
        File[] fileArrListFiles;
        File[] fileArrListFiles2 = root.listFiles();
        if (fileArrListFiles2 != null) {
            int length = fileArrListFiles2.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    file = null;
                    break;
                }
                file = fileArrListFiles2[i3];
                if (file.isDirectory() && StringsKt.equals(file.getName(), "data", true)) {
                    break;
                }
                i3++;
            }
            if (file != null && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isFile() && E.b.y(file2, file2, "rvdata2", true)) {
                        if (file2 != null) {
                            return kotlin.collections.unsigned.a.h(file.getName(), "/", file2.getName());
                        }
                    }
                }
                file2 = null;
                if (file2 != null) {
                    return kotlin.collections.unsigned.a.h(file.getName(), "/", file2.getName());
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0038  */
    public final Result detect(File root, String configuredLabel) {
        GameEngine gameEngine;
        Intrinsics.checkNotNullParameter(root, "root");
        Pair<String, GameEngine> pairRenpyScriptVersionEvidence = RenpyEngineDetectionKt.renpyScriptVersionEvidence(root);
        if (pairRenpyScriptVersionEvidence != null) {
            return new Result(pairRenpyScriptVersionEvidence.component2(), pairRenpyScriptVersionEvidence.component1());
        }
        String strRenpyFamilyEvidence = renpyFamilyEvidence(root);
        if (strRenpyFamilyEvidence != null) {
            GameEngine gameEngineFromConfigLabel = GameEngine.INSTANCE.fromConfigLabel(configuredLabel);
            if (gameEngineFromConfigLabel == null) {
                gameEngine = GameEngine.RENPY8;
            } else {
                gameEngine = (gameEngineFromConfigLabel == GameEngine.RENPY7 || gameEngineFromConfigLabel == GameEngine.RENPY8) ? gameEngineFromConfigLabel : null;
                if (gameEngine == null) {
                    gameEngine = GameEngine.RENPY8;
                }
            }
            return new Result(gameEngine, strRenpyFamilyEvidence);
        }
        for (Pair<GameEngine, Function1<File, String>> pair : SIGNALS) {
            GameEngine gameEngineComponent1 = pair.component1();
            String strInvoke = pair.component2().invoke(root);
            if (strInvoke != null) {
                return new Result(gameEngineComponent1, strInvoke);
            }
        }
        GameEngine gameEngineFromConfigLabel2 = GameEngine.INSTANCE.fromConfigLabel(configuredLabel);
        if (gameEngineFromConfigLabel2 != null) {
            if (NATIVE_RUNTIME_ENGINES.contains(gameEngineFromConfigLabel2) || gameEngineFromConfigLabel2 == GameEngine.BROWSE) {
                gameEngineFromConfigLabel2 = null;
            }
            if (gameEngineFromConfigLabel2 != null) {
                return new Result(gameEngineFromConfigLabel2, null);
            }
        }
        return new Result(GameEngine.HTML, null);
    }
}
