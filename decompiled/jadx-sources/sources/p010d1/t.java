package p010d1;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends ArrayAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ColorStateList f3961a;
    public ColorStateList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f3962c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, Context context, int i3, String[] strArr) {
        super(context, i3, strArr);
        this.f3962c = uVar;
        a();
    }

    public final void a() {
        ColorStateList colorStateList;
        u uVar = this.f3962c;
        ColorStateList colorStateList2 = uVar.f3968m;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.b = colorStateList;
        if (uVar.f3967l != 0 && uVar.f3968m != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{ColorUtils.compositeColors(uVar.f3968m.getColorForState(iArr3, 0), uVar.f3967l), ColorUtils.compositeColors(uVar.f3968m.getColorForState(iArr2, 0), uVar.f3967l), uVar.f3967l});
        }
        this.f3961a = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i3, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            u uVar = this.f3962c;
            Drawable rippleDrawable = null;
            if (uVar.getText().toString().contentEquals(textView.getText()) && uVar.f3967l != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(uVar.f3967l);
                if (this.b != null) {
                    DrawableCompat.setTintList(colorDrawable, this.f3961a);
                    rippleDrawable = new RippleDrawable(this.b, colorDrawable, null);
                } else {
                    rippleDrawable = colorDrawable;
                }
            }
            ViewCompat.setBackground(textView, rippleDrawable);
        }
        return view2;
    }
}
