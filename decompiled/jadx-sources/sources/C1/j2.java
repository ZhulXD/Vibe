package C1;

import android.view.GestureDetector;
import android.view.MotionEvent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j2 extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l2 f626a;

    public j2(l2 l2Var) {
        this.f626a = l2Var;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent e2) {
        Intrinsics.checkNotNullParameter(e2, "e");
        l2 l2Var = this.f626a;
        float fE = l2Var.e();
        float f = l2Var.f;
        if (fE > 1.3f * f) {
            l2Var.f();
            return true;
        }
        float fE2 = (f * 2.5f) / l2Var.e();
        l2Var.f644e.postScale(fE2, fE2, e2.getX(), e2.getY());
        l2Var.d();
        l2Var.setImageMatrix(l2Var.f644e);
        return true;
    }
}
