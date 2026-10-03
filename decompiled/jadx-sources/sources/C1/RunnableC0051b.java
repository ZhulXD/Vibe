package C1;

import android.os.Handler;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogPage;
import com.minhub.gamehub.hub.catalog.OnlineCatalogRepository;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.GodotActivity;
import org.godotengine.godot.nativeapi.GodotNativeBridge;

/* JADX INFO: renamed from: C1.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0051b implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f555e;

    public /* synthetic */ RunnableC0051b(FragmentActivity fragmentActivity, int i3, int i4, int i5) {
        this.b = i5;
        this.f553c = fragmentActivity;
        this.f554d = i3;
        this.f555e = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.b;
        int i4 = 1;
        int i5 = 0;
        int i6 = this.f554d;
        int i7 = this.f555e;
        FragmentActivity fragmentActivity = this.f553c;
        switch (i3) {
            case 0:
                AddGameActivity addGameActivity = (AddGameActivity) fragmentActivity;
                Handler handler = addGameActivity.f;
                int i8 = this.f554d;
                int i9 = AddGameActivity.f3740y;
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    OnlineCatalogPage onlineCatalogPageFetchPage$default = OnlineCatalogRepository.fetchPage$default((OnlineCatalogRepository) addGameActivity.f3743i.getValue(), i8, 0, false, 6, null);
                    Log.i("MinHub", "Catalog page=" + i8 + " OK in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms (" + onlineCatalogPageFetchPage$default.getGames().size() + " items, " + onlineCatalogPageFetchPage$default.getTotalPages() + " pages)");
                    handler.post(new RunnableC0078k(i5, addGameActivity, onlineCatalogPageFetchPage$default));
                } catch (Exception e2) {
                    Log.e("MinHub", "Catalog fetch failed", e2);
                    handler.post(new RunnableC0051b(addGameActivity, i8, i7, i4));
                    return;
                }
                break;
            case 1:
                AddGameActivity addGameActivity2 = (AddGameActivity) fragmentActivity;
                int i10 = AddGameActivity.f3740y;
                boolean zIsFinishing = addGameActivity2.isFinishing();
                boolean zIsDestroyed = addGameActivity2.isDestroyed();
                if (!zIsFinishing && !zIsDestroyed) {
                    boolean z2 = addGameActivity2.f3757w;
                    p058w1.a aVar = null;
                    if (i6 == 1 && !z2 && i7 == 1) {
                        E1 e1A = E1.a(addGameActivity2.f3751q, 0, false, null, 3);
                        addGameActivity2.f3751q = e1A;
                        addGameActivity2.f3750p = e1A;
                        addGameActivity2.u(i6, i7 + 1);
                    } else {
                        String string = addGameActivity2.getString(R.string.catalog_load_failed);
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        E1 e1A2 = E1.a(addGameActivity2.f3751q, 0, false, string, 3);
                        addGameActivity2.f3751q = e1A2;
                        addGameActivity2.f3750p = e1A2;
                        addGameActivity2.v(false);
                        p058w1.a aVar2 = addGameActivity2.f3741e;
                        if (aVar2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            aVar2 = null;
                        }
                        aVar2.f5622n.setVisibility(8);
                        p058w1.a aVar3 = addGameActivity2.f3741e;
                        if (aVar3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            aVar3 = null;
                        }
                        aVar3.f5624p.setVisibility(8);
                        p058w1.a aVar4 = addGameActivity2.f3741e;
                        if (aVar4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            aVar4 = null;
                        }
                        aVar4.f5625q.setVisibility(0);
                        p058w1.a aVar5 = addGameActivity2.f3741e;
                        if (aVar5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                        } else {
                            aVar = aVar5;
                        }
                        aVar.f5625q.setText(string);
                        addGameActivity2.z();
                    }
                    break;
                }
                break;
            default:
                GodotNativeBridge.nativeSetPiPModeAspectRatio$lambda$8((GodotActivity) fragmentActivity, i6, i7);
                break;
        }
    }
}
