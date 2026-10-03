package C1;

import android.view.ScaleGestureDetector;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k2 extends ScaleGestureDetector.SimpleOnScaleGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l2 f636a;

    public k2(l2 l2Var) {
        this.f636a = l2Var;
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public final boolean onScale(ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        float scaleFactor = detector.getScaleFactor();
        l2 l2Var = this.f636a;
        float fE = l2Var.e();
        float fCoerceIn = RangesKt.coerceIn(scaleFactor, l2Var.f / fE, l2Var.g / fE);
        l2Var.f644e.postScale(fCoerceIn, fCoerceIn, detector.getFocusX(), detector.getFocusY());
        l2Var.d();
        l2Var.setImageMatrix(l2Var.f644e);
        return true;
    }
}
