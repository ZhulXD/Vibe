package H0;

import P.C0165x;
import P.D;
import android.animation.ValueAnimator;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1057a;
    public final /* synthetic */ Object b;

    public /* synthetic */ c(int i3, Object obj) {
        this.f1057a = i3;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f1057a) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Y0.h hVar = ((BottomSheetBehavior) this.b).f3333i;
                if (hVar != null) {
                    hVar.m(fFloatValue);
                }
                break;
            case 1:
                int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                C0165x c0165x = (C0165x) this.b;
                c0165x.f1777c.setAlpha(iFloatValue);
                c0165x.f1778d.setAlpha(iFloatValue);
                c0165x.f1791s.invalidate();
                break;
            case 2:
                ((D) this.b).f1542m = valueAnimator.getAnimatedFraction();
                break;
            case 3:
                float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                TextView textView = (TextView) this.b;
                textView.setScaleX(fFloatValue2);
                textView.setScaleY(fFloatValue2);
                break;
            case 4:
                float fFloatValue3 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                p002a1.d dVar = (p002a1.d) this.b;
                ArrayList arrayList = dVar.f2546m;
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    p017g1.a aVar = (p017g1.a) obj;
                    aVar.f4353N = 1.2f;
                    aVar.f4351L = fFloatValue3;
                    aVar.f4352M = fFloatValue3;
                    aVar.f4354O = B0.a.b(0.0f, 1.0f, 0.19f, 1.0f, fFloatValue3);
                    aVar.invalidateSelf();
                }
                ViewCompat.postInvalidateOnAnimation(dVar);
                break;
            case 5:
                ((TabLayout) this.b).scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                break;
            default:
                ((TextInputLayout) this.b).f3620w0.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }
}
