package p055v1;

import C1.I1;
import F.b;
import android.content.Context;
import android.webkit.WebView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p011e.C0240b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements p045r1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5575a;

    public a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f5575a = context;
    }

    @Override // p045r1.a
    public final void a(Game game, WebView webView, Function1 onUnsupported) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(onUnsupported, "onUnsupported");
        Intrinsics.checkNotNullParameter("Scan Stores", "title");
        Intrinsics.checkNotNullParameter("Inspect localStorage size for this runtime", "description");
        Intrinsics.checkNotNullParameter("(function() {\n    return 'localStorage:' + localStorage.length;\n})();", "jsCode");
        List listListOf = CollectionsKt.listOf(new p047s1.a());
        Context context = this.f5575a;
        b bVar = new b(context, webView, listListOf);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            ((p047s1.a) it.next()).getClass();
            arrayList.add("Scan Stores\nInspect localStorage size for this runtime");
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        O0.b bVar2 = new O0.b(context, R.style.ThemeOverlay_MinHub_Dialog);
        String string = context.getString(R.string.cheat_title);
        C0240b c0240b = (C0240b) bVar2.f4145c;
        c0240b.f4098d = string;
        I1 i3 = new I1(2, bVar);
        c0240b.f4109q = strArr;
        c0240b.f4111s = i3;
        bVar2.g(context.getString(R.string.arrange_close), null);
        bVar2.e();
    }

    @Override // p045r1.a
    public final boolean b(p045r1.b runtime) {
        Intrinsics.checkNotNullParameter(runtime, "runtime");
        return runtime == p045r1.b.f;
    }
}
