package kotlin.coroutines;

import Q1.d;
import Y.b;
import Y.c;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebResourceResponse;
import com.minhub.gamehub.game.GameActivity;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import p064y1.RunnableC0386k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4998d;

    public /* synthetic */ a(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f4997c = obj;
        this.f4998d = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        WebResourceResponse webResourceResponseA;
        int i3 = this.b;
        Object obj3 = this.f4998d;
        Object obj4 = this.f4997c;
        switch (i3) {
            case 0:
                return CombinedContext.writeReplace$lambda$3((CoroutineContext[]) obj4, (Ref.IntRef) obj3, (Unit) obj, (CoroutineContext.Element) obj2);
            case 1:
                Y.a aVar = (Y.a) obj3;
                String requestUrl = (String) obj;
                String relativePath = (String) obj2;
                Intrinsics.checkNotNullParameter(requestUrl, "requestUrl");
                Intrinsics.checkNotNullParameter(relativePath, "relativePath");
                Uri uri = Uri.parse(requestUrl);
                ArrayList arrayList = ((c) obj4).f2378a;
                int size = arrayList.size();
                int i4 = 0;
                while (true) {
                    webResourceResponseA = null;
                    aVar = null;
                    aVar = null;
                    aVar = null;
                    Y.a aVar2 = null;
                    if (i4 < size) {
                        Object obj5 = arrayList.get(i4);
                        i4++;
                        b bVar = (b) obj5;
                        bVar.getClass();
                        String str = bVar.b;
                        if (!uri.getScheme().equals("http") && ((uri.getScheme().equals("http") || uri.getScheme().equals("https")) && uri.getAuthority().equals(bVar.f2376a) && uri.getPath().startsWith(str))) {
                            aVar2 = bVar.f2377c;
                        }
                        if (aVar2 != null && (webResourceResponseA = aVar2.a(uri.getPath().replaceFirst(str, ""))) != null) {
                        }
                    }
                }
                return webResourceResponseA == null ? aVar.a(relativePath) : webResourceResponseA;
            default:
                GameActivity gameActivity = (GameActivity) obj4;
                d dVar = (d) obj3;
                String str2 = (String) obj;
                String description = (String) obj2;
                int i5 = GameActivity.f3676L;
                Intrinsics.checkNotNullParameter(description, "description");
                if (!gameActivity.y(dVar)) {
                    return Unit.INSTANCE;
                }
                Log.e("MinHub-Launch", "WebView load error url=" + str2 + " description=" + description);
                gameActivity.runOnUiThread(new RunnableC0386k(gameActivity, dVar, 1));
                return Unit.INSTANCE;
        }
    }
}
