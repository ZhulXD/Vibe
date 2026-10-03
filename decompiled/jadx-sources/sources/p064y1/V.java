package p064y1;

import com.minhub.gamehub.data.GameEngine;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f6144a;
    public final GameEngine b;

    public V(File rootDir, GameEngine engine) {
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.f6144a = rootDir;
        this.b = engine;
    }

    public final boolean a(List list, String str) {
        if (list.isEmpty()) {
            return false;
        }
        File file = new File(this.f6144a, str);
        if (!file.isDirectory()) {
            return false;
        }
        for (File file2 : FilesKt.walkTopDown(file)) {
            if (file2.isFile() && !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    String name = file2.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    Locale ROOT = Locale.ROOT;
                    Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
                    String lowerCase = name.toLowerCase(ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, str2, false, 2, null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
