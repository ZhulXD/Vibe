package p050t1;

import C1.RunnableC0078k;
import android.webkit.WebView;
import com.bumptech.glide.c;
import com.minhub.gamehub.data.Game;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p045r1.a;
import p045r1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements a {
    @Override // p045r1.a
    public final void a(Game game, WebView webView, Function1 onUnsupported) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(onUnsupported, "onUnsupported");
        b bVarL = c.L(game);
        if (b(bVarL)) {
            webView.post(new RunnableC0078k(18, webView, bVarL));
        } else {
            onUnsupported.invoke("RPG Maker cheat is not available for this engine");
        }
    }

    @Override // p045r1.a
    public final boolean b(b runtime) {
        Intrinsics.checkNotNullParameter(runtime, "runtime");
        return runtime == b.b || runtime == b.f5297c;
    }
}
