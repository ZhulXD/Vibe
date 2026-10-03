package C1;

import android.util.Log;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.m, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0084m implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Z f651d;

    public /* synthetic */ RunnableC0084m(AddGameActivity addGameActivity, Z z2, int i3) {
        this.b = i3;
        this.f650c = addGameActivity;
        this.f651d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.b;
        int i4 = 1;
        Z z2 = this.f651d;
        AddGameActivity addGameActivity = this.f650c;
        switch (i3) {
            case 0:
                int i5 = AddGameActivity.f3740y;
                try {
                    addGameActivity.f.post(new RunnableC0054c(addGameActivity, addGameActivity.t(), 2));
                } catch (Exception e2) {
                    Log.e("MinHub", "Full catalog fetch failed", e2);
                    addGameActivity.f.post(new RunnableC0084m(addGameActivity, z2, i4));
                    return;
                }
                break;
            default:
                int i6 = AddGameActivity.f3740y;
                boolean zIsFinishing = addGameActivity.isFinishing();
                boolean zIsDestroyed = addGameActivity.isDestroyed();
                if (!zIsFinishing && !zIsDestroyed) {
                    addGameActivity.f3755u = z2;
                    p058w1.a aVar = addGameActivity.f3741e;
                    if (aVar == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                        aVar = null;
                    }
                    aVar.f5622n.setVisibility(8);
                    addGameActivity.m(true);
                    addGameActivity.w();
                    Toast.makeText(addGameActivity, addGameActivity.getString(R.string.catalog_load_failed), 1).show();
                    break;
                }
                break;
        }
    }
}
