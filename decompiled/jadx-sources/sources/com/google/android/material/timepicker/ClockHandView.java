package com.google.android.material.timepicker;

import R0.t;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class ClockHandView extends View {
    public final ValueAnimator b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f3644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3645e;
    public final float f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RectF f3646h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3647i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f3648j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3649k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public double f3650l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3651m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3652n;

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        this.b = new ValueAnimator();
        this.f3644d = new ArrayList();
        Paint paint = new Paint();
        this.g = paint;
        this.f3646h = new RectF();
        this.f3652n = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f23i, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        com.bumptech.glide.c.N(context, R.attr.motionDurationLong2, 200);
        com.bumptech.glide.c.O(context, R.attr.motionEasingEmphasizedInterpolator, B0.a.b);
        this.f3651m = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f3645e = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        Resources resources = getResources();
        this.f3647i = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final int a(int i3) {
        return i3 == 2 ? Math.round(this.f3651m * 0.66f) : this.f3651m;
    }

    public final void b(float f) {
        ValueAnimator valueAnimator = this.b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f3 = f % 360.0f;
        this.f3648j = f3;
        this.f3650l = Math.toRadians(f3 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float fA = a(this.f3652n);
        float fCos = (((float) Math.cos(this.f3650l)) * fA) + width;
        float fSin = (fA * ((float) Math.sin(this.f3650l))) + height;
        float f4 = this.f3645e;
        this.f3646h.set(fCos - f4, fSin - f4, fCos + f4, fSin + f4);
        ArrayList arrayList = this.f3644d;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ClockFaceView clockFaceView = (ClockFaceView) ((d) obj);
            if (Math.abs(clockFaceView.f3634G - f3) > 0.001f) {
                clockFaceView.f3634G = f3;
                clockFaceView.f();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int iA = a(this.f3652n);
        float f = width;
        float f3 = iA;
        float fCos = (((float) Math.cos(this.f3650l)) * f3) + f;
        float f4 = height;
        float fSin = (f3 * ((float) Math.sin(this.f3650l))) + f4;
        Paint paint = this.g;
        paint.setStrokeWidth(0.0f);
        int i3 = this.f3645e;
        canvas.drawCircle(fCos, fSin, i3, paint);
        double dSin = Math.sin(this.f3650l);
        double d3 = iA - i3;
        paint.setStrokeWidth(this.f3647i);
        canvas.drawLine(f, f4, width + ((int) (Math.cos(this.f3650l) * d3)), height + ((int) (d3 * dSin)), paint);
        canvas.drawCircle(f, f4, this.f, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        if (this.b.isRunning()) {
            return;
        }
        b(this.f3648j);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3;
        int actionMasked = motionEvent.getActionMasked();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        boolean z4 = false;
        if (actionMasked == 0) {
            this.f3649k = false;
            z2 = true;
            z3 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z3 = this.f3649k;
            if (this.f3643c) {
                this.f3652n = ((float) Math.hypot((double) (x2 - ((float) (getWidth() / 2))), (double) (y2 - ((float) (getHeight() / 2))))) <= ((float) a(2)) + t.b(getContext(), 12) ? 2 : 1;
            }
            z2 = false;
        } else {
            z3 = false;
            z2 = false;
        }
        boolean z5 = this.f3649k;
        int degrees = (int) Math.toDegrees(Math.atan2(y2 - (getHeight() / 2), x2 - (getWidth() / 2)));
        int i3 = degrees + 90;
        if (i3 < 0) {
            i3 = degrees + 450;
        }
        float f = i3;
        boolean z6 = this.f3648j != f;
        if (z2 && z6) {
            z4 = true;
        } else if (z6 || z3) {
            b(f);
            z4 = true;
        }
        this.f3649k = z5 | z4;
        return true;
    }
}
