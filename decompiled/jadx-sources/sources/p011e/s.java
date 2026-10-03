package p011e;

import A1.C0013d;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends ViewPropertyAnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4160a;
    public final /* synthetic */ Object b;

    public /* synthetic */ s(int i3, Object obj) {
        this.f4160a = i3;
        this.b = obj;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationEnd(View view) {
        switch (this.f4160a) {
            case 0:
                q qVar = (q) this.b;
                qVar.f4158c.f4051w.setAlpha(1.0f);
                qVar.f4158c.f4054z.setListener(null);
                qVar.f4158c.f4054z = null;
                break;
            case 1:
                B b = (B) this.b;
                b.f4051w.setAlpha(1.0f);
                b.f4054z.setListener(null);
                b.f4054z = null;
                break;
            default:
                C0013d c0013d = (C0013d) this.b;
                ((B) c0013d.f178d).f4051w.setVisibility(8);
                B b3 = (B) c0013d.f178d;
                PopupWindow popupWindow = b3.f4052x;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (b3.f4051w.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) ((B) c0013d.f178d).f4051w.getParent());
                }
                ((B) c0013d.f178d).f4051w.e();
                ((B) c0013d.f178d).f4054z.setListener(null);
                B b4 = (B) c0013d.f178d;
                b4.f4054z = null;
                ViewCompat.requestApplyInsets(b4.f4008B);
                break;
        }
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        switch (this.f4160a) {
            case 0:
                ((q) this.b).f4158c.f4051w.setVisibility(0);
                break;
            case 1:
                B b = (B) this.b;
                b.f4051w.setVisibility(0);
                if (b.f4051w.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) b.f4051w.getParent());
                }
                break;
            default:
                super.onAnimationStart(view);
                break;
        }
    }
}
