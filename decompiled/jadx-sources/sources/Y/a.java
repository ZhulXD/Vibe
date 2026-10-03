package Y;

import A1.C0009b;
import android.util.Log;
import android.webkit.WebResourceResponse;
import com.minhub.gamehub.game.GameActivity;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2375a = 1;
    public final Object b;

    public a(a delegate) {
        Intrinsics.checkNotNullParameter("Cheat/", "prefix");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.b = delegate;
    }

    public final WebResourceResponse a(String path) {
        switch (this.f2375a) {
            case 0:
                try {
                    C0009b c0009b = (C0009b) this.b;
                    String strSubstring = (path.length() <= 1 || path.charAt(0) != '/') ? path : path.substring(1);
                    InputStream inputStreamOpen = ((GameActivity) c0009b.b).getAssets().open(strSubstring, 2);
                    if (strSubstring.endsWith(".svgz")) {
                        inputStreamOpen = new GZIPInputStream(inputStreamOpen);
                    }
                    return new WebResourceResponse(C0009b.n(path), null, inputStreamOpen);
                } catch (IOException e2) {
                    Log.e("WebViewAssetLoader", "Error opening asset path: " + path, e2);
                    return new WebResourceResponse(null, null, null);
                }
            default:
                Intrinsics.checkNotNullParameter(path, "path");
                return ((a) this.b).a("Cheat/" + StringsKt__StringsKt.removePrefix(path, (CharSequence) "/"));
        }
    }

    public a(GameActivity gameActivity) {
        this.b = new C0009b(gameActivity);
    }
}
