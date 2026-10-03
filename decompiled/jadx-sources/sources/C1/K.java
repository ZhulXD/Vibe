package C1;

import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.catalog.CatalogDownloadJob;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class K implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f455e;
    public final /* synthetic */ Object f;

    public /* synthetic */ K(int i3, Object obj, Object obj2, Object obj3, Object obj4) {
        this.b = i3;
        this.f453c = obj;
        this.f454d = obj2;
        this.f455e = obj3;
        this.f = obj4;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f453c;
                D1.b bVar = (D1.b) this.f454d;
                AddGameActivity addGameActivity = (AddGameActivity) this.f455e;
                File file = (File) this.f;
                if (atomicBoolean.compareAndSet(false, true)) {
                    bVar.b();
                    addGameActivity.r(bVar);
                    new Thread(new F(file, 2)).start();
                    addGameActivity.B(Q.b);
                }
                return Unit.INSTANCE;
            default:
                return CatalogDownloadQueue.enqueue$lambda$5((CatalogDownloadQueue) this.f453c, (CatalogDownloadJob) this.f454d, (OnlineCatalogItem) this.f455e, (String) this.f);
        }
    }
}
