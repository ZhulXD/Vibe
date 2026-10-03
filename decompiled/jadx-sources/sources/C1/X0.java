package C1;

import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class X0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p023i1.l f526a = new p023i1.l();

    public static final boolean a(GameEngine engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        return engine == GameEngine.MV || engine == GameEngine.MZ;
    }

    public static final String b(OnlineTranslationPackage pkg) {
        Intrinsics.checkNotNullParameter(pkg, "pkg");
        if (StringsKt.isBlank(pkg.getCode())) {
            return pkg.getLabel();
        }
        return pkg.getLabel() + " (" + pkg.getCode() + ")";
    }
}
