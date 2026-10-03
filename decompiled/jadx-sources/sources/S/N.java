package S;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class N extends M {
    @Override // p000a.a
    public final void K(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // S.M, p000a.a
    public final void L(View view, int i3) {
        view.setTransitionVisibility(i3);
    }

    @Override // S.M
    public final void P(View view, int i3, int i4, int i5, int i6) {
        view.setLeftTopRightBottom(i3, i4, i5, i6);
    }

    @Override // S.M
    public final void Q(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // S.M
    public final void R(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // p000a.a
    public final float l(View view) {
        return view.getTransitionAlpha();
    }
}
