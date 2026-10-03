package p002a1;

import A1.C0009b;
import E.b;
import E1.y;
import R0.m;
import R0.p;
import R0.t;
import T0.a;
import Y0.h;
import Y0.l;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.c;
import com.google.android.material.slider.Slider;
import com.minhub.gamehub.R;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d extends View {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final int f2504A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f2505B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f2506C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f2507D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f2508E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f2509F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f2510G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f2511H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f2512I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f2513J;
    public int K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f2514L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f2515M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f2516N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public float f2517O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public MotionEvent f2518P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f2519Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public float f2520R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public float f2521S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ArrayList f2522T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f2523U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f2524V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public float f2525W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float[] f2526a0;
    public final Paint b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f2527b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f2528c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2529c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Paint f2530d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f2531d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Paint f2532e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f2533e0;
    public final Paint f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f2534f0;
    public final Paint g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f2535g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f2536h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public ColorStateList f2537h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f2538i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public ColorStateList f2539i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AccessibilityManager f2540j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ColorStateList f2541j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a f2542k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ColorStateList f2543k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f2544l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public ColorStateList f2545l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f2546m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final Path f2547m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList f2548n;
    public final RectF n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ArrayList f2549o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final RectF f2550o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2551p;
    public final h p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ValueAnimator f2552q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public Drawable f2553q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ValueAnimator f2554r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public List f2555r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f2556s;
    public float s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f2557t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f2558t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f2559u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final a f2560u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f2561v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f2562w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f2563x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f2564y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f2565z;

    /* JADX WARN: Type inference failed for: r1v5, types: [a1.a] */
    public d(Context context, AttributeSet attributeSet) {
        super(p015f1.a.a(context, attributeSet, R.attr.sliderStyle, R.style.Widget_MaterialComponents_Slider), attributeSet, R.attr.sliderStyle);
        this.f2546m = new ArrayList();
        this.f2548n = new ArrayList();
        this.f2549o = new ArrayList();
        this.f2551p = false;
        this.f2513J = -1;
        this.K = -1;
        this.f2519Q = false;
        this.f2522T = new ArrayList();
        this.f2523U = -1;
        this.f2524V = -1;
        this.f2525W = 0.0f;
        this.f2527b0 = true;
        this.f2534f0 = false;
        this.f2547m0 = new Path();
        this.n0 = new RectF();
        this.f2550o0 = new RectF();
        h hVar = new h();
        this.p0 = hVar;
        this.f2555r0 = Collections.EMPTY_LIST;
        this.f2558t0 = 0;
        final Slider slider = (Slider) this;
        this.f2560u0 = new ViewTreeObserver.OnScrollChangedListener() { // from class: a1.a
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                slider.w();
            }
        };
        Context context2 = getContext();
        this.b = new Paint();
        this.f2528c = new Paint();
        Paint paint = new Paint(1);
        this.f2530d = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.f2532e = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.f = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.g = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.f2536h = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        Resources resources = context2.getResources();
        this.f2504A = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.f2557t = dimensionPixelOffset;
        this.f2508E = dimensionPixelOffset;
        this.f2559u = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.f2561v = resources.getDimensionPixelSize(R.dimen.mtrl_slider_track_height);
        this.f2562w = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.f2563x = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.f2564y = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_min_spacing);
        this.f2516N = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
        p.a(context2, attributeSet, R.attr.sliderStyle, R.style.Widget_MaterialComponents_Slider);
        int[] iArr = A0.a.f10G;
        p.b(context2, attributeSet, iArr, R.attr.sliderStyle, R.style.Widget_MaterialComponents_Slider, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.sliderStyle, R.style.Widget_MaterialComponents_Slider);
        this.f2544l = typedArrayObtainStyledAttributes.getResourceId(8, R.style.Widget_MaterialComponents_Tooltip);
        this.f2520R = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
        this.f2521S = typedArrayObtainStyledAttributes.getFloat(4, 1.0f);
        setValues(Float.valueOf(this.f2520R));
        this.f2525W = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        this.f2565z = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(9, (float) Math.ceil(t.b(getContext(), 48))));
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(24);
        int i3 = zHasValue ? 24 : 26;
        int i4 = zHasValue ? 24 : 25;
        ColorStateList colorStateListR = com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, i3);
        setTrackInactiveTintList(colorStateListR == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_inactive_track_color) : colorStateListR);
        ColorStateList colorStateListR2 = com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, i4);
        setTrackActiveTintList(colorStateListR2 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_active_track_color) : colorStateListR2);
        hVar.l(com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, 10));
        if (typedArrayObtainStyledAttributes.hasValue(14)) {
            setThumbStrokeColor(com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, 14));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(15, 0.0f));
        ColorStateList colorStateListR3 = com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, 5);
        setHaloTintList(colorStateListR3 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_halo_color) : colorStateListR3);
        this.f2527b0 = typedArrayObtainStyledAttributes.getBoolean(23, true);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(18);
        int i5 = zHasValue2 ? 18 : 20;
        int i6 = zHasValue2 ? 18 : 19;
        ColorStateList colorStateListR4 = com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, i5);
        setTickInactiveTintList(colorStateListR4 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_inactive_tick_marks_color) : colorStateListR4);
        ColorStateList colorStateListR5 = com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, i6);
        setTickActiveTintList(colorStateListR5 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_active_tick_marks_color) : colorStateListR5);
        setThumbTrackGapSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(16, 0));
        setTrackStopIndicatorSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(29, 0));
        setTrackInsideCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(28, 0));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, 0) * 2;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(17, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(11, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(27, 0));
        setTickActiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(21, this.f2514L / 2));
        setTickInactiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(22, this.f2514L / 2));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(7, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(0, true)) {
            setEnabled(false);
        }
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClickable(true);
        hVar.o();
        this.f2556s = ViewConfiguration.get(context2).getScaledTouchSlop();
        b bVar = new b(slider);
        this.f2538i = bVar;
        ViewCompat.setAccessibilityDelegate(this, bVar);
        this.f2540j = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    public final boolean A(float f) {
        return i(new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f2520R)), MathContext.DECIMAL64).doubleValue());
    }

    public final float B(float f) {
        return (o(f) * this.f2533e0) + this.f2508E;
    }

    public final void a(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.f2509F, this.f2510G);
        } else {
            float fMax = Math.max(this.f2509F, this.f2510G) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    public final int b() {
        int i3 = this.f2505B / 2;
        int i4 = this.f2506C;
        return i3 + ((i4 == 1 || i4 == 3) ? ((p017g1.a) this.f2546m.get(0)).getIntrinsicHeight() : 0);
    }

    public final ValueAnimator c(boolean z2) {
        int iN;
        TimeInterpolator timeInterpolatorO;
        float fFloatValue = z2 ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z2 ? this.f2554r : this.f2552q;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, z2 ? 1.0f : 0.0f);
        if (z2) {
            iN = c.N(getContext(), R.attr.motionDurationMedium4, 83);
            timeInterpolatorO = c.O(getContext(), R.attr.motionEasingEmphasizedInterpolator, B0.a.f293e);
        } else {
            iN = c.N(getContext(), R.attr.motionDurationShort3, 117);
            timeInterpolatorO = c.O(getContext(), R.attr.motionEasingEmphasizedAccelerateInterpolator, B0.a.f291c);
        }
        valueAnimatorOfFloat.setDuration(iN);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorO);
        valueAnimatorOfFloat.addUpdateListener(new H0.c(4, this));
        return valueAnimatorOfFloat;
    }

    public final void d(Canvas canvas, int i3, int i4, float f, Drawable drawable) {
        canvas.save();
        canvas.translate((this.f2508E + ((int) (o(f) * i3))) - (drawable.getBounds().width() / 2.0f), i4 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f2538i.d(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        this.b.setColor(h(this.f2545l0));
        this.f2528c.setColor(h(this.f2543k0));
        this.f.setColor(h(this.f2541j0));
        this.g.setColor(h(this.f2539i0));
        this.f2536h.setColor(h(this.f2543k0));
        ArrayList arrayList = this.f2546m;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            p017g1.a aVar = (p017g1.a) obj;
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        h hVar = this.p0;
        if (hVar.isStateful()) {
            hVar.setState(getDrawableState());
        }
        int iH = h(this.f2537h0);
        Paint paint = this.f2532e;
        paint.setColor(iH);
        paint.setAlpha(63);
    }

    public final void e() {
        if (!this.f2551p) {
            this.f2551p = true;
            ValueAnimator valueAnimatorC = c(true);
            this.f2552q = valueAnimatorC;
            this.f2554r = null;
            valueAnimatorC.start();
        }
        ArrayList arrayList = this.f2546m;
        Iterator it = arrayList.iterator();
        for (int i3 = 0; i3 < this.f2522T.size() && it.hasNext(); i3++) {
            if (i3 != this.f2524V) {
                q((p017g1.a) it.next(), ((Float) this.f2522T.get(i3)).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(this.f2522T.size())));
        }
        q((p017g1.a) it.next(), ((Float) this.f2522T.get(this.f2524V)).floatValue());
    }

    public final void f() {
        if (this.f2551p) {
            this.f2551p = false;
            ValueAnimator valueAnimatorC = c(false);
            this.f2554r = valueAnimatorC;
            this.f2552q = null;
            valueAnimatorC.addListener(new E0.a(6, this));
            this.f2554r.start();
        }
    }

    public final float[] g() {
        float fFloatValue = ((Float) this.f2522T.get(0)).floatValue();
        ArrayList arrayList = this.f2522T;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (this.f2522T.size() == 1) {
            fFloatValue = this.f2520R;
        }
        float fO = o(fFloatValue);
        float fO2 = o(fFloatValue2);
        return k() ? new float[]{fO2, fO} : new float[]{fO, fO2};
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f2538i.f731h;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public abstract int getThumbRadius();

    public List<Float> getValues() {
        return new ArrayList(this.f2522T);
    }

    public final int h(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public final boolean i(double d3) {
        double dDoubleValue = new BigDecimal(Double.toString(d3)).divide(new BigDecimal(Float.toString(this.f2525W)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    public final boolean j(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) != 3) {
            for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean k() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public final void l() {
        if (this.f2525W <= 0.0f) {
            return;
        }
        z();
        int iMin = Math.min((int) (((this.f2521S - this.f2520R) / this.f2525W) + 1.0f), (this.f2533e0 / this.f2564y) + 1);
        float[] fArr = this.f2526a0;
        if (fArr == null || fArr.length != iMin * 2) {
            this.f2526a0 = new float[iMin * 2];
        }
        float f = this.f2533e0 / (iMin - 1);
        for (int i3 = 0; i3 < iMin * 2; i3 += 2) {
            float[] fArr2 = this.f2526a0;
            fArr2[i3] = ((i3 / 2.0f) * f) + this.f2508E;
            fArr2[i3 + 1] = b();
        }
    }

    public final boolean m(int i3) {
        int i4 = this.f2524V;
        int iClamp = (int) MathUtils.clamp(((long) i4) + ((long) i3), 0L, this.f2522T.size() - 1);
        this.f2524V = iClamp;
        if (iClamp == i4) {
            return false;
        }
        if (this.f2523U != -1) {
            this.f2523U = iClamp;
        }
        v();
        postInvalidate();
        return true;
    }

    public final void n(int i3) {
        if (k()) {
            i3 = i3 == Integer.MIN_VALUE ? IntCompanionObject.MAX_VALUE : -i3;
        }
        m(i3);
    }

    public final float o(float f) {
        float f3 = this.f2520R;
        float f4 = (f - f3) / (this.f2521S - f3);
        return k() ? 1.0f - f4 : f4;
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f2560u0);
        ArrayList arrayList = this.f2546m;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            p017g1.a aVar = (p017g1.a) obj;
            ViewGroup viewGroupC = t.c(this);
            if (viewGroupC == null) {
                aVar.getClass();
            } else {
                aVar.getClass();
                int[] iArr = new int[2];
                viewGroupC.getLocationOnScreen(iArr);
                aVar.K = iArr[0];
                viewGroupC.getWindowVisibleDisplayFrame(aVar.f4344D);
                viewGroupC.addOnLayoutChangeListener(aVar.f4343C);
            }
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        a aVar = this.f2542k;
        if (aVar != null) {
            removeCallbacks(aVar);
        }
        int i3 = 0;
        this.f2551p = false;
        ArrayList arrayList = this.f2546m;
        int size = arrayList.size();
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            p017g1.a aVar2 = (p017g1.a) obj;
            ViewGroup viewGroupC = t.c(this);
            C0009b c0009b = viewGroupC == null ? null : new C0009b(viewGroupC);
            if (c0009b != null) {
                ((ViewOverlay) c0009b.b).remove(aVar2);
                ViewGroup viewGroupC2 = t.c(this);
                if (viewGroupC2 == null) {
                    aVar2.getClass();
                } else {
                    viewGroupC2.removeOnLayoutChangeListener(aVar2.f4343C);
                }
            }
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.f2560u0);
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code duplicated, block: B:117:0x018a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x017b  */
    /* JADX WARN: Code duplicated, block: B:77:0x01fb  */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        int i3;
        int i4;
        float f3;
        d dVar = this;
        Canvas canvas2 = canvas;
        if (dVar.f2535g0) {
            dVar.z();
            dVar.l();
        }
        super.onDraw(canvas);
        int iB = dVar.b();
        int i5 = 0;
        float fFloatValue = ((Float) dVar.f2522T.get(0)).floatValue();
        ArrayList arrayList = dVar.f2522T;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        float f4 = dVar.f2521S;
        RectF rectF = dVar.n0;
        if (fFloatValue2 < f4 || (dVar.f2522T.size() > 1 && fFloatValue > dVar.f2520R)) {
            int i6 = dVar.f2533e0;
            float[] fArrG = dVar.g();
            int i7 = dVar.f2508E;
            float f5 = i6;
            float f6 = (fArrG[1] * f5) + i7;
            float f7 = i7 + i6;
            Paint paint = dVar.b;
            if (f6 < f7) {
                int i8 = dVar.f2512I;
                if (i8 > 0) {
                    float f8 = f6 + i8;
                    float f9 = iB;
                    f = 2.0f;
                    float f10 = dVar.f2507D / 2.0f;
                    rectF.set(f8, f9 - f10, i7 + i6 + f10, f10 + f9);
                    dVar.x(canvas2, paint, rectF, 3);
                } else {
                    f = 2.0f;
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeCap(Paint.Cap.ROUND);
                    float f11 = iB;
                    canvas2.drawLine(f6, f11, dVar.f2508E + i6, f11, paint);
                }
            } else {
                f = 2.0f;
            }
            int i9 = dVar.f2508E;
            float f12 = i9;
            float f13 = (fArrG[i5] * f5) + f12;
            if (f13 > f12) {
                int i10 = dVar.f2512I;
                if (i10 > 0) {
                    float f14 = dVar.f2507D / f;
                    float f15 = iB;
                    rectF.set(i9 - f14, f15 - f14, f13 - i10, f14 + f15);
                    dVar.x(canvas2, paint, rectF, 2);
                } else {
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeCap(Paint.Cap.ROUND);
                    float f16 = iB;
                    canvas2.drawLine(dVar.f2508E, f16, f13, f16, paint);
                }
            }
        } else {
            i5 = 0;
            f = 2.0f;
        }
        if (fFloatValue2 > dVar.f2520R) {
            int i11 = dVar.f2533e0;
            float[] fArrG2 = dVar.g();
            float f17 = dVar.f2508E;
            float f18 = i11;
            float fB = (fArrG2[1] * f18) + f17;
            float fB2 = (fArrG2[i5] * f18) + f17;
            int i12 = dVar.f2512I;
            Paint paint2 = dVar.f2528c;
            if (i12 > 0) {
                int i13 = dVar.f2522T.size() == 1 ? dVar.k() ? 3 : 2 : 4;
                for (int i14 = i5; i14 < dVar.f2522T.size(); i14++) {
                    if (dVar.f2522T.size() > 1) {
                        if (i14 > 0) {
                            fB2 = dVar.B(((Float) dVar.f2522T.get(i14 - 1)).floatValue());
                        }
                        fB = dVar.B(((Float) dVar.f2522T.get(i14)).floatValue());
                        if (dVar.k()) {
                            fB = fB2;
                            fB2 = fB;
                        }
                    }
                    int iA = p051u.h.a(i13);
                    if (iA != 1) {
                        if (iA == 2) {
                            fB2 += dVar.f2512I;
                            fB = (dVar.f2507D / f) + fB;
                        } else if (iA == 3) {
                            f3 = dVar.f2512I;
                            fB2 += f3;
                        }
                        if (fB2 >= fB) {
                            float f19 = iB;
                            float f20 = dVar.f2507D / f;
                            rectF.set(fB2, f19 - f20, fB, f20 + f19);
                            dVar.x(canvas2, paint2, rectF, i13);
                        }
                    } else {
                        fB2 -= dVar.f2507D / f;
                        f3 = dVar.f2512I;
                    }
                    fB -= f3;
                    if (fB2 >= fB) {
                        float f110 = iB;
                        float f21 = dVar.f2507D / f;
                        rectF.set(fB2, f110 - f21, fB, f21 + f110);
                        dVar.x(canvas2, paint2, rectF, i13);
                    }
                }
            } else {
                paint2.setStyle(Paint.Style.STROKE);
                paint2.setStrokeCap(Paint.Cap.ROUND);
                float f22 = iB;
                canvas2.drawLine(fB2, f22, fB, f22, paint2);
            }
        }
        if (dVar.f2527b0 && dVar.f2525W > 0.0f) {
            float[] fArrG3 = dVar.g();
            int iCeil = (int) Math.ceil(((dVar.f2526a0.length / f) - 1.0f) * fArrG3[i5]);
            int iFloor = (int) Math.floor(((dVar.f2526a0.length / f) - 1.0f) * fArrG3[1]);
            Paint paint3 = dVar.f;
            if (iCeil > 0) {
                canvas2.drawPoints(dVar.f2526a0, i5, iCeil * 2, paint3);
            }
            if (iCeil <= iFloor) {
                canvas2.drawPoints(dVar.f2526a0, iCeil * 2, ((iFloor - iCeil) + 1) * 2, dVar.g);
            }
            int i15 = (iFloor + 1) * 2;
            float[] fArr = dVar.f2526a0;
            if (i15 < fArr.length) {
                canvas2.drawPoints(fArr, i15, fArr.length - i15, paint3);
            }
        }
        if (dVar.f2514L <= 0) {
            i3 = 0;
        } else {
            int size = dVar.f2522T.size();
            Paint paint4 = dVar.f2536h;
            if (size >= 1) {
                ArrayList arrayList2 = dVar.f2522T;
                float fFloatValue3 = ((Float) arrayList2.get(arrayList2.size() - 1)).floatValue();
                float f23 = dVar.f2521S;
                if (fFloatValue3 < f23) {
                    canvas2.drawPoint(dVar.B(f23), iB, paint4);
                }
            }
            if (dVar.f2522T.size() > 1) {
                i3 = 0;
                float fFloatValue4 = ((Float) dVar.f2522T.get(0)).floatValue();
                float f24 = dVar.f2520R;
                if (fFloatValue4 > f24) {
                    canvas2.drawPoint(dVar.B(f24), iB, paint4);
                }
            } else {
                i3 = 0;
            }
        }
        if ((dVar.f2519Q || dVar.isFocused()) && dVar.isEnabled()) {
            int i16 = dVar.f2533e0;
            if (!(dVar.getBackground() instanceof RippleDrawable)) {
                int iO = (int) ((dVar.o(((Float) dVar.f2522T.get(dVar.f2524V)).floatValue()) * i16) + dVar.f2508E);
                if (Build.VERSION.SDK_INT < 28) {
                    int i17 = dVar.f2511H;
                    canvas2.clipRect(iO - i17, iB - i17, iO + i17, i17 + iB, Region.Op.UNION);
                }
                canvas2.drawCircle(iO, iB, dVar.f2511H, dVar.f2532e);
            }
        }
        dVar.w();
        int i18 = dVar.f2533e0;
        while (i3 < dVar.f2522T.size()) {
            float fFloatValue5 = ((Float) dVar.f2522T.get(i3)).floatValue();
            Drawable drawable = dVar.f2553q0;
            if (drawable != null) {
                i4 = iB;
                dVar.d(canvas2, i18, i4, fFloatValue5, drawable);
            } else {
                i4 = iB;
                if (i3 < dVar.f2555r0.size()) {
                    dVar.d(canvas, i18, i4, fFloatValue5, (Drawable) dVar.f2555r0.get(i3));
                } else {
                    if (!dVar.isEnabled()) {
                        canvas.drawCircle((dVar.o(fFloatValue5) * i18) + dVar.f2508E, i4, dVar.getThumbRadius(), dVar.f2530d);
                    }
                    dVar.d(canvas, i18, i4, fFloatValue5, dVar.p0);
                }
            }
            i3++;
            dVar = this;
            canvas2 = canvas;
            iB = i4;
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z2, int i3, Rect rect) {
        super.onFocusChanged(z2, i3, rect);
        b bVar = this.f2538i;
        if (!z2) {
            this.f2523U = -1;
            bVar.a(this.f2524V);
            return;
        }
        if (i3 == 1) {
            m(IntCompanionObject.MAX_VALUE);
        } else if (i3 == 2) {
            m(Integer.MIN_VALUE);
        } else if (i3 == 17) {
            n(IntCompanionObject.MAX_VALUE);
        } else if (i3 == 66) {
            n(Integer.MIN_VALUE);
        }
        bVar.n(this.f2524V);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0047  */
    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i3, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i3, keyEvent);
        }
        if (this.f2522T.size() == 1) {
            this.f2523U = 0;
        }
        Float fValueOf = null;
        Boolean boolValueOf = null;
        if (this.f2523U == -1) {
            if (i3 != 61) {
                if (i3 == 66) {
                    this.f2523U = this.f2524V;
                    postInvalidate();
                    boolValueOf = Boolean.TRUE;
                } else if (i3 == 81) {
                    m(1);
                    boolValueOf = Boolean.TRUE;
                } else if (i3 == 69) {
                    m(-1);
                    boolValueOf = Boolean.TRUE;
                } else if (i3 != 70) {
                    switch (i3) {
                        case 21:
                            n(-1);
                            boolValueOf = Boolean.TRUE;
                            break;
                        case 22:
                            n(1);
                            boolValueOf = Boolean.TRUE;
                            break;
                        case 23:
                            this.f2523U = this.f2524V;
                            postInvalidate();
                            boolValueOf = Boolean.TRUE;
                            break;
                    }
                } else {
                    m(1);
                    boolValueOf = Boolean.TRUE;
                }
            } else if (keyEvent.hasNoModifiers()) {
                boolValueOf = Boolean.valueOf(m(1));
            } else {
                boolValueOf = keyEvent.isShiftPressed() ? Boolean.valueOf(m(-1)) : Boolean.FALSE;
            }
            return boolValueOf != null ? boolValueOf.booleanValue() : super.onKeyDown(i3, keyEvent);
        }
        boolean zIsLongPress = this.f2534f0 | keyEvent.isLongPress();
        this.f2534f0 = zIsLongPress;
        float fRound = 1.0f;
        if (zIsLongPress) {
            float f = this.f2525W;
            fRound = f != 0.0f ? f : 1.0f;
            float f3 = (this.f2521S - this.f2520R) / fRound;
            float f4 = 20;
            if (f3 > f4) {
                fRound *= Math.round(f3 / f4);
            }
        } else {
            float f5 = this.f2525W;
            if (f5 != 0.0f) {
                fRound = f5;
            }
        }
        if (i3 == 21) {
            if (!k()) {
                fRound = -fRound;
            }
            fValueOf = Float.valueOf(fRound);
        } else if (i3 == 22) {
            if (k()) {
                fRound = -fRound;
            }
            fValueOf = Float.valueOf(fRound);
        } else if (i3 == 69) {
            fValueOf = Float.valueOf(-fRound);
        } else if (i3 == 70 || i3 == 81) {
            fValueOf = Float.valueOf(fRound);
        }
        if (fValueOf != null) {
            if (s(this.f2523U, fValueOf.floatValue() + ((Float) this.f2522T.get(this.f2523U)).floatValue())) {
                v();
                postInvalidate();
            }
            return true;
        }
        if (i3 != 23) {
            if (i3 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return m(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return m(-1);
                }
                return false;
            }
            if (i3 != 66) {
                return super.onKeyDown(i3, keyEvent);
            }
        }
        this.f2523U = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i3, KeyEvent keyEvent) {
        this.f2534f0 = false;
        return super.onKeyUp(i3, keyEvent);
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5 = this.f2505B;
        int i6 = this.f2506C;
        super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(i5 + ((i6 == 1 || i6 == 3) ? ((p017g1.a) this.f2546m.get(0)).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        this.f2520R = cVar.b;
        this.f2521S = cVar.f2501c;
        r(cVar.f2502d);
        this.f2525W = cVar.f2503e;
        if (cVar.f) {
            requestFocus();
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.b = this.f2520R;
        cVar.f2501c = this.f2521S;
        cVar.f2502d = new ArrayList(this.f2522T);
        cVar.f2503e = this.f2525W;
        cVar.f = hasFocus();
        return cVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        this.f2533e0 = Math.max(i3 - (this.f2508E * 2), 0);
        l();
        v();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e5  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        Iterator it;
        int i3;
        float f;
        Slider slider;
        if (isEnabled()) {
            float x2 = motionEvent.getX();
            float f3 = (x2 - this.f2508E) / this.f2533e0;
            this.s0 = f3;
            float fMax = Math.max(0.0f, f3);
            this.s0 = fMax;
            this.s0 = Math.min(1.0f, fMax);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                int i4 = this.f2556s;
                if (actionMasked == 1) {
                    this.f2519Q = false;
                    motionEvent2 = this.f2518P;
                    if (motionEvent2 != null && motionEvent2.getActionMasked() == 0) {
                        f = i4;
                        if (Math.abs(this.f2518P.getX() - motionEvent.getX()) <= f && Math.abs(this.f2518P.getY() - motionEvent.getY()) <= f) {
                            slider = (Slider) this;
                            if (slider.getActiveThumbIndex() == -1) {
                                slider.setActiveThumbIndex(0);
                            }
                            p();
                        }
                    }
                    if (this.f2523U != -1) {
                        t();
                        v();
                        if (this.f2512I > 0 && (i3 = this.f2513J) != -1 && this.K != -1) {
                            setThumbWidth(i3);
                            setThumbTrackGapSize(this.K);
                        }
                        this.f2523U = -1;
                        it = this.f2549o.iterator();
                        if (it.hasNext()) {
                            throw b.g(it);
                        }
                    }
                    invalidate();
                } else if (actionMasked == 2) {
                    if (!this.f2519Q) {
                        if (!j(motionEvent) || Math.abs(x2 - this.f2517O) >= i4) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                            p();
                        }
                    }
                    Slider slider2 = (Slider) this;
                    if (slider2.getActiveThumbIndex() == -1) {
                        slider2.setActiveThumbIndex(0);
                    }
                    this.f2519Q = true;
                    t();
                    v();
                    invalidate();
                } else if (actionMasked == 3) {
                    this.f2519Q = false;
                    motionEvent2 = this.f2518P;
                    if (motionEvent2 != null) {
                        f = i4;
                        if (Math.abs(this.f2518P.getX() - motionEvent.getX()) <= f) {
                            slider = (Slider) this;
                            if (slider.getActiveThumbIndex() == -1) {
                                slider.setActiveThumbIndex(0);
                            }
                            p();
                        }
                    }
                    if (this.f2523U != -1) {
                        t();
                        v();
                        if (this.f2512I > 0) {
                            setThumbWidth(i3);
                            setThumbTrackGapSize(this.K);
                        }
                        this.f2523U = -1;
                        it = this.f2549o.iterator();
                        if (it.hasNext()) {
                            throw b.g(it);
                        }
                    }
                    invalidate();
                }
            } else {
                this.f2517O = x2;
                if (!j(motionEvent)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    Slider slider3 = (Slider) this;
                    if (slider3.getActiveThumbIndex() == -1) {
                        slider3.setActiveThumbIndex(0);
                    }
                    requestFocus();
                    this.f2519Q = true;
                    t();
                    v();
                    int i5 = this.f2512I;
                    if (i5 > 0) {
                        int i6 = this.f2509F;
                        this.f2513J = i6;
                        this.K = i5;
                        int iRound = Math.round(i6 * 0.5f);
                        int i7 = this.f2509F - iRound;
                        setThumbWidth(iRound);
                        setThumbTrackGapSize(this.f2512I - (i7 / 2));
                    }
                    invalidate();
                    p();
                }
            }
            setPressed(this.f2519Q);
            this.f2518P = MotionEvent.obtain(motionEvent);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i3) {
        super.onVisibilityChanged(view, i3);
        if (i3 != 0) {
            ViewGroup viewGroupC = t.c(this);
            C0009b c0009b = viewGroupC == null ? null : new C0009b(viewGroupC);
            if (c0009b == null) {
                return;
            }
            ArrayList arrayList = this.f2546m;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                ((ViewOverlay) c0009b.b).remove((p017g1.a) obj);
            }
        }
    }

    public final void p() {
        Iterator it = this.f2549o.iterator();
        if (it.hasNext()) {
            throw b.g(it);
        }
    }

    public final void q(p017g1.a aVar, float f) {
        String str = String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
        if (!TextUtils.equals(aVar.f4355y, str)) {
            aVar.f4355y = str;
            aVar.f4342B.f1937e = true;
            aVar.invalidateSelf();
        }
        int iO = (this.f2508E + ((int) (o(f) * this.f2533e0))) - (aVar.getIntrinsicWidth() / 2);
        int iB = b() - ((this.f2510G / 2) + this.f2516N);
        aVar.setBounds(iO, iB - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + iO, iB);
        Rect rect = new Rect(aVar.getBounds());
        R0.d.b(t.c(this), this, rect);
        aVar.setBounds(rect);
        ViewGroup viewGroupC = t.c(this);
        ((ViewOverlay) (viewGroupC == null ? null : new C0009b(viewGroupC)).b).add(aVar);
    }

    public final void r(ArrayList arrayList) {
        ViewGroup viewGroupC;
        int resourceId;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.f2522T.size() == arrayList.size() && this.f2522T.equals(arrayList)) {
            return;
        }
        this.f2522T = arrayList;
        this.f2535g0 = true;
        this.f2524V = 0;
        v();
        ArrayList arrayList2 = this.f2546m;
        if (arrayList2.size() > this.f2522T.size()) {
            List<p017g1.a> listSubList = arrayList2.subList(this.f2522T.size(), arrayList2.size());
            for (p017g1.a aVar : listSubList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    ViewGroup viewGroupC2 = t.c(this);
                    C0009b c0009b = viewGroupC2 == null ? null : new C0009b(viewGroupC2);
                    if (c0009b != null) {
                        ((ViewOverlay) c0009b.b).remove(aVar);
                        ViewGroup viewGroupC3 = t.c(this);
                        if (viewGroupC3 == null) {
                            aVar.getClass();
                        } else {
                            viewGroupC3.removeOnLayoutChangeListener(aVar.f4343C);
                        }
                    }
                }
            }
            listSubList.clear();
        }
        while (arrayList2.size() < this.f2522T.size()) {
            Context context = getContext();
            int i3 = this.f2544l;
            p017g1.a aVar2 = new p017g1.a(context, i3);
            TypedArray typedArrayE = p.e(aVar2.f4356z, null, A0.a.f17O, 0, i3, new int[0]);
            Context context2 = aVar2.f4356z;
            aVar2.f4350J = context2.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
            boolean z2 = typedArrayE.getBoolean(8, true);
            aVar2.f4349I = z2;
            if (z2) {
                l lVarE = aVar2.b.f2383a.e();
                lVarE.f2427k = aVar2.u();
                aVar2.setShapeAppearanceModel(lVarE.a());
            } else {
                aVar2.f4350J = 0;
            }
            CharSequence text = typedArrayE.getText(6);
            boolean zEquals = TextUtils.equals(aVar2.f4355y, text);
            m mVar = aVar2.f4342B;
            if (!zEquals) {
                aVar2.f4355y = text;
                mVar.f1937e = true;
                aVar2.invalidateSelf();
            }
            V0.d dVar = (!typedArrayE.hasValue(0) || (resourceId = typedArrayE.getResourceId(0, 0)) == 0) ? null : new V0.d(context2, resourceId);
            if (dVar != null && typedArrayE.hasValue(1)) {
                dVar.f2249j = com.bumptech.glide.d.r(context2, typedArrayE, 1);
            }
            mVar.c(dVar, context2);
            aVar2.l(ColorStateList.valueOf(typedArrayE.getColor(7, ColorUtils.compositeColors(ColorUtils.setAlphaComponent(c.l(context2, p017g1.a.class.getCanonicalName(), R.attr.colorOnBackground), 153), ColorUtils.setAlphaComponent(c.l(context2, p017g1.a.class.getCanonicalName(), android.R.attr.colorBackground), 229)))));
            aVar2.p(ColorStateList.valueOf(c.l(context2, p017g1.a.class.getCanonicalName(), R.attr.colorSurface)));
            aVar2.f4345E = typedArrayE.getDimensionPixelSize(2, 0);
            aVar2.f4346F = typedArrayE.getDimensionPixelSize(4, 0);
            aVar2.f4347G = typedArrayE.getDimensionPixelSize(5, 0);
            aVar2.f4348H = typedArrayE.getDimensionPixelSize(3, 0);
            typedArrayE.recycle();
            arrayList2.add(aVar2);
            if (ViewCompat.isAttachedToWindow(this) && (viewGroupC = t.c(this)) != null) {
                int[] iArr = new int[2];
                viewGroupC.getLocationOnScreen(iArr);
                aVar2.K = iArr[0];
                viewGroupC.getWindowVisibleDisplayFrame(aVar2.f4344D);
                viewGroupC.addOnLayoutChangeListener(aVar2.f4343C);
            }
        }
        int i4 = arrayList2.size() == 1 ? 0 : 1;
        int size = arrayList2.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList2.get(i5);
            i5++;
            p017g1.a aVar3 = (p017g1.a) obj;
            aVar3.b.f2389j = i4;
            aVar3.invalidateSelf();
        }
        ArrayList arrayList3 = this.f2548n;
        int size2 = arrayList3.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj2 = arrayList3.get(i6);
            i6++;
            y yVar = (y) obj2;
            ArrayList arrayList4 = this.f2522T;
            int size3 = arrayList4.size();
            int i7 = 0;
            while (i7 < size3) {
                Object obj3 = arrayList4.get(i7);
                i7++;
                yVar.a(this, ((Float) obj3).floatValue());
            }
        }
        postInvalidate();
    }

    public final boolean s(int i3, float f) {
        this.f2524V = i3;
        int i4 = 0;
        if (Math.abs(f - ((Float) this.f2522T.get(i3)).floatValue()) < 1.0E-4d) {
            return false;
        }
        float minSeparation = getMinSeparation();
        if (this.f2558t0 == 0) {
            if (minSeparation == 0.0f) {
                minSeparation = 0.0f;
            } else {
                float f3 = (minSeparation - this.f2508E) / this.f2533e0;
                float f4 = this.f2520R;
                minSeparation = ((f4 - this.f2521S) * f3) + f4;
            }
        }
        if (k()) {
            minSeparation = -minSeparation;
        }
        int i5 = i3 + 1;
        int i6 = i3 - 1;
        this.f2522T.set(i3, Float.valueOf(MathUtils.clamp(f, i6 < 0 ? this.f2520R : minSeparation + ((Float) this.f2522T.get(i6)).floatValue(), i5 >= this.f2522T.size() ? this.f2521S : ((Float) this.f2522T.get(i5)).floatValue() - minSeparation)));
        ArrayList arrayList = this.f2548n;
        int size = arrayList.size();
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            ((y) obj).a(this, ((Float) this.f2522T.get(i3)).floatValue());
        }
        AccessibilityManager accessibilityManager = this.f2540j;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            Runnable runnable = this.f2542k;
            if (runnable == null) {
                this.f2542k = new a(this);
            } else {
                removeCallbacks(runnable);
            }
            a aVar = this.f2542k;
            aVar.f2132c = i3;
            postDelayed(aVar, 200L);
        }
        return true;
    }

    public void setActiveThumbIndex(int i3) {
        this.f2523U = i3;
    }

    public void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            drawableArr[i3] = getResources().getDrawable(iArr[i3]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        setLayerType(z2 ? 0 : 2, null);
    }

    public abstract void setHaloRadius(int i3);

    public abstract void setHaloTintList(ColorStateList colorStateList);

    public abstract void setLabelBehavior(int i3);

    public void setSeparationUnit(int i3) {
        this.f2558t0 = i3;
        this.f2535g0 = true;
        postInvalidate();
    }

    public abstract void setThumbElevation(float f);

    public abstract void setThumbHeight(int i3);

    public abstract void setThumbStrokeColor(ColorStateList colorStateList);

    public abstract void setThumbStrokeWidth(float f);

    public abstract void setThumbTrackGapSize(int i3);

    public abstract void setThumbWidth(int i3);

    public abstract void setTickActiveRadius(int i3);

    public abstract void setTickActiveTintList(ColorStateList colorStateList);

    public abstract void setTickInactiveRadius(int i3);

    public abstract void setTickInactiveTintList(ColorStateList colorStateList);

    public abstract void setTrackActiveTintList(ColorStateList colorStateList);

    public abstract void setTrackHeight(int i3);

    public abstract void setTrackInactiveTintList(ColorStateList colorStateList);

    public abstract void setTrackInsideCornerSize(int i3);

    public abstract void setTrackStopIndicatorSize(int i3);

    public void setValues(Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        r(arrayList);
    }

    public final void t() {
        double dRound;
        float f = this.s0;
        float f3 = this.f2525W;
        if (f3 > 0.0f) {
            int i3 = (int) ((this.f2521S - this.f2520R) / f3);
            dRound = ((double) Math.round(f * i3)) / ((double) i3);
        } else {
            dRound = f;
        }
        if (k()) {
            dRound = 1.0d - dRound;
        }
        float f4 = this.f2521S;
        float f5 = this.f2520R;
        s(this.f2523U, (float) ((dRound * ((double) (f4 - f5))) + ((double) f5)));
    }

    public final void u(int i3, Rect rect) {
        int iO = this.f2508E + ((int) (o(getValues().get(i3).floatValue()) * this.f2533e0));
        int iB = b();
        int iMax = Math.max(this.f2509F / 2, this.f2565z / 2);
        int iMax2 = Math.max(this.f2510G / 2, this.f2565z / 2);
        rect.set(iO - iMax, iB - iMax2, iO + iMax, iB + iMax2);
    }

    public final void v() {
        if (!(getBackground() instanceof RippleDrawable) || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iO = (int) ((o(((Float) this.f2522T.get(this.f2524V)).floatValue()) * this.f2533e0) + this.f2508E);
            int iB = b();
            int i3 = this.f2511H;
            DrawableCompat.setHotspotBounds(background, iO - i3, iB - i3, iO + i3, iB + i3);
        }
    }

    public final void w() {
        int i3 = this.f2506C;
        if (i3 == 0 || i3 == 1) {
            if (this.f2523U == -1 || !isEnabled()) {
                f();
                return;
            } else {
                e();
                return;
            }
        }
        if (i3 == 2) {
            f();
            return;
        }
        if (i3 != 3) {
            throw new IllegalArgumentException("Unexpected labelBehavior: " + this.f2506C);
        }
        if (isEnabled()) {
            Rect rect = new Rect();
            t.c(this).getHitRect(rect);
            if (getLocalVisibleRect(rect)) {
                e();
                return;
            }
        }
        f();
    }

    public final void x(Canvas canvas, Paint paint, RectF rectF, int i3) {
        float f;
        float f3 = this.f2507D / 2.0f;
        int iA = p051u.h.a(i3);
        if (iA == 1) {
            f = this.f2515M;
        } else if (iA != 2) {
            if (iA == 3) {
                f3 = this.f2515M;
            }
            f = f3;
        } else {
            f = f3;
            f3 = this.f2515M;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        Path path = this.f2547m0;
        path.reset();
        if (rectF.width() >= f3 + f) {
            path.addRoundRect(rectF, new float[]{f3, f3, f, f, f, f, f3, f3}, Path.Direction.CW);
            canvas.drawPath(path, paint);
            return;
        }
        float fMin = Math.min(f3, f);
        float fMax = Math.max(f3, f);
        canvas.save();
        path.addRoundRect(rectF, fMin, fMin, Path.Direction.CW);
        canvas.clipPath(path);
        int iA2 = p051u.h.a(i3);
        RectF rectF2 = this.f2550o0;
        if (iA2 == 1) {
            float f4 = rectF.left;
            rectF2.set(f4, rectF.top, (2.0f * fMax) + f4, rectF.bottom);
        } else if (iA2 != 2) {
            rectF2.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
        } else {
            float f5 = rectF.right;
            rectF2.set(f5 - (2.0f * fMax), rectF.top, f5, rectF.bottom);
        }
        canvas.drawRoundRect(rectF2, fMax, fMax, paint);
        canvas.restore();
    }

    public final void y() {
        boolean z2;
        int iMax = Math.max(this.f2504A, Math.max(this.f2507D + getPaddingBottom() + getPaddingTop(), getPaddingBottom() + getPaddingTop() + this.f2510G));
        boolean z3 = true;
        if (iMax == this.f2505B) {
            z2 = false;
        } else {
            this.f2505B = iMax;
            z2 = true;
        }
        int iMax2 = Math.max(Math.max(Math.max((this.f2509F / 2) - this.f2559u, 0), Math.max((this.f2507D - this.f2561v) / 2, 0)), Math.max(Math.max(this.f2529c0 - this.f2562w, 0), Math.max(this.f2531d0 - this.f2563x, 0))) + this.f2557t;
        if (this.f2508E == iMax2) {
            z3 = false;
        } else {
            this.f2508E = iMax2;
            if (ViewCompat.isLaidOut(this)) {
                this.f2533e0 = Math.max(getWidth() - (this.f2508E * 2), 0);
                l();
            }
        }
        if (z2) {
            requestLayout();
        } else if (z3) {
            postInvalidate();
        }
    }

    public final void z() {
        if (this.f2535g0) {
            float f = this.f2520R;
            float f3 = this.f2521S;
            if (f >= f3) {
                throw new IllegalStateException("valueFrom(" + this.f2520R + ") must be smaller than valueTo(" + this.f2521S + ")");
            }
            if (f3 <= f) {
                throw new IllegalStateException("valueTo(" + this.f2521S + ") must be greater than valueFrom(" + this.f2520R + ")");
            }
            if (this.f2525W > 0.0f && !A(f3)) {
                throw new IllegalStateException("The stepSize(" + this.f2525W + ") must be 0, or a factor of the valueFrom(" + this.f2520R + ")-valueTo(" + this.f2521S + ") range");
            }
            ArrayList arrayList = this.f2522T;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                Float f4 = (Float) obj;
                if (f4.floatValue() < this.f2520R || f4.floatValue() > this.f2521S) {
                    throw new IllegalStateException("Slider value(" + f4 + ") must be greater or equal to valueFrom(" + this.f2520R + "), and lower or equal to valueTo(" + this.f2521S + ")");
                }
                if (this.f2525W > 0.0f && !A(f4.floatValue())) {
                    float f5 = this.f2520R;
                    float f6 = this.f2525W;
                    throw new IllegalStateException("Value(" + f4 + ") must be equal to valueFrom(" + f5 + ") plus a multiple of stepSize(" + f6 + ") when using stepSize(" + f6 + ")");
                }
            }
            float minSeparation = getMinSeparation();
            if (minSeparation < 0.0f) {
                throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal to 0");
            }
            float f7 = this.f2525W;
            if (f7 > 0.0f && minSeparation > 0.0f) {
                if (this.f2558t0 != 1) {
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") cannot be set as a dimension when using stepSize(" + this.f2525W + ")");
                }
                if (minSeparation < f7 || !i(minSeparation)) {
                    float f8 = this.f2525W;
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal and a multiple of stepSize(" + f8 + ") when using stepSize(" + f8 + ")");
                }
            }
            float f9 = this.f2525W;
            if (f9 != 0.0f) {
                if (((int) f9) != f9) {
                    Log.w("d", "Floating point value used for stepSize(" + f9 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f10 = this.f2520R;
                if (((int) f10) != f10) {
                    Log.w("d", "Floating point value used for valueFrom(" + f10 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f11 = this.f2521S;
                if (((int) f11) != f11) {
                    Log.w("d", "Floating point value used for valueTo(" + f11 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
            }
            this.f2535g0 = false;
        }
    }

    public void setValues(List<Float> list) {
        r(new ArrayList(list));
    }

    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.f2553q0 = null;
        this.f2555r0 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            List list = this.f2555r0;
            Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
            a(drawableNewDrawable);
            list.add(drawableNewDrawable);
        }
        postInvalidate();
    }
}
