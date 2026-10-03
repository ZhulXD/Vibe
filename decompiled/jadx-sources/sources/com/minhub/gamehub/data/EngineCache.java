package com.minhub.gamehub.data;

import L1.d;
import android.os.Process;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 22\u00020\u0001:\u0003342B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010\u0005J!\u0010#\u001a\u00028\u0000\"\u0004\b\u0000\u0010 2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000!¢\u0006\u0004\b#\u0010$R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010%R\u0014\u0010'\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010)\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R \u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00100\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101¨\u00065"}, d2 = {"Lcom/minhub/gamehub/data/EngineCache;", "", "Ljava/io/File;", "store", "<init>", "(Ljava/io/File;)V", "", "", "Lcom/minhub/gamehub/data/EngineCache$Entry;", "loadEntries", "()Ljava/util/Map;", "root", "keyOf", "(Ljava/io/File;)Ljava/lang/String;", "key", "Lcom/minhub/gamehub/data/EngineDetector$Result;", "cachedHit", "(Ljava/lang/String;Ljava/io/File;)Lcom/minhub/gamehub/data/EngineDetector$Result;", "Lcom/minhub/gamehub/data/GameEngine;", "engine", "evidence", "", "stillProves", "(Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)Z", "", "persist", "()V", "writeStore", "configuredLabel", "resolve", "(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;", "forget", "T", "Lkotlin/Function0;", "body", "withBatch", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Ljava/io/File;", "Li1/l;", "gson", "Li1/l;", "lock", "Ljava/lang/Object;", "entries", "Ljava/util/Map;", "", "batchDepth", "I", "pendingWrite", "Z", "Companion", "Entry", "ProcessHandleId", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEngineCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineCache.kt\ncom/minhub/gamehub/data/EngineCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"})
public final class EngineCache {
    public static final String FILE_NAME = "engine-cache.json";
    private static final long MAX_BYTES = 1048576;
    private static final String SCRIPT_VERSION = "script_version.txt";
    private int batchDepth;
    private final Map<String, Entry> entries;
    private final l gson;
    private final Object lock;
    private boolean pendingWrite;
    private final File store;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/minhub/gamehub/data/EngineCache$Entry;", "", "engine", "", "evidence", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getEngine", "()Ljava/lang/String;", "getEvidence", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Entry {
        private final String engine;
        private final String evidence;

        public Entry(String str, String str2) {
            this.engine = str;
            this.evidence = str2;
        }

        public static /* synthetic */ Entry copy$default(Entry entry, String str, String str2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = entry.engine;
            }
            if ((i3 & 2) != 0) {
                str2 = entry.evidence;
            }
            return entry.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getEngine() {
            return this.engine;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getEvidence() {
            return this.evidence;
        }

        public final Entry copy(String engine, String evidence) {
            return new Entry(engine, evidence);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) other;
            return Intrinsics.areEqual(this.engine, entry.engine) && Intrinsics.areEqual(this.evidence, entry.evidence);
        }

        public final String getEngine() {
            return this.engine;
        }

        public final String getEvidence() {
            return this.evidence;
        }

        public int hashCode() {
            String str = this.engine;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.evidence;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return E.b.n("Entry(engine=", this.engine, ", evidence=", this.evidence, ")");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/minhub/gamehub/data/EngineCache$ProcessHandleId;", "", "<init>", "()V", "current", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nEngineCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineCache.kt\ncom/minhub/gamehub/data/EngineCache$ProcessHandleId\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"})
    public static final class ProcessHandleId {
        public static final ProcessHandleId INSTANCE = new ProcessHandleId();

        private ProcessHandleId() {
        }

        public final String current() {
            Object objM9constructorimpl;
            try {
                Result.Companion companion = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(String.valueOf(Process.myPid()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
                objM9constructorimpl = String.valueOf(Thread.currentThread().getId());
            }
            return (String) objM9constructorimpl;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GameEngine.values().length];
            try {
                iArr[GameEngine.GODOT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GameEngine.RENPY7.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GameEngine.RENPY8.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public EngineCache(File store) {
        Intrinsics.checkNotNullParameter(store, "store");
        this.store = store;
        this.gson = new l();
        this.lock = new Object();
        this.entries = loadEntries();
    }

    private final EngineDetector.Result cachedHit(String key, File root) {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        GameEngine gameEngine;
        EngineDetector.Result result;
        try {
            Result.Companion companion = Result.INSTANCE;
            Entry entry = this.entries.get(key);
            if (entry != null) {
                String engine = entry.getEngine();
                if (engine != null) {
                    try {
                        objM9constructorimpl2 = Result.m9constructorimpl(GameEngine.valueOf(engine));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                        objM9constructorimpl2 = null;
                    }
                    gameEngine = (GameEngine) objM9constructorimpl2;
                } else {
                    gameEngine = null;
                }
                String evidence = entry.getEvidence();
                if (gameEngine == null || evidence == null || !stillProves(root, gameEngine, evidence)) {
                    this.entries.remove(key);
                    persist();
                    result = null;
                } else {
                    result = new EngineDetector.Result(gameEngine, evidence);
                }
                objM9constructorimpl = Result.m9constructorimpl(result);
            } else {
                result = null;
                objM9constructorimpl = Result.m9constructorimpl(result);
            }
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th2));
        }
        return (EngineDetector.Result) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
    }

    private final String keyOf(File root) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(root.getCanonicalPath());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            objM9constructorimpl = root.getAbsolutePath();
        }
        Intrinsics.checkNotNullExpressionValue(objM9constructorimpl, "getOrElse(...)");
        return (String) objM9constructorimpl;
    }

    private final Map<String, Entry> loadEntries() {
        Object objM9constructorimpl;
        Map map;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!this.store.isFile() || this.store.length() > MAX_BYTES) {
                map = null;
            } else {
                Type type = new TypeToken<Map<String, Entry>>() { // from class: com.minhub.gamehub.data.EngineCache$loadEntries$loaded$1$type$1
                }.getType();
                l lVar = this.gson;
                String text = FilesKt.readText(this.store, Charsets.UTF_8);
                lVar.getClass();
                map = (Map) lVar.b(text, TypeToken.get(type));
            }
            objM9constructorimpl = Result.m9constructorimpl(map);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Map<String, Entry> map2 = (Map) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
        if (map2 == null) {
            return new LinkedHashMap();
        }
        CollectionsKt__MutableCollectionsKt.removeAll(map2.entrySet(), new d(13));
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean loadEntries$lambda$1(Map.Entry entry) {
        Intrinsics.checkNotNullParameter(entry, "<destruct>");
        Entry entry2 = (Entry) entry.getValue();
        return (entry2 != null ? entry2.getEngine() : null) == null || entry2.getEvidence() == null;
    }

    private final void persist() {
        if (this.batchDepth > 0) {
            this.pendingWrite = true;
        } else {
            writeStore();
        }
    }

    private final boolean stillProves(File root, GameEngine engine, String evidence) {
        if (!new File(root, evidence).isFile()) {
            return false;
        }
        int i3 = WhenMappings.$EnumSwitchMapping$0[engine.ordinal()];
        if (i3 != 1) {
            if ((i3 == 2 || i3 == 3) && StringsKt__StringsJVMKt.endsWith$default(evidence, SCRIPT_VERSION, false, 2, null)) {
                Pair<String, GameEngine> pairRenpyScriptVersionEvidence = RenpyEngineDetectionKt.renpyScriptVersionEvidence(root);
                if ((pairRenpyScriptVersionEvidence != null ? pairRenpyScriptVersionEvidence.getSecond() : null) != engine) {
                    return false;
                }
            }
        } else if (EngineDetector.detect$default(EngineDetector.INSTANCE, root, null, 2, null).getEngine() != GameEngine.GODOT) {
            return false;
        }
        return true;
    }

    private final void writeStore() {
        File file = new File(this.store.getParentFile(), this.store.getName() + "." + ProcessHandleId.INSTANCE.current() + ".tmp");
        try {
            Result.Companion companion = Result.INSTANCE;
            File parentFile = this.store.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            String strG = this.gson.g(this.entries);
            Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
            FilesKt.writeText(file, strG, Charsets.UTF_8);
            if (!file.renameTo(this.store)) {
                this.store.delete();
                file.renameTo(this.store);
            }
            Result.m9constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            try {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m9constructorimpl(ResultKt.createFailure(th));
            } finally {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    Result.m9constructorimpl(Boolean.valueOf(file.delete()));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    Result.m9constructorimpl(ResultKt.createFailure(th2));
                }
            }
        }
    }

    public final void forget(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        String strKeyOf = keyOf(root);
        synchronized (this.lock) {
            try {
                if (this.entries.remove(strKeyOf) != null) {
                    persist();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final EngineDetector.Result resolve(File root, String configuredLabel) {
        Intrinsics.checkNotNullParameter(root, "root");
        String strKeyOf = keyOf(root);
        synchronized (this.lock) {
            try {
                EngineDetector.Result resultCachedHit = cachedHit(strKeyOf, root);
                if (resultCachedHit != null) {
                    return resultCachedHit;
                }
                EngineDetector.Result resultDetect = EngineDetector.INSTANCE.detect(root, configuredLabel);
                String evidence = resultDetect.getEvidence();
                if (evidence != null) {
                    this.entries.put(strKeyOf, new Entry(resultDetect.getEngine().name(), evidence));
                    persist();
                } else if (this.entries.remove(strKeyOf) != null) {
                    persist();
                }
                return resultDetect;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <T> T withBatch(Function0<? extends T> body) {
        Intrinsics.checkNotNullParameter(body, "body");
        synchronized (this.lock) {
            this.batchDepth++;
        }
        try {
            T tInvoke = body.invoke();
            synchronized (this.lock) {
                try {
                    int i3 = this.batchDepth - 1;
                    this.batchDepth = i3;
                    if (i3 <= 0) {
                        this.batchDepth = 0;
                        if (this.pendingWrite) {
                            this.pendingWrite = false;
                            writeStore();
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return tInvoke;
        } catch (Throwable th2) {
            synchronized (this.lock) {
                try {
                    this.batchDepth--;
                    if (this.batchDepth <= 0) {
                        this.batchDepth = 0;
                        if (this.pendingWrite) {
                            this.pendingWrite = false;
                            writeStore();
                        }
                    }
                    Unit unit2 = Unit.INSTANCE;
                    throw th2;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }
}
