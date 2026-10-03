package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p059x.m;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class ClockFaceView extends e implements d {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final float[] f3628A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final int f3629B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f3630C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final int f3631D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final int f3632E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final String[] f3633F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public float f3634G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ColorStateList f3635H;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ClockHandView f3636t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Rect f3637u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final RectF f3638v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Rect f3639w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final SparseArray f3640x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final c f3641y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int[] f3642z;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3637u = new Rect();
        this.f3638v = new RectF();
        this.f3639w = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.f3640x = sparseArray;
        this.f3628A = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f22h, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListR = com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 1);
        this.f3635H = colorStateListR;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f3636t = clockHandView;
        this.f3629B = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListR.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListR.getDefaultColor());
        this.f3642z = new int[]{colorForState, colorForState, colorStateListR.getDefaultColor()};
        clockHandView.f3644d.add(this);
        int defaultColor = ContextCompat.getColorStateList(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListR2 = com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 0);
        setBackgroundColor(colorStateListR2 != null ? colorStateListR2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new b(this));
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f3641y = new c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.f3633F = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z2 = false;
        for (int i3 = 0; i3 < Math.max(this.f3633F.length, size); i3++) {
            TextView textView = (TextView) sparseArray.get(i3);
            if (i3 >= this.f3633F.length) {
                removeView(textView);
                sparseArray.remove(i3);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i3, textView);
                    addView(textView);
                }
                textView.setText(this.f3633F[i3]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i3));
                int i4 = (i3 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i4));
                z2 = i4 > 1 ? true : z2;
                ViewCompat.setAccessibilityDelegate(textView, this.f3641y);
                textView.setTextColor(this.f3635H);
            }
        }
        ClockHandView clockHandView2 = this.f3636t;
        if (clockHandView2.f3643c && !z2) {
            clockHandView2.f3652n = 1;
        }
        clockHandView2.f3643c = z2;
        clockHandView2.invalidate();
        this.f3630C = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f3631D = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f3632E = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }

    @Override // com.google.android.material.timepicker.e
    public final void e() {
        m mVar = new m();
        mVar.b(this);
        HashMap map = new HashMap();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i4 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i4 == null) {
                    i4 = 1;
                }
                if (!map.containsKey(i4)) {
                    map.put(i4, new ArrayList());
                }
                ((List) map.get(i4)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            int iRound = ((Integer) entry.getKey()).intValue() == 2 ? Math.round(this.f3657r * 0.66f) : this.f3657r;
            Iterator it = list.iterator();
            float size = 0.0f;
            while (it.hasNext()) {
                int id = ((View) it.next()).getId();
                Integer numValueOf = Integer.valueOf(id);
                HashMap map2 = mVar.f5985c;
                if (!map2.containsKey(numValueOf)) {
                    map2.put(Integer.valueOf(id), new p059x.h());
                }
                p059x.i iVar = ((p059x.h) map2.get(Integer.valueOf(id))).f5906d;
                iVar.f5961w = R.id.circle_center;
                iVar.f5962x = iRound;
                iVar.f5963y = size;
                size += 360.0f / list.size();
            }
        }
        mVar.a(this);
        setConstraintSet(null);
        requestLayout();
        int i5 = 0;
        while (true) {
            SparseArray sparseArray = this.f3640x;
            if (i5 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i5)).setVisibility(0);
            i5++;
        }
    }

    public final void f() {
        SparseArray sparseArray;
        Rect rect;
        RectF rectF;
        RectF rectF2 = this.f3636t.f3646h;
        float f = Float.MAX_VALUE;
        TextView textView = null;
        int i3 = 0;
        while (true) {
            sparseArray = this.f3640x;
            int size = sparseArray.size();
            rect = this.f3637u;
            rectF = this.f3638v;
            if (i3 >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i3);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float fHeight = rectF.height() * rectF.width();
                if (fHeight < f) {
                    textView = textView2;
                    f = fHeight;
                }
            }
            i3++;
        }
        for (int i4 = 0; i4 < sparseArray.size(); i4++) {
            TextView textView3 = (TextView) sparseArray.get(i4);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                Rect rect2 = this.f3639w;
                textView3.getLineBounds(0, rect2);
                rectF.inset(rect2.left, rect2.top);
                textView3.getPaint().setShader(RectF.intersects(rectF2, rectF) ? new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.f3642z, this.f3628A, Shader.TileMode.CLAMP) : null);
                textView3.invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f3633F.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        f();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.f3632E / Math.max(Math.max(this.f3630C / displayMetrics.heightPixels, this.f3631D / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }
}
