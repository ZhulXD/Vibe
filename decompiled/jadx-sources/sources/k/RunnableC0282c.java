package k;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* JADX INFO: renamed from: k.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0282c implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f4813c;

    public /* synthetic */ RunnableC0282c(ActionBarOverlayLayout actionBarOverlayLayout, int i3) {
        this.b = i3;
        this.f4813c = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.f4813c;
                actionBarOverlayLayout.b();
                actionBarOverlayLayout.f2691x = actionBarOverlayLayout.f2674e.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f2692y);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f4813c;
                actionBarOverlayLayout2.b();
                actionBarOverlayLayout2.f2691x = actionBarOverlayLayout2.f2674e.animate().translationY(-actionBarOverlayLayout2.f2674e.getHeight()).setListener(actionBarOverlayLayout2.f2692y);
                break;
        }
    }
}
