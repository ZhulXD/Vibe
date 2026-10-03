package C1;

import android.content.Intent;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0069h implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f607c;

    public /* synthetic */ C0069h(AddGameActivity addGameActivity, int i3) {
        this.b = i3;
        this.f607c = addGameActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i3 = this.b;
        AddGameActivity context = this.f607c;
        switch (i3) {
            case 0:
                OnlineCatalogItem item = (OnlineCatalogItem) obj;
                int i4 = AddGameActivity.f3740y;
                Intrinsics.checkNotNullParameter(item, "item");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(item, "item");
                Intent intent = new Intent(context, (Class<?>) OnlineGameDetailActivity.class);
                Intrinsics.checkNotNullParameter(item, "item");
                String strG = new p023i1.l().g(item);
                Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
                Intent intentPutExtra = intent.putExtra("extra_item_json", strG);
                Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
                context.startActivity(intentPutExtra);
                break;
            case 1:
                List jobs = (List) obj;
                int i5 = AddGameActivity.f3740y;
                Intrinsics.checkNotNullParameter(jobs, "jobs");
                context.f.post(new RunnableC0054c(jobs, context));
                break;
            default:
                context.f.post(new C(context, ((Integer) obj).intValue(), 0));
                break;
        }
        return Unit.INSTANCE;
    }
}
