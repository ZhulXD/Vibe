package u1;

import C1.A1;
import android.app.Activity;
import android.webkit.WebView;
import com.minhub.gamehub.data.Game;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p064y1.C0415u;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements p045r1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f5423a;
    public final C0415u b;

    public a(Activity activity, C0415u onClosed) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onClosed, "onClosed");
        this.f5423a = activity;
        this.b = onClosed;
    }

    @Override // p045r1.a
    public final void a(Game game, WebView webView, Function1 onUnsupported) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(onUnsupported, "onUnsupported");
        webView.post(new A1(webView, this, game, 10));
    }

    @Override // p045r1.a
    public final boolean b(p045r1.b runtime) {
        Intrinsics.checkNotNullParameter(runtime, "runtime");
        return runtime == p045r1.b.f5298d;
    }
}
