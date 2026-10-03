package com.google.android.material.bottomnavigation;

import A0.a;
import G0.b;
import G0.c;
import G0.d;
import R0.p;
import R0.t;
import T0.l;
import Y0.e;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.minhub.gamehub.R;
import k.Z0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationView extends l {
    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Z0 z0F = p.f(getContext(), attributeSet, a.b, R.attr.bottomNavigationStyle, R.style.Widget_Design_BottomNavigationView, new int[0]);
        TypedArray typedArray = z0F.b;
        setItemHorizontalTranslationEnabled(typedArray.getBoolean(2, true));
        if (typedArray.hasValue(0)) {
            setMinimumHeight(typedArray.getDimensionPixelSize(0, 0));
        }
        typedArray.getBoolean(1, true);
        z0F.f();
        t.a(this, new e(6));
    }

    @Override // T0.l
    public int getMaxItemCount() {
        return 5;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i4) != 1073741824 && suggestedMinimumHeight > 0) {
            i4 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i4), getPaddingBottom() + getPaddingTop() + suggestedMinimumHeight), 1073741824);
        }
        super.onMeasure(i3, i4);
    }

    public void setItemHorizontalTranslationEnabled(boolean z2) {
        b bVar = (b) getMenuView();
        if (bVar.f990M != z2) {
            bVar.setItemHorizontalTranslationEnabled(z2);
            getPresenter().g(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(c cVar) {
        setOnItemReselectedListener(cVar);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(d dVar) {
        setOnItemSelectedListener(dVar);
    }
}
