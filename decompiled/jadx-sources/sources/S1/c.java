package S1;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import kotlin.jvm.internal.Intrinsics;
import p011e.AbstractActivityC0248j;
import p011e.C0246h;
import p011e.C0247i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends AbstractActivityC0248j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f2058d = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2059c;

    public c() {
        getSavedStateRegistry().registerSavedStateProvider("androidx:appcompat", new C0246h(this));
        addOnContextAvailableListener(new C0247i(this));
        this.f2059c = true;
    }

    @Override // p011e.AbstractActivityC0248j, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context base) {
        Intrinsics.checkNotNullParameter(base, "base");
        super.attachBaseContext(com.bumptech.glide.d.a(base, d.d(base)));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2 && this.f2059c) {
            View decorView = getWindow().getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
            if (Build.VERSION.SDK_INT < 30) {
                decorView.setSystemUiVisibility(4866);
                return;
            }
            WindowInsetsController windowInsetsController = decorView.getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.hide(WindowInsets.Type.navigationBars());
                windowInsetsController.setSystemBarsBehavior(2);
            }
        }
    }
}
