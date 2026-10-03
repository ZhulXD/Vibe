package p024j;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import k.N0;
import k.P;
import k.T;

/* JADX INFO: renamed from: j.f, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0267f implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4514c;

    public /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC0267f(int i3, Object obj) {
        this.b = i3;
        this.f4514c = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.b) {
            case 0:
                ViewOnKeyListenerC0271j viewOnKeyListenerC0271j = (ViewOnKeyListenerC0271j) this.f4514c;
                ArrayList arrayList = viewOnKeyListenerC0271j.f4526i;
                if (viewOnKeyListenerC0271j.b() && arrayList.size() > 0) {
                    int i3 = 0;
                    if (!((C0270i) arrayList.get(0)).f4519a.f4705z) {
                        View view = viewOnKeyListenerC0271j.f4533p;
                        if (view != null && view.isShown()) {
                            int size = arrayList.size();
                            while (i3 < size) {
                                Object obj = arrayList.get(i3);
                                i3++;
                                ((C0270i) obj).f4519a.c();
                            }
                        } else {
                            viewOnKeyListenerC0271j.dismiss();
                        }
                    }
                    break;
                }
                break;
            case 1:
                H h2 = (H) this.f4514c;
                N0 n0 = h2.f4475i;
                if (h2.b() && !n0.f4705z) {
                    View view2 = h2.f4480n;
                    if (view2 != null && view2.isShown()) {
                        n0.c();
                    } else {
                        h2.dismiss();
                    }
                    break;
                }
                break;
            case 2:
                T t2 = (T) this.f4514c;
                if (!t2.getInternalPopup().b()) {
                    t2.g.m(t2.getTextDirection(), t2.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver = t2.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                }
                break;
            default:
                P p2 = (P) this.f4514c;
                T t3 = p2.f4727H;
                p2.getClass();
                if (t3.isAttachedToWindow() && t3.getGlobalVisibleRect(p2.f4725F)) {
                    p2.s();
                    p2.c();
                } else {
                    p2.dismiss();
                }
                break;
        }
    }
}
