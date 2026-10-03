package C1;

import android.util.Log;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.catalog.CatalogMemoryCache;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import java.util.List;

/* JADX INFO: renamed from: C1.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0060e implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f579c;

    public /* synthetic */ RunnableC0060e(AddGameActivity addGameActivity, int i3) {
        this.b = i3;
        this.f579c = addGameActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.b;
        int i4 = 1;
        AddGameActivity addGameActivity = this.f579c;
        switch (i3) {
            case 0:
                int i5 = AddGameActivity.f3740y;
                try {
                    List<OnlineCatalogItem> listT = addGameActivity.t();
                    CatalogMemoryCache catalogMemoryCache = CatalogMemoryCache.INSTANCE;
                    catalogMemoryCache.setFullCatalogItems(listT);
                    catalogMemoryCache.setHasHydratedFullCatalog(true);
                    addGameActivity.f.post(new RunnableC0054c(addGameActivity, listT, 1));
                } catch (Exception e2) {
                    Log.d("MinHub", "Preemptive hydration failed (non-critical): " + e2.getMessage());
                    return;
                }
                break;
            case 1:
                addGameActivity.B(Q.f489d);
                break;
            case 2:
                addGameActivity.D(40);
                break;
            case 3:
                addGameActivity.D(90);
                break;
            case 4:
                addGameActivity.D(100);
                addGameActivity.f.postDelayed(new RunnableC0060e(addGameActivity, 5), 300L);
                break;
            case 5:
                addGameActivity.B(Q.f489d);
                break;
            case 6:
                addGameActivity.D(100);
                addGameActivity.f.postDelayed(new RunnableC0060e(addGameActivity, 7), 300L);
                break;
            case 7:
                addGameActivity.B(Q.f489d);
                break;
            case 8:
                addGameActivity.D(100);
                addGameActivity.f.postDelayed(new RunnableC0060e(addGameActivity, i4), 300L);
                break;
            default:
                addGameActivity.B(Q.b);
                Toast.makeText(addGameActivity, addGameActivity.getString(R.string.import_zip_godot_unsupported), 1).show();
                break;
        }
    }
}
