package H0;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends WindowInsetsAnimationCompat.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f1084a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f1086d;

    public p(View view) {
        super(0);
        this.f1086d = new int[2];
        this.f1084a = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f1084a.setTranslationY(0.0f);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        View view = this.f1084a;
        int[] iArr = this.f1086d;
        view.getLocationOnScreen(iArr);
        this.b = iArr[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) it.next();
            if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                this.f1084a.setTranslationY(B0.a.c(this.f1085c, windowInsetsAnimationCompat.getInterpolatedFraction(), 0));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        View view = this.f1084a;
        int[] iArr = this.f1086d;
        view.getLocationOnScreen(iArr);
        int i3 = this.b - iArr[1];
        this.f1085c = i3;
        view.setTranslationY(i3);
        return boundsCompat;
    }
}
