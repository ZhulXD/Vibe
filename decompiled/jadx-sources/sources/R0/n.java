package R0;

import S.E;
import S.v;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends v {
    @Override // S.v
    public final void e(E e2) {
        View view = e2.b;
        if (view instanceof TextView) {
            e2.f1955a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // S.v
    public final void h(E e2) {
        View view = e2.b;
        if (view instanceof TextView) {
            e2.f1955a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // S.v
    public final Animator l(ViewGroup viewGroup, E e2, E e3) {
        if (e2 == null || e3 == null || !(e2.b instanceof TextView)) {
            return null;
        }
        View view = e3.b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        HashMap map = e2.f1955a;
        HashMap map2 = e3.f1955a;
        float fFloatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        float fFloatValue2 = map2.get("android:textscale:scale") != null ? ((Float) map2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new H0.c(3, textView));
        return valueAnimatorOfFloat;
    }
}
