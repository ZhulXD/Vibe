package p010d1;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import p024j.H;
import p024j.ViewOnKeyListenerC0271j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements View.OnAttachStateChangeListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3904c;

    public /* synthetic */ l(int i3, Object obj) {
        this.b = i3;
        this.f3904c = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.b) {
            case 0:
                n nVar = (n) this.f3904c;
                AccessibilityManager accessibilityManager = nVar.f3924u;
                if (nVar.f3925v != null && accessibilityManager != null && ViewCompat.isAttachedToWindow(nVar)) {
                    AccessibilityManagerCompat.addTouchExplorationStateChangeListener(accessibilityManager, nVar.f3925v);
                    break;
                }
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        switch (this.b) {
            case 0:
                n nVar = (n) this.f3904c;
                AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = nVar.f3925v;
                if (touchExplorationStateChangeListener != null && (accessibilityManager = nVar.f3924u) != null) {
                    AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
                    break;
                }
                break;
            case 1:
                ViewOnKeyListenerC0271j viewOnKeyListenerC0271j = (ViewOnKeyListenerC0271j) this.f3904c;
                ViewTreeObserver viewTreeObserver = viewOnKeyListenerC0271j.f4542y;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        viewOnKeyListenerC0271j.f4542y = view.getViewTreeObserver();
                    }
                    viewOnKeyListenerC0271j.f4542y.removeGlobalOnLayoutListener(viewOnKeyListenerC0271j.f4527j);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            default:
                H h2 = (H) this.f3904c;
                ViewTreeObserver viewTreeObserver2 = h2.f4482p;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        h2.f4482p = view.getViewTreeObserver();
                    }
                    h2.f4482p.removeGlobalOnLayoutListener(h2.f4476j);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}
