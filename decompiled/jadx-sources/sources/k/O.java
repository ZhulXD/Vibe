package k;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import p024j.ViewTreeObserverOnGlobalLayoutListenerC0267f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class O implements PopupWindow.OnDismissListener {
    public final /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC0267f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ P f4722c;

    public O(P p2, ViewTreeObserverOnGlobalLayoutListenerC0267f viewTreeObserverOnGlobalLayoutListenerC0267f) {
        this.f4722c = p2;
        this.b = viewTreeObserverOnGlobalLayoutListenerC0267f;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f4722c.f4727H.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.b);
        }
    }
}
