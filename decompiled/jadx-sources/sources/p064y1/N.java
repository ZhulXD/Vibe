package p064y1;

import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class N extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage m2) {
        Intrinsics.checkNotNullParameter(m2, "m");
        Log.i("MinHub-JS", m2.message() + " @ " + m2.sourceId() + ":" + m2.lineNumber());
        return true;
    }
}
