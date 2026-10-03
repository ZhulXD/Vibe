package p002a1;

import android.graphics.Rect;
import android.os.Bundle;
import android.widget.SeekBar;
import androidx.core.math.MathUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.slider.Slider;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends D.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Slider f2499n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f2500o;

    public b(Slider slider) {
        super(slider);
        this.f2500o = new Rect();
        this.f2499n = slider;
    }

    @Override // D.b
    public final int e(float f, float f3) {
        int i3 = 0;
        while (true) {
            Slider slider = this.f2499n;
            if (i3 >= slider.getValues().size()) {
                return -1;
            }
            Rect rect = this.f2500o;
            slider.u(i3, rect);
            if (rect.contains((int) f, (int) f3)) {
                return i3;
            }
            i3++;
        }
    }

    @Override // D.b
    public final void f(ArrayList arrayList) {
        for (int i3 = 0; i3 < this.f2499n.getValues().size(); i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
    }

    @Override // D.b
    public final boolean j(int i3, int i4, Bundle bundle) {
        Slider slider = this.f2499n;
        if (!slider.isEnabled()) {
            return false;
        }
        if (i4 != 4096 && i4 != 8192) {
            if (i4 != 16908349 || bundle == null || !bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE) || !slider.s(i3, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                return false;
            }
            slider.v();
            slider.postInvalidate();
            g(i3);
            return true;
        }
        float fRound = slider.f2525W;
        if (fRound == 0.0f) {
            fRound = 1.0f;
        }
        float f = (slider.f2521S - slider.f2520R) / fRound;
        float f3 = 20;
        if (f > f3) {
            fRound *= Math.round(f / f3);
        }
        if (i4 == 8192) {
            fRound = -fRound;
        }
        if (slider.k()) {
            fRound = -fRound;
        }
        if (!slider.s(i3, MathUtils.clamp(slider.getValues().get(i3).floatValue() + fRound, slider.getValueFrom(), slider.getValueTo()))) {
            return false;
        }
        slider.v();
        slider.postInvalidate();
        g(i3);
        return true;
    }

    @Override // D.b
    public final void l(int i3, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        String string;
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
        Slider slider = this.f2499n;
        List<Float> values = slider.getValues();
        Float f = values.get(i3);
        float fFloatValue = f.floatValue();
        float valueFrom = slider.getValueFrom();
        float valueTo = slider.getValueTo();
        if (slider.isEnabled()) {
            if (fFloatValue > valueFrom) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
            if (fFloatValue < valueTo) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
        }
        accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
        accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
        StringBuilder sb = new StringBuilder();
        if (slider.getContentDescription() != null) {
            sb.append(slider.getContentDescription());
            sb.append(",");
        }
        String str = String.format(((float) ((int) fFloatValue)) == fFloatValue ? "%.0f" : "%.2f", f);
        String string2 = slider.getContext().getString(R.string.material_slider_value);
        if (values.size() > 1) {
            if (i3 == slider.getValues().size() - 1) {
                string = slider.getContext().getString(R.string.material_slider_range_end);
            } else {
                string = i3 == 0 ? slider.getContext().getString(R.string.material_slider_range_start) : "";
            }
            string2 = string;
        }
        Locale locale = Locale.US;
        sb.append(string2 + ", " + str);
        accessibilityNodeInfoCompat.setContentDescription(sb.toString());
        Rect rect = this.f2500o;
        slider.u(i3, rect);
        accessibilityNodeInfoCompat.setBoundsInParent(rect);
    }
}
