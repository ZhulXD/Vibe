package p011e;

import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ B f4158c;

    public /* synthetic */ q(B b, int i3) {
        this.b = i3;
        this.f4158c = b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        switch (this.b) {
            case 0:
                B b = this.f4158c;
                if ((b.f4031a0 & 1) != 0) {
                    b.v(0);
                }
                if ((b.f4031a0 & 4096) != 0) {
                    b.v(108);
                }
                b.Z = false;
                b.f4031a0 = 0;
                break;
            default:
                B b3 = this.f4158c;
                b3.f4052x.showAtLocation(b3.f4051w, 55, 0, 0);
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = b3.f4054z;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.cancel();
                }
                if (b3.f4007A && (viewGroup = b3.f4008B) != null && viewGroup.isLaidOut()) {
                    b3.f4051w.setAlpha(0.0f);
                    ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(b3.f4051w).alpha(1.0f);
                    b3.f4054z = viewPropertyAnimatorCompatAlpha;
                    viewPropertyAnimatorCompatAlpha.setListener(new s(0, this));
                } else {
                    b3.f4051w.setAlpha(1.0f);
                    b3.f4051w.setVisibility(0);
                }
                break;
        }
    }
}
