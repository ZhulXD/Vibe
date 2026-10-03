package com.minhub.gamehub.data;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u00102\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0015\u001a\u00020\r2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/minhub/gamehub/data/GamePluginScanner;", "", "<init>", "()V", "Ljava/io/File;", "rootDir", "Lkotlin/sequences/Sequence;", "pluginConfigCandidates$app_release", "(Ljava/io/File;)Lkotlin/sequences/Sequence;", "pluginConfigCandidates", "resolvePluginsFile", "(Ljava/io/File;)Ljava/io/File;", "", "", "scanEnabledPluginNames", "(Ljava/io/File;)Ljava/util/List;", "Lkotlin/Result;", "scanEnabledPluginNamesResult-IoAF18A", "(Ljava/io/File;)Ljava/lang/Object;", "scanEnabledPluginNamesResult", "names", "toPluginsJson", "(Ljava/util/List;)Ljava/lang/String;", "Li1/l;", "gson", "Li1/l;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGamePluginScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GamePluginScanner.kt\ncom/minhub/gamehub/data/GamePluginScanner\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,32:1\n183#2,2:33\n*S KotlinDebug\n*F\n+ 1 GamePluginScanner.kt\ncom/minhub/gamehub/data/GamePluginScanner\n*L\n15#1:33,2\n*E\n"})
public final class GamePluginScanner {
    public static final GamePluginScanner INSTANCE = new GamePluginScanner();
    private static final l gson = new l();

    private GamePluginScanner() {
    }

    public final Sequence<File> pluginConfigCandidates$app_release(File rootDir) {
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        String str = File.separator;
        return SequencesKt.sequenceOf((Object[]) new File[]{new File(rootDir, E.b.m("js", str, "plugins.js")), new File(rootDir, E.b.n("www", str, "js", str, "plugins.js"))});
    }

    public final File resolvePluginsFile(File rootDir) {
        File next;
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        Iterator<File> it = pluginConfigCandidates$app_release(rootDir).iterator();
        while (it.hasNext()) {
            next = it.next();
            File file = next;
            if (file.exists() && file.isFile()) {
                return next;
            }
        }
        next = null;
        return next;
    }

    public final List<String> scanEnabledPluginNames(File rootDir) {
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        Object objM4scanEnabledPluginNamesResultIoAF18A = m4scanEnabledPluginNamesResultIoAF18A(rootDir);
        List listEmptyList = CollectionsKt.emptyList();
        if (Result.m15isFailureimpl(objM4scanEnabledPluginNamesResultIoAF18A)) {
            objM4scanEnabledPluginNamesResultIoAF18A = listEmptyList;
        }
        return (List) objM4scanEnabledPluginNamesResultIoAF18A;
    }

    /* JADX INFO: renamed from: scanEnabledPluginNamesResult-IoAF18A, reason: not valid java name */
    public final Object m4scanEnabledPluginNamesResultIoAF18A(File rootDir) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        File fileResolvePluginsFile = resolvePluginsFile(rootDir);
        if (fileResolvePluginsFile == null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m9constructorimpl(CollectionsKt.emptyList());
        }
        try {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(RpgMakerPluginConfigStore.INSTANCE.parse(FilesKt__FileReadWriteKt.readText$default(fileResolvePluginsFile, null, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m16isSuccessimpl(objM9constructorimpl)) {
            objM9constructorimpl = RpgMakerPluginConfigStore.INSTANCE.enabledPluginNames((List) objM9constructorimpl);
        }
        return Result.m9constructorimpl(objM9constructorimpl);
    }

    public final String toPluginsJson(List<String> names) {
        Intrinsics.checkNotNullParameter(names, "names");
        String strG = gson.g(names);
        Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
        return strG;
    }
}
