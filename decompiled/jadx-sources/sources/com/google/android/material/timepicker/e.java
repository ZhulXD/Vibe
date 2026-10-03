package com.google.android.material.timepicker;

import C1.RunnableC0068g1;
import Y0.j;
import Y0.l;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e extends ConstraintLayout {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final RunnableC0068g1 f3656q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3657r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Y0.h f3658s;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        Y0.h hVar = new Y0.h();
        this.f3658s = hVar;
        j jVar = new j(0.5f);
        l lVarE = hVar.b.f2383a.e();
        lVarE.f2423e = jVar;
        lVarE.f = jVar;
        lVarE.g = jVar;
        lVarE.f2424h = jVar;
        hVar.setShapeAppearanceModel(lVarE.a());
        this.f3658s.l(ColorStateList.valueOf(-1));
        ViewCompat.setBackground(this, this.f3658s);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f6C, R.attr.materialClockStyle, 0);
        this.f3657r = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f3656q = new RunnableC0068g1(10, this);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i3, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC0068g1 runnableC0068g1 = this.f3656q;
            handler.removeCallbacks(runnableC0068g1);
            handler.post(runnableC0068g1);
        }
    }

    public abstract void e();

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        e();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC0068g1 runnableC0068g1 = this.f3656q;
            handler.removeCallbacks(runnableC0068g1);
            handler.post(runnableC0068g1);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i3) {
        this.f3658s.l(ColorStateList.valueOf(i3));
    }
}
