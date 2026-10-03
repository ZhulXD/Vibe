package C1;

import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.catalog.CatalogDownloadJob;
import com.minhub.gamehub.hub.catalog.CatalogDownloadState;
import com.minhub.gamehub.hub.catalog.CatalogMemoryCache;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0054c implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ List f564d;

    public /* synthetic */ RunnableC0054c(AddGameActivity addGameActivity, List list, int i3) {
        this.b = i3;
        this.f563c = addGameActivity;
        this.f564d = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CatalogDownloadJob catalogDownloadJob;
        int i3 = this.b;
        p058w1.a aVar = null;
        boolean z2 = true;
        List<OnlineCatalogItem> list = this.f564d;
        AddGameActivity addGameActivity = this.f563c;
        switch (i3) {
            case 0:
                int i4 = AddGameActivity.f3740y;
                if (list == null || !list.isEmpty()) {
                    Iterator it = list.iterator();
                    do {
                        if (it.hasNext()) {
                            catalogDownloadJob = (CatalogDownloadJob) it.next();
                            if (catalogDownloadJob.getState() != CatalogDownloadState.QUEUED) {
                            }
                        } else {
                            z2 = false;
                        }
                    } while (catalogDownloadJob.getState() != CatalogDownloadState.RUNNING);
                } else {
                    z2 = false;
                }
                p058w1.a aVar2 = addGameActivity.f3741e;
                if (aVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    aVar = aVar2;
                }
                aVar.f5629u.setVisibility(z2 ? 0 : 8);
                break;
            case 1:
                int i5 = AddGameActivity.f3740y;
                boolean zIsFinishing = addGameActivity.isFinishing();
                boolean zIsDestroyed = addGameActivity.isDestroyed();
                if (!zIsFinishing && !zIsDestroyed) {
                    addGameActivity.f3753s = list;
                    addGameActivity.f3758x = true;
                    if (U.c(addGameActivity.f3755u)) {
                        addGameActivity.m(true);
                        addGameActivity.w();
                    }
                    break;
                }
                break;
            default:
                int i6 = AddGameActivity.f3740y;
                boolean zIsFinishing2 = addGameActivity.isFinishing();
                boolean zIsDestroyed2 = addGameActivity.isDestroyed();
                if (!zIsFinishing2 && !zIsDestroyed2) {
                    CatalogMemoryCache catalogMemoryCache = CatalogMemoryCache.INSTANCE;
                    catalogMemoryCache.setFullCatalogItems(list);
                    catalogMemoryCache.setHasHydratedFullCatalog(true);
                    addGameActivity.f3753s = list;
                    addGameActivity.f3758x = true;
                    p058w1.a aVar3 = addGameActivity.f3741e;
                    if (aVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                    } else {
                        aVar = aVar3;
                    }
                    aVar.f5622n.setVisibility(8);
                    addGameActivity.m(true);
                    addGameActivity.w();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0054c(List list, AddGameActivity addGameActivity) {
        this.b = 0;
        this.f564d = list;
        this.f563c = addGameActivity;
    }
}
