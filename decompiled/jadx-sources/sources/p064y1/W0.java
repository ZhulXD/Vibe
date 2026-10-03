package p064y1;

import E.b;
import L1.a;
import L1.c;
import L1.e;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.bumptech.glide.d;
import com.minhub.gamehub.data.GameEngine;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class W0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6153a = new Regex("^godot(-\\d+(\\.\\d+)*)?$");
    public static final List b;

    static {
        EnumC0420v1 enumC0420v1 = EnumC0420v1.GODOT;
        String str = enumC0420v1.b;
        Regex regex = e.f1287c;
        List<a> builds = CollectionsKt.listOf((Object[]) new a[]{new a(str, p000a.a.v(4, 7, 1), "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.7.1/PluginGodot.zip", 5, "ac62ae392fe33f9a0fdd167c42366f058652a0f74587848928664f85e6306725", "f42f4a14619eb2e9a0d5fbcb08e47af8e0bc0ff229cddcfddecbaa3a92e02f85", "godot:4.7.1", enumC0420v1.b), new a(enumC0420v1.b, p000a.a.v(4, 6, 0), "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.6/PluginGodot.zip", 1, "b12320071439b72c73b5a40ae81ce6bd6b747823d329ccefe7f34095210121d0", "6fd6e077e4aa15a9e1ea2730a835ebae9f9bc3a2bc00b7d3fc0539264e7de9ab", "godot:4.6.0", null, 128), new a(enumC0420v1.b, p000a.a.v(4, 2, 2), "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.2.2/PluginGodot.zip", 1, "6c63910350bc2447b300f2c0a3f801321cb6ef9d8a0387585ec053df23838333", "a0cee2ca33d8eb8dbed5e82fe2018d4706b1cb81f0dad1d5a786f47cf84f013f", "godot:4.2.2", null, 128)});
        Intrinsics.checkNotNullParameter(builds, "builds");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(builds, 10));
        Iterator it = builds.iterator();
        while (it.hasNext()) {
            arrayList.add(((a) it.next()).a());
        }
        if (CollectionsKt.toSet(arrayList).size() != builds.size()) {
            throw new IllegalArgumentException("Duplicate runtime install key");
        }
        for (a aVar : builds) {
            String str2 = aVar.f1277a;
            String str3 = aVar.f1278c;
            if (!Intrinsics.areEqual(str2, EnumC0420v1.GODOT.b)) {
                throw new IllegalArgumentException("Catalog engine mismatch");
            }
            if (!StringsKt.N(str3, "https://") || new URI(str3).getHost() == null) {
                throw new IllegalArgumentException("Catalog URL must be HTTPS");
            }
            if (aVar.f1279d <= 0) {
                throw new IllegalArgumentException("Artifact version must be positive");
            }
            if (new Regex("[0-9a-fA-F]{64}").matches(aVar.f1280e)) {
                if (new Regex("[0-9a-fA-F]{64}").matches(aVar.f)) {
                    if (!Intrinsics.areEqual(aVar.g, aVar.f1277a + ":" + aVar.b)) {
                        throw new IllegalArgumentException("Catalog identity mismatch");
                    }
                }
            }
            throw new IllegalArgumentException("Invalid catalog hash");
        }
        b = builds;
    }

    public static String a(a build) {
        Intrinsics.checkNotNullParameter(build, "build");
        return "Godot " + build.b + " Runtime";
    }

    public static e b(File dir) {
        File file;
        P0 p0C;
        File[] fileArrListFiles;
        File file2;
        File file3;
        Intrinsics.checkNotNullParameter(dir, "gamePath");
        Intrinsics.checkNotNullParameter(dir, "dir");
        if (!dir.exists() || !dir.isDirectory() || (fileArrListFiles = dir.listFiles()) == null) {
            file = null;
            break;
        }
        int length = fileArrListFiles.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                file = null;
                break;
            }
            file = fileArrListFiles[i3];
            if (file.isFile() && b.y(file, file, "pck", true)) {
                break;
            }
            i3++;
        }
        if (file == null) {
            int length2 = fileArrListFiles.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length2) {
                    file2 = null;
                    break;
                }
                file2 = fileArrListFiles[i4];
                if (file2.isFile() && b.y(file2, file2, "apk", true)) {
                    break;
                }
                i4++;
            }
            if (file2 == null) {
                ArrayList arrayList = new ArrayList();
                for (File file4 : fileArrListFiles) {
                    if (file4.isDirectory()) {
                        arrayList.add(file4);
                    }
                }
                Iterator it = CollectionsKt.sortedWith(arrayList, new M(2)).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        file = null;
                        break;
                    }
                    File[] fileArrListFiles2 = ((File) it.next()).listFiles();
                    if (fileArrListFiles2 == null) {
                        file3 = null;
                        break;
                        break;
                    }
                    int length3 = fileArrListFiles2.length;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length3) {
                            file3 = null;
                            break;
                        }
                        file3 = fileArrListFiles2[i5];
                        if (file3.isFile() && (b.y(file3, file3, "pck", true) || StringsKt.equals(FilesKt.getExtension(file3), "apk", true))) {
                            break;
                        }
                        i5++;
                    }
                    if (file3 != null) {
                        file = file3;
                        break;
                    }
                }
            } else {
                file = file2;
            }
        }
        if (file == null || (p0C = L1.C(file)) == null) {
            return null;
        }
        Regex regex = e.f1287c;
        return p000a.a.v(p0C.f6115a, p0C.b, p0C.f6116c);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003c  */
    public static c c(GameEngine engine, String str) {
        e eVar;
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine == GameEngine.GODOT) {
            if (str == null) {
                eVar = null;
            } else {
                if (StringsKt.isBlank(str)) {
                    str = null;
                }
                if (str != null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(b(new File(str)));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl)) {
                        objM9constructorimpl = null;
                    }
                    eVar = (e) objM9constructorimpl;
                } else {
                    eVar = null;
                }
            }
            c cVarW = d.W(b, eVar);
            Object obj = eVar;
            if (cVarW != null) {
                if (eVar == null) {
                    obj = EnvironmentCompat.MEDIA_UNKNOWN;
                }
                a aVar = cVarW.f1286a;
                Log.i("GodotRuntimes", "pack " + obj + " -> Godot " + aVar.b + " (" + cVarW.b + ", folder " + aVar.a() + ")");
                return cVarW;
            }
        }
        return null;
    }
}
