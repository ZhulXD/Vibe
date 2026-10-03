package org.godotengine.godot.utils;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.io.file.FileAccessHandler;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u001a\"\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u001a\u001a\u00020\u0003H\u0007\u001a \u0010\u001a\u001a\u00020\u00162\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007\"\u001a\u0010\b\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f\"~\u0010\r\u001ar\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \u0010*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f0\u000f\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u00110\u0011 \u0010*8\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \u0010*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f0\u000f\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u00110\u0011\u0018\u00010\u00120\u000eX\u0082\u0004¢\u0006\u0002\n\u0000\"~\u0010\u0013\u001ar\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \u0010*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f0\u000f\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u00140\u0014 \u0010*8\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \u0010*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f0\u000f\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u00140\u0014\u0018\u00010\u00120\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"TAG", "", "useBenchmark", "", "getUseBenchmark", "()Z", "setUseBenchmark", "(Z)V", "benchmarkFile", "getBenchmarkFile", "()Ljava/lang/String;", "setBenchmarkFile", "(Ljava/lang/String;)V", "startBenchmarkFrom", "", "Lkotlin/Pair;", "kotlin.jvm.PlatformType", "", "", "benchmarkTracker", "", "beginBenchmarkMeasure", "", "scope", "label", "endBenchmarkMeasure", "dumpBenchmark", "fileAccessHandler", "Lorg/godotengine/godot/io/file/FileAccessHandler;", "filepath", "lib_templateRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "BenchmarkUtils")
@SourceDebugExtension({"SMAP\nBenchmarkUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BenchmarkUtils.kt\norg/godotengine/godot/utils/BenchmarkUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,140:1\n126#2:141\n153#2,3:142\n*S KotlinDebug\n*F\n+ 1 BenchmarkUtils.kt\norg/godotengine/godot/utils/BenchmarkUtils\n*L\n128#1:141\n128#1:142,3\n*E\n"})
public final class BenchmarkUtils {
    private static final String TAG = "GodotBenchmark";
    private static String benchmarkFile = "";
    private static boolean useBenchmark;
    private static final Map<Pair<String, String>, Long> startBenchmarkFrom = Collections.synchronizedMap(new LinkedHashMap());
    private static final Map<Pair<String, String>, Double> benchmarkTracker = Collections.synchronizedMap(new LinkedHashMap());

    public static final void beginBenchmarkMeasure(String scope, String label) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(label, "label");
    }

    @JvmOverloads
    public static final void dumpBenchmark() {
        dumpBenchmark$default(null, null, 3, null);
    }

    public static /* synthetic */ void dumpBenchmark$default(FileAccessHandler fileAccessHandler, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            fileAccessHandler = null;
        }
        if ((i3 & 2) != 0) {
            str = benchmarkFile;
        }
        dumpBenchmark(fileAccessHandler, str);
    }

    @JvmOverloads
    public static final void endBenchmarkMeasure(String scope, String label) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(label, "label");
        endBenchmarkMeasure$default(scope, label, false, 4, null);
    }

    public static /* synthetic */ void endBenchmarkMeasure$default(String str, String str2, boolean z2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        endBenchmarkMeasure(str, str2, z2);
    }

    public static final String getBenchmarkFile() {
        return benchmarkFile;
    }

    public static final boolean getUseBenchmark() {
        return useBenchmark;
    }

    public static final void setBenchmarkFile(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        benchmarkFile = str;
    }

    public static final void setUseBenchmark(boolean z2) {
        useBenchmark = z2;
    }

    @JvmOverloads
    public static final void dumpBenchmark(FileAccessHandler fileAccessHandler) {
        dumpBenchmark$default(fileAccessHandler, null, 2, null);
    }

    @JvmOverloads
    public static final void endBenchmarkMeasure(String scope, String label, boolean z2) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(label, "label");
    }

    @JvmOverloads
    public static final void dumpBenchmark(FileAccessHandler fileAccessHandler, String str) {
    }
}
