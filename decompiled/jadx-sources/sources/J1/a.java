package J1;

import A1.C0033n;
import C1.RunnableC0078k;
import android.content.SharedPreferences;
import android.webkit.JavascriptInterface;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.catalog.RemoteZipImporter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GameActivity f1216a;
    public final Lazy b;

    public a(GameActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f1216a = activity;
        this.b = LazyKt.lazy(new C0033n(7, this));
    }

    @JavascriptInterface
    public final String getStorage(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String string = ((SharedPreferences) this.b.getValue()).getString(key, "");
        return string == null ? "" : string;
    }

    @JavascriptInterface
    public final void openUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (RemoteZipImporter.INSTANCE.isSupportedRemoteUrl$app_release(url)) {
            this.f1216a.runOnUiThread(new RunnableC0078k(6, this, url));
        }
    }

    @JavascriptInterface
    public final void setStorage(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        ((SharedPreferences) this.b.getValue()).edit().putString(key, value).apply();
    }
}
