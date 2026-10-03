package com.google.android.material.textfield;

import A1.C0009b;
import A1.u0;
import C1.RunnableC0068g1;
import R0.c;
import R0.p;
import R0.t;
import S.C0175h;
import S.u;
import Y0.e;
import Y0.h;
import Y0.l;
import Y0.m;
import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.bumptech.glide.d;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k.AbstractC0309p0;
import k.C0285d0;
import k.C0321w;
import k.Z0;
import p010d1.A;
import p010d1.f;
import p010d1.g;
import p010d1.i;
import p010d1.k;
import p010d1.n;
import p010d1.q;
import p010d1.r;
import p010d1.w;
import p010d1.x;
import p010d1.y;
import p010d1.z;
import p015f1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public static final int[][] f3556D0 = {new int[]{R.attr.state_pressed}, new int[0]};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public ColorStateList f3557A;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public boolean f3558A0;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public ColorStateList f3559B;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public boolean f3560B0;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public ColorStateList f3561C;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public boolean f3562C0;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f3563D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public CharSequence f3564E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f3565F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public h f3566G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public h f3567H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public StateListDrawable f3568I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f3569J;
    public h K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public h f3570L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public m f3571M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f3572N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f3573O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f3574P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f3575Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f3576R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f3577S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f3578T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f3579U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f3580V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final Rect f3581W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Rect f3582a0;
    public final FrameLayout b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final RectF f3583b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f3584c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Typeface f3585c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final n f3586d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public ColorDrawable f3587d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EditText f3588e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f3589e0;
    public CharSequence f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final LinkedHashSet f3590f0;
    public int g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public ColorDrawable f3591g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3592h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f3593h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3594i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Drawable f3595i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3596j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ColorStateList f3597j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f3598k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ColorStateList f3599k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3600l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f3601l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3602m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f3603m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3604n;
    public int n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public z f3605o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public ColorStateList f3606o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C0285d0 f3607p;
    public int p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3608q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f3609q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3610r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f3611r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f3612s;
    public int s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f3613t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f3614t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C0285d0 f3615u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f3616u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ColorStateList f3617v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f3618v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3619w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final c f3620w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public C0175h f3621x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f3622x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public C0175h f3623y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f3624y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ColorStateList f3625z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public ValueAnimator f3626z0;

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, com.minhub.gamehub.R.attr.textInputStyle, com.minhub.gamehub.R.style.Widget_Design_TextInputLayout), attributeSet, com.minhub.gamehub.R.attr.textInputStyle);
        this.g = -1;
        this.f3592h = -1;
        this.f3594i = -1;
        this.f3596j = -1;
        this.f3598k = new r(this);
        this.f3605o = new u(11);
        this.f3581W = new Rect();
        this.f3582a0 = new Rect();
        this.f3583b0 = new RectF();
        this.f3590f0 = new LinkedHashSet();
        c cVar = new c(this);
        this.f3620w0 = cVar;
        this.f3562C0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = B0.a.f290a;
        cVar.f1878Q = linearInterpolator;
        cVar.h(false);
        cVar.f1877P = linearInterpolator;
        cVar.h(false);
        if (cVar.g != 8388659) {
            cVar.g = 8388659;
            cVar.h(false);
        }
        Z0 z0F = p.f(context2, attributeSet, A0.a.f15M, com.minhub.gamehub.R.attr.textInputStyle, com.minhub.gamehub.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 49);
        w wVar = new w(this, z0F);
        this.f3584c = wVar;
        TypedArray typedArray = z0F.b;
        this.f3563D = typedArray.getBoolean(48, true);
        setHint(typedArray.getText(4));
        this.f3624y0 = typedArray.getBoolean(47, true);
        this.f3622x0 = typedArray.getBoolean(42, true);
        if (typedArray.hasValue(6)) {
            setMinEms(typedArray.getInt(6, -1));
        } else if (typedArray.hasValue(3)) {
            setMinWidth(typedArray.getDimensionPixelSize(3, -1));
        }
        if (typedArray.hasValue(5)) {
            setMaxEms(typedArray.getInt(5, -1));
        } else if (typedArray.hasValue(2)) {
            setMaxWidth(typedArray.getDimensionPixelSize(2, -1));
        }
        this.f3571M = m.b(context2, attributeSet, com.minhub.gamehub.R.attr.textInputStyle, com.minhub.gamehub.R.style.Widget_Design_TextInputLayout).a();
        this.f3573O = context2.getResources().getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f3575Q = typedArray.getDimensionPixelOffset(9, 0);
        this.f3577S = typedArray.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f3578T = typedArray.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f3576R = this.f3577S;
        float dimension = typedArray.getDimension(13, -1.0f);
        float dimension2 = typedArray.getDimension(12, -1.0f);
        float dimension3 = typedArray.getDimension(10, -1.0f);
        float dimension4 = typedArray.getDimension(11, -1.0f);
        l lVarE = this.f3571M.e();
        if (dimension >= 0.0f) {
            lVarE.f2423e = new Y0.a(dimension);
        }
        if (dimension2 >= 0.0f) {
            lVarE.f = new Y0.a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            lVarE.g = new Y0.a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            lVarE.f2424h = new Y0.a(dimension4);
        }
        this.f3571M = lVarE.a();
        ColorStateList colorStateListS = d.s(context2, z0F, 7);
        if (colorStateListS != null) {
            int defaultColor = colorStateListS.getDefaultColor();
            this.p0 = defaultColor;
            this.f3580V = defaultColor;
            if (colorStateListS.isStateful()) {
                this.f3609q0 = colorStateListS.getColorForState(new int[]{-16842910}, -1);
                this.f3611r0 = colorStateListS.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.s0 = colorStateListS.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f3611r0 = this.p0;
                ColorStateList colorStateList = ContextCompat.getColorStateList(context2, com.minhub.gamehub.R.color.mtrl_filled_background_color);
                this.f3609q0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.s0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f3580V = 0;
            this.p0 = 0;
            this.f3609q0 = 0;
            this.f3611r0 = 0;
            this.s0 = 0;
        }
        if (typedArray.hasValue(1)) {
            ColorStateList colorStateListA = z0F.a(1);
            this.f3599k0 = colorStateListA;
            this.f3597j0 = colorStateListA;
        }
        ColorStateList colorStateListS2 = d.s(context2, z0F, 14);
        this.n0 = typedArray.getColor(14, 0);
        this.f3601l0 = ContextCompat.getColor(context2, com.minhub.gamehub.R.color.mtrl_textinput_default_box_stroke_color);
        this.f3614t0 = ContextCompat.getColor(context2, com.minhub.gamehub.R.color.mtrl_textinput_disabled_color);
        this.f3603m0 = ContextCompat.getColor(context2, com.minhub.gamehub.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListS2 != null) {
            setBoxStrokeColorStateList(colorStateListS2);
        }
        if (typedArray.hasValue(15)) {
            setBoxStrokeErrorColor(d.s(context2, z0F, 15));
        }
        if (typedArray.getResourceId(49, -1) != -1) {
            setHintTextAppearance(typedArray.getResourceId(49, 0));
        }
        this.f3559B = z0F.a(24);
        this.f3561C = z0F.a(25);
        int resourceId = typedArray.getResourceId(40, 0);
        CharSequence text = typedArray.getText(35);
        int i3 = typedArray.getInt(34, 1);
        boolean z2 = typedArray.getBoolean(36, false);
        int resourceId2 = typedArray.getResourceId(45, 0);
        boolean z3 = typedArray.getBoolean(44, false);
        CharSequence text2 = typedArray.getText(43);
        int resourceId3 = typedArray.getResourceId(57, 0);
        CharSequence text3 = typedArray.getText(56);
        boolean z4 = typedArray.getBoolean(18, false);
        setCounterMaxLength(typedArray.getInt(19, -1));
        this.f3610r = typedArray.getResourceId(22, 0);
        this.f3608q = typedArray.getResourceId(20, 0);
        setBoxBackgroundMode(typedArray.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i3);
        setCounterOverflowTextAppearance(this.f3608q);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.f3610r);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (typedArray.hasValue(41)) {
            setErrorTextColor(z0F.a(41));
        }
        if (typedArray.hasValue(46)) {
            setHelperTextColor(z0F.a(46));
        }
        if (typedArray.hasValue(50)) {
            setHintTextColor(z0F.a(50));
        }
        if (typedArray.hasValue(23)) {
            setCounterTextColor(z0F.a(23));
        }
        if (typedArray.hasValue(21)) {
            setCounterOverflowTextColor(z0F.a(21));
        }
        if (typedArray.hasValue(58)) {
            setPlaceholderTextColor(z0F.a(58));
        }
        n nVar = new n(this, z0F);
        this.f3586d = nVar;
        boolean z5 = typedArray.getBoolean(0, true);
        z0F.f();
        ViewCompat.setImportantForAccessibility(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.setImportantForAutofill(this, 1);
        }
        frameLayout.addView(wVar);
        frameLayout.addView(nVar);
        addView(frameLayout);
        setEnabled(z5);
        setHelperTextEnabled(z3);
        setErrorEnabled(z2);
        setCounterEnabled(z4);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f3588e;
        if (!(editText instanceof AutoCompleteTextView) || editText.getInputType() != 0) {
            return this.f3566G;
        }
        int iM = com.bumptech.glide.c.m(this.f3588e, com.minhub.gamehub.R.attr.colorControlHighlight);
        int i3 = this.f3574P;
        int[][] iArr = f3556D0;
        if (i3 != 2) {
            if (i3 != 1) {
                return null;
            }
            h hVar = this.f3566G;
            int i4 = this.f3580V;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{com.bumptech.glide.c.w(iM, 0.1f, i4), i4}), hVar, hVar);
        }
        Context context = getContext();
        h hVar2 = this.f3566G;
        int iL = com.bumptech.glide.c.l(context, "TextInputLayout", com.minhub.gamehub.R.attr.colorSurface);
        h hVar3 = new h(hVar2.b.f2383a);
        int iW = com.bumptech.glide.c.w(iM, 0.1f, iL);
        hVar3.l(new ColorStateList(iArr, new int[]{iW, 0}));
        hVar3.setTint(iL);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iW, iL});
        h hVar4 = new h(hVar2.b.f2383a);
        hVar4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, hVar3, hVar4), hVar2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.f3568I == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.f3568I = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.f3568I.addState(new int[0], f(false));
        }
        return this.f3568I;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.f3567H == null) {
            this.f3567H = f(true);
        }
        return this.f3567H;
    }

    public static void k(ViewGroup viewGroup, boolean z2) {
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            childAt.setEnabled(z2);
            if (childAt instanceof ViewGroup) {
                k((ViewGroup) childAt, z2);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.f3588e != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f3588e = editText;
        int i3 = this.g;
        if (i3 != -1) {
            setMinEms(i3);
        } else {
            setMinWidth(this.f3594i);
        }
        int i4 = this.f3592h;
        if (i4 != -1) {
            setMaxEms(i4);
        } else {
            setMaxWidth(this.f3596j);
        }
        this.f3569J = false;
        i();
        setTextInputAccessibilityDelegate(new y(this));
        Typeface typeface = this.f3588e.getTypeface();
        c cVar = this.f3620w0;
        cVar.m(typeface);
        float textSize = this.f3588e.getTextSize();
        if (cVar.f1897h != textSize) {
            cVar.f1897h = textSize;
            cVar.h(false);
        }
        int i5 = Build.VERSION.SDK_INT;
        float letterSpacing = this.f3588e.getLetterSpacing();
        if (cVar.f1884W != letterSpacing) {
            cVar.f1884W = letterSpacing;
            cVar.h(false);
        }
        int gravity = this.f3588e.getGravity();
        int i6 = (gravity & (-113)) | 48;
        if (cVar.g != i6) {
            cVar.g = i6;
            cVar.h(false);
        }
        if (cVar.f != gravity) {
            cVar.f = gravity;
            cVar.h(false);
        }
        this.f3616u0 = ViewCompat.getMinimumHeight(editText);
        this.f3588e.addTextChangedListener(new x(this, editText));
        if (this.f3597j0 == null) {
            this.f3597j0 = this.f3588e.getHintTextColors();
        }
        if (this.f3563D) {
            if (TextUtils.isEmpty(this.f3564E)) {
                CharSequence hint = this.f3588e.getHint();
                this.f = hint;
                setHint(hint);
                this.f3588e.setHint((CharSequence) null);
            }
            this.f3565F = true;
        }
        if (i5 >= 29) {
            p();
        }
        if (this.f3607p != null) {
            n(this.f3588e.getText());
        }
        r();
        this.f3598k.b();
        this.f3584c.bringToFront();
        n nVar = this.f3586d;
        nVar.bringToFront();
        Iterator it = this.f3590f0.iterator();
        while (it.hasNext()) {
            ((k) it.next()).a(this);
        }
        nVar.m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        u(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f3564E)) {
            return;
        }
        this.f3564E = charSequence;
        c cVar = this.f3620w0;
        if (charSequence == null || !TextUtils.equals(cVar.f1863A, charSequence)) {
            cVar.f1863A = charSequence;
            cVar.f1864B = null;
            Bitmap bitmap = cVar.f1867E;
            if (bitmap != null) {
                bitmap.recycle();
                cVar.f1867E = null;
            }
            cVar.h(false);
        }
        if (this.f3618v0) {
            return;
        }
        j();
    }

    private void setPlaceholderTextEnabled(boolean z2) {
        if (this.f3613t == z2) {
            return;
        }
        if (z2) {
            C0285d0 c0285d0 = this.f3615u;
            if (c0285d0 != null) {
                this.b.addView(c0285d0);
                this.f3615u.setVisibility(0);
            }
        } else {
            C0285d0 c0285d1 = this.f3615u;
            if (c0285d1 != null) {
                c0285d1.setVisibility(8);
            }
            this.f3615u = null;
        }
        this.f3613t = z2;
    }

    public final void a(float f) {
        c cVar = this.f3620w0;
        if (cVar.b == f) {
            return;
        }
        if (this.f3626z0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f3626z0 = valueAnimator;
            valueAnimator.setInterpolator(com.bumptech.glide.c.O(getContext(), com.minhub.gamehub.R.attr.motionEasingEmphasizedInterpolator, B0.a.b));
            this.f3626z0.setDuration(com.bumptech.glide.c.N(getContext(), com.minhub.gamehub.R.attr.motionDurationMedium4, 167));
            this.f3626z0.addUpdateListener(new H0.c(6, this));
        }
        this.f3626z0.setFloatValues(cVar.b, f);
        this.f3626z0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i3, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.b;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        t();
        setEditText((EditText) view);
    }

    public final void b() {
        int i3;
        int i4;
        h hVar = this.f3566G;
        if (hVar == null) {
            return;
        }
        m mVar = hVar.b.f2383a;
        m mVar2 = this.f3571M;
        if (mVar != mVar2) {
            hVar.setShapeAppearanceModel(mVar2);
        }
        if (this.f3574P == 2 && (i3 = this.f3576R) > -1 && (i4 = this.f3579U) != 0) {
            h hVar2 = this.f3566G;
            hVar2.b.f2389j = i3;
            hVar2.invalidateSelf();
            hVar2.p(ColorStateList.valueOf(i4));
        }
        int iCompositeColors = this.f3580V;
        if (this.f3574P == 1) {
            iCompositeColors = ColorUtils.compositeColors(this.f3580V, com.bumptech.glide.c.k(getContext(), com.minhub.gamehub.R.attr.colorSurface, 0));
        }
        this.f3580V = iCompositeColors;
        this.f3566G.l(ColorStateList.valueOf(iCompositeColors));
        h hVar3 = this.K;
        if (hVar3 != null && this.f3570L != null) {
            if (this.f3576R > -1 && this.f3579U != 0) {
                hVar3.l(this.f3588e.isFocused() ? ColorStateList.valueOf(this.f3601l0) : ColorStateList.valueOf(this.f3579U));
                this.f3570L.l(ColorStateList.valueOf(this.f3579U));
            }
            invalidate();
        }
        s();
    }

    public final int c() {
        float fD;
        if (!this.f3563D) {
            return 0;
        }
        int i3 = this.f3574P;
        c cVar = this.f3620w0;
        if (i3 == 0) {
            fD = cVar.d();
        } else {
            if (i3 != 2) {
                return 0;
            }
            fD = cVar.d() / 2.0f;
        }
        return (int) fD;
    }

    public final C0175h d() {
        C0175h c0175h = new C0175h();
        c0175h.f2017d = com.bumptech.glide.c.N(getContext(), com.minhub.gamehub.R.attr.motionDurationShort2, 87);
        c0175h.f2018e = com.bumptech.glide.c.O(getContext(), com.minhub.gamehub.R.attr.motionEasingLinearInterpolator, B0.a.f290a);
        return c0175h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i3) {
        EditText editText = this.f3588e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i3);
            return;
        }
        if (this.f != null) {
            boolean z2 = this.f3565F;
            this.f3565F = false;
            CharSequence hint = editText.getHint();
            this.f3588e.setHint(this.f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i3);
                return;
            } finally {
                this.f3588e.setHint(hint);
                this.f3565F = z2;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i3);
        onProvideAutofillVirtualStructure(viewStructure, i3);
        FrameLayout frameLayout = this.b;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i4 = 0; i4 < frameLayout.getChildCount(); i4++) {
            View childAt = frameLayout.getChildAt(i4);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i4);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i3);
            if (childAt == this.f3588e) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.f3560B0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f3560B0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        h hVar;
        Canvas canvas2 = canvas;
        super.draw(canvas);
        boolean z2 = this.f3563D;
        c cVar = this.f3620w0;
        if (z2) {
            TextPaint textPaint = cVar.f1875N;
            RectF rectF = cVar.f1894e;
            int iSave = canvas2.save();
            if (cVar.f1864B != null && rectF.width() > 0.0f && rectF.height() > 0.0f) {
                textPaint.setTextSize(cVar.f1869G);
                float f = cVar.f1905p;
                float f3 = cVar.f1906q;
                float f4 = cVar.f1868F;
                if (f4 != 1.0f) {
                    canvas2.scale(f4, f4, f, f3);
                }
                if (cVar.f1893d0 <= 1 || cVar.f1865C) {
                    canvas2.translate(f, f3);
                    cVar.f1886Y.draw(canvas2);
                } else {
                    float lineStart = cVar.f1905p - cVar.f1886Y.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas2.translate(lineStart, f3);
                    float f5 = alpha;
                    textPaint.setAlpha((int) (cVar.f1889b0 * f5));
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 31) {
                        float f6 = cVar.f1870H;
                        float f7 = cVar.f1871I;
                        float f8 = cVar.f1872J;
                        int i4 = cVar.K;
                        textPaint.setShadowLayer(f6, f7, f8, ColorUtils.setAlphaComponent(i4, (textPaint.getAlpha() * Color.alpha(i4)) / 255));
                    }
                    cVar.f1886Y.draw(canvas2);
                    textPaint.setAlpha((int) (cVar.f1888a0 * f5));
                    if (i3 >= 31) {
                        float f9 = cVar.f1870H;
                        float f10 = cVar.f1871I;
                        float f11 = cVar.f1872J;
                        int i5 = cVar.K;
                        textPaint.setShadowLayer(f9, f10, f11, ColorUtils.setAlphaComponent(i5, (Color.alpha(i5) * textPaint.getAlpha()) / 255));
                    }
                    int lineBaseline = cVar.f1886Y.getLineBaseline(0);
                    CharSequence charSequence = cVar.f1891c0;
                    float f12 = lineBaseline;
                    canvas2.drawText(charSequence, 0, charSequence.length(), 0.0f, f12, textPaint);
                    if (i3 >= 31) {
                        textPaint.setShadowLayer(cVar.f1870H, cVar.f1871I, cVar.f1872J, cVar.K);
                    }
                    String strTrim = cVar.f1891c0.toString().trim();
                    if (strTrim.endsWith("…")) {
                        strTrim = strTrim.substring(0, strTrim.length() - 1);
                    }
                    String str = strTrim;
                    textPaint.setAlpha(alpha);
                    canvas2 = canvas;
                    canvas2.drawText(str, 0, Math.min(cVar.f1886Y.getLineEnd(0), str.length()), 0.0f, f12, (Paint) textPaint);
                }
                canvas2.restoreToCount(iSave);
            }
        }
        if (this.f3570L == null || (hVar = this.K) == null) {
            return;
        }
        hVar.draw(canvas2);
        if (this.f3588e.isFocused()) {
            Rect bounds = this.f3570L.getBounds();
            Rect bounds2 = this.K.getBounds();
            float f13 = cVar.b;
            int iCenterX = bounds2.centerX();
            bounds.left = B0.a.c(iCenterX, f13, bounds2.left);
            bounds.right = B0.a.c(iCenterX, f13, bounds2.right);
            this.f3570L.draw(canvas2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z2;
        ColorStateList colorStateList;
        if (this.f3558A0) {
            return;
        }
        this.f3558A0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        c cVar = this.f3620w0;
        if (cVar != null) {
            cVar.f1873L = drawableState;
            ColorStateList colorStateList2 = cVar.f1900k;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = cVar.f1899j) == null || !colorStateList.isStateful())) {
                z2 = false;
            } else {
                cVar.h(false);
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (this.f3588e != null) {
            u(ViewCompat.isLaidOut(this) && isEnabled(), false);
        }
        r();
        x();
        if (z2) {
            invalidate();
        }
        this.f3558A0 = false;
    }

    public final boolean e() {
        return this.f3563D && !TextUtils.isEmpty(this.f3564E) && (this.f3566G instanceof g);
    }

    public final h f(boolean z2) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_shape_corner_size_small_component);
        float f = z2 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f3588e;
        float popupElevation = editText instanceof p010d1.u ? ((p010d1.u) editText).getPopupElevation() : getResources().getDimensionPixelOffset(com.minhub.gamehub.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        Y0.k kVar = new Y0.k();
        Y0.k kVar2 = new Y0.k();
        Y0.k kVar3 = new Y0.k();
        Y0.k kVar4 = new Y0.k();
        int i3 = 0;
        e eVar = new e(i3);
        e eVar2 = new e(i3);
        e eVar3 = new e(i3);
        e eVar4 = new e(i3);
        Y0.a aVar = new Y0.a(f);
        Y0.a aVar2 = new Y0.a(f);
        Y0.a aVar3 = new Y0.a(dimensionPixelOffset);
        Y0.a aVar4 = new Y0.a(dimensionPixelOffset);
        m mVar = new m();
        mVar.f2429a = kVar;
        mVar.b = kVar2;
        mVar.f2430c = kVar3;
        mVar.f2431d = kVar4;
        mVar.f2432e = aVar;
        mVar.f = aVar2;
        mVar.g = aVar4;
        mVar.f2433h = aVar3;
        mVar.f2434i = eVar;
        mVar.f2435j = eVar2;
        mVar.f2436k = eVar3;
        mVar.f2437l = eVar4;
        EditText editText2 = this.f3588e;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof p010d1.u ? ((p010d1.u) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = h.f2397x;
            dropDownBackgroundTintList = ColorStateList.valueOf(com.bumptech.glide.c.l(context, h.class.getSimpleName(), com.minhub.gamehub.R.attr.colorSurface));
        }
        h hVar = new h();
        hVar.j(context);
        hVar.l(dropDownBackgroundTintList);
        hVar.k(popupElevation);
        hVar.setShapeAppearanceModel(mVar);
        Y0.g gVar = hVar.b;
        if (gVar.g == null) {
            gVar.g = new Rect();
        }
        hVar.b.g.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        hVar.invalidateSelf();
        return hVar;
    }

    public final int g(int i3, boolean z2) {
        int compoundPaddingLeft;
        if (z2 || getPrefixText() == null) {
            compoundPaddingLeft = (!z2 || getSuffixText() == null) ? this.f3588e.getCompoundPaddingLeft() : this.f3586d.c();
        } else {
            compoundPaddingLeft = this.f3584c.a();
        }
        return compoundPaddingLeft + i3;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f3588e;
        if (editText == null) {
            return super.getBaseline();
        }
        return c() + getPaddingTop() + editText.getBaseline();
    }

    public h getBoxBackground() {
        int i3 = this.f3574P;
        if (i3 == 1 || i3 == 2) {
            return this.f3566G;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f3580V;
    }

    public int getBoxBackgroundMode() {
        return this.f3574P;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f3575Q;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean zD = t.d(this);
        RectF rectF = this.f3583b0;
        return zD ? this.f3571M.f2433h.a(rectF) : this.f3571M.g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean zD = t.d(this);
        RectF rectF = this.f3583b0;
        return zD ? this.f3571M.g.a(rectF) : this.f3571M.f2433h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean zD = t.d(this);
        RectF rectF = this.f3583b0;
        return zD ? this.f3571M.f2432e.a(rectF) : this.f3571M.f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean zD = t.d(this);
        RectF rectF = this.f3583b0;
        return zD ? this.f3571M.f.a(rectF) : this.f3571M.f2432e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.n0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f3606o0;
    }

    public int getBoxStrokeWidth() {
        return this.f3577S;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f3578T;
    }

    public int getCounterMaxLength() {
        return this.f3602m;
    }

    public CharSequence getCounterOverflowDescription() {
        C0285d0 c0285d0;
        if (this.f3600l && this.f3604n && (c0285d0 = this.f3607p) != null) {
            return c0285d0.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f3557A;
    }

    public ColorStateList getCounterTextColor() {
        return this.f3625z;
    }

    public ColorStateList getCursorColor() {
        return this.f3559B;
    }

    public ColorStateList getCursorErrorColor() {
        return this.f3561C;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f3597j0;
    }

    public EditText getEditText() {
        return this.f3588e;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f3586d.f3911h.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f3586d.f3911h.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.f3586d.f3917n;
    }

    public int getEndIconMode() {
        return this.f3586d.f3913j;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.f3586d.f3918o;
    }

    public CheckableImageButton getEndIconView() {
        return this.f3586d.f3911h;
    }

    public CharSequence getError() {
        r rVar = this.f3598k;
        if (rVar.f3950q) {
            return rVar.f3949p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f3598k.f3953t;
    }

    public CharSequence getErrorContentDescription() {
        return this.f3598k.f3952s;
    }

    public int getErrorCurrentTextColors() {
        C0285d0 c0285d0 = this.f3598k.f3951r;
        if (c0285d0 != null) {
            return c0285d0.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f3586d.f3909d.getDrawable();
    }

    public CharSequence getHelperText() {
        r rVar = this.f3598k;
        if (rVar.f3957x) {
            return rVar.f3956w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        C0285d0 c0285d0 = this.f3598k.f3958y;
        if (c0285d0 != null) {
            return c0285d0.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.f3563D) {
            return this.f3564E;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.f3620w0.d();
    }

    public final int getHintCurrentCollapsedTextColor() {
        c cVar = this.f3620w0;
        return cVar.e(cVar.f1900k);
    }

    public ColorStateList getHintTextColor() {
        return this.f3599k0;
    }

    public z getLengthCounter() {
        return this.f3605o;
    }

    public int getMaxEms() {
        return this.f3592h;
    }

    public int getMaxWidth() {
        return this.f3596j;
    }

    public int getMinEms() {
        return this.g;
    }

    public int getMinWidth() {
        return this.f3594i;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f3586d.f3911h.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f3586d.f3911h.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f3613t) {
            return this.f3612s;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f3619w;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f3617v;
    }

    public CharSequence getPrefixText() {
        return this.f3584c.f3971d;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f3584c.f3970c.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f3584c.f3970c;
    }

    public m getShapeAppearanceModel() {
        return this.f3571M;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f3584c.f3972e.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f3584c.f3972e.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f3584c.f3973h;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.f3584c.f3974i;
    }

    public CharSequence getSuffixText() {
        return this.f3586d.f3920q;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f3586d.f3921r.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f3586d.f3921r;
    }

    public Typeface getTypeface() {
        return this.f3585c0;
    }

    public final int h(int i3, boolean z2) {
        int compoundPaddingRight;
        if (z2 || getSuffixText() == null) {
            compoundPaddingRight = (!z2 || getPrefixText() == null) ? this.f3588e.getCompoundPaddingRight() : this.f3584c.a();
        } else {
            compoundPaddingRight = this.f3586d.c();
        }
        return i3 - compoundPaddingRight;
    }

    public final void i() {
        int i3 = this.f3574P;
        if (i3 == 0) {
            this.f3566G = null;
            this.K = null;
            this.f3570L = null;
        } else if (i3 == 1) {
            this.f3566G = new h(this.f3571M);
            this.K = new h();
            this.f3570L = new h();
        } else {
            if (i3 != 2) {
                throw new IllegalArgumentException(this.f3574P + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.f3563D || (this.f3566G instanceof g)) {
                this.f3566G = new h(this.f3571M);
            } else {
                m mVar = this.f3571M;
                int i4 = g.f3888z;
                if (mVar == null) {
                    mVar = new m();
                }
                f fVar = new f(mVar, new RectF());
                g gVar = new g(fVar);
                gVar.f3889y = fVar;
                this.f3566G = gVar;
            }
            this.K = null;
            this.f3570L = null;
        }
        s();
        x();
        if (this.f3574P == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.f3575Q = getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (d.K(getContext())) {
                this.f3575Q = getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f3588e != null && this.f3574P == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.f3588e;
                ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.f3588e), getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (d.K(getContext())) {
                EditText editText2 = this.f3588e;
                ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.f3588e), getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.f3574P != 0) {
            t();
        }
        EditText editText3 = this.f3588e;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i5 = this.f3574P;
                if (i5 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i5 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008d  */
    public final void j() {
        float f;
        float f3;
        float f4;
        RectF rectF;
        float f5;
        int i3;
        float f6;
        int i4;
        if (e()) {
            int width = this.f3588e.getWidth();
            int gravity = this.f3588e.getGravity();
            c cVar = this.f3620w0;
            boolean zB = cVar.b(cVar.f1863A);
            cVar.f1865C = zB;
            Rect rect = cVar.f1892d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & GravityCompat.END) == 8388613 || (gravity & 5) == 5) {
                    if (zB) {
                        i4 = rect.left;
                        f4 = i4;
                    } else {
                        f = rect.right;
                        f3 = cVar.Z;
                    }
                } else if (zB) {
                    f = rect.right;
                    f3 = cVar.Z;
                } else {
                    i4 = rect.left;
                    f4 = i4;
                }
                float fMax = Math.max(f4, rect.left);
                rectF = this.f3583b0;
                rectF.left = fMax;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f5 = (width / 2.0f) + (cVar.Z / 2.0f);
                } else if ((gravity & GravityCompat.END) == 8388613 || (gravity & 5) == 5) {
                    if (cVar.f1865C) {
                        f6 = cVar.Z;
                        f5 = f6 + fMax;
                    } else {
                        i3 = rect.right;
                        f5 = i3;
                    }
                } else if (cVar.f1865C) {
                    i3 = rect.right;
                    f5 = i3;
                } else {
                    f6 = cVar.Z;
                    f5 = f6 + fMax;
                }
                rectF.right = Math.min(f5, rect.right);
                rectF.bottom = cVar.d() + rect.top;
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f7 = rectF.left;
                float f8 = this.f3573O;
                rectF.left = f7 - f8;
                rectF.right += f8;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f3576R);
                g gVar = (g) this.f3566G;
                gVar.getClass();
                gVar.t(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f = width / 2.0f;
            f3 = cVar.Z / 2.0f;
            f4 = f - f3;
            float fMax2 = Math.max(f4, rect.left);
            rectF = this.f3583b0;
            rectF.left = fMax2;
            rectF.top = rect.top;
            if (gravity != 17) {
                f5 = (width / 2.0f) + (cVar.Z / 2.0f);
            } else {
                f5 = (width / 2.0f) + (cVar.Z / 2.0f);
            }
            rectF.right = Math.min(f5, rect.right);
            rectF.bottom = cVar.d() + rect.top;
            if (rectF.width() > 0.0f) {
            }
        }
    }

    public final void l(C0285d0 c0285d0, int i3) {
        try {
            TextViewCompat.setTextAppearance(c0285d0, i3);
            if (c0285d0.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        TextViewCompat.setTextAppearance(c0285d0, com.minhub.gamehub.R.style.TextAppearance_AppCompat_Caption);
        c0285d0.setTextColor(ContextCompat.getColor(getContext(), com.minhub.gamehub.R.color.design_error));
    }

    public final boolean m() {
        r rVar = this.f3598k;
        return (rVar.f3948o != 1 || rVar.f3951r == null || TextUtils.isEmpty(rVar.f3949p)) ? false : true;
    }

    public final void n(Editable editable) {
        ((u) this.f3605o).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z2 = this.f3604n;
        int i3 = this.f3602m;
        if (i3 == -1) {
            this.f3607p.setText(String.valueOf(length));
            this.f3607p.setContentDescription(null);
            this.f3604n = false;
        } else {
            this.f3604n = length > i3;
            Context context = getContext();
            this.f3607p.setContentDescription(context.getString(this.f3604n ? com.minhub.gamehub.R.string.character_counter_overflowed_content_description : com.minhub.gamehub.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.f3602m)));
            if (z2 != this.f3604n) {
                o();
            }
            this.f3607p.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(com.minhub.gamehub.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.f3602m))));
        }
        if (this.f3588e == null || z2 == this.f3604n) {
            return;
        }
        u(false, false);
        x();
        r();
    }

    public final void o() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        C0285d0 c0285d0 = this.f3607p;
        if (c0285d0 != null) {
            l(c0285d0, this.f3604n ? this.f3608q : this.f3610r);
            if (!this.f3604n && (colorStateList2 = this.f3625z) != null) {
                this.f3607p.setTextColor(colorStateList2);
            }
            if (!this.f3604n || (colorStateList = this.f3557A) == null) {
                return;
            }
            this.f3607p.setTextColor(colorStateList);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3620w0.g(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iMax;
        n nVar = this.f3586d;
        nVar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z2 = false;
        this.f3562C0 = false;
        if (this.f3588e != null && this.f3588e.getMeasuredHeight() < (iMax = Math.max(nVar.getMeasuredHeight(), this.f3584c.getMeasuredHeight()))) {
            this.f3588e.setMinimumHeight(iMax);
            z2 = true;
        }
        boolean zQ = q();
        if (z2 || zQ) {
            this.f3588e.post(new RunnableC0068g1(14, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        EditText editText = this.f3588e;
        if (editText != null) {
            ThreadLocal threadLocal = R0.d.f1916a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.f3581W;
            rect.set(0, 0, width, height);
            R0.d.b(this, editText, rect);
            h hVar = this.K;
            if (hVar != null) {
                int i7 = rect.bottom;
                hVar.setBounds(rect.left, i7 - this.f3577S, rect.right, i7);
            }
            h hVar2 = this.f3570L;
            if (hVar2 != null) {
                int i8 = rect.bottom;
                hVar2.setBounds(rect.left, i8 - this.f3578T, rect.right, i8);
            }
            if (this.f3563D) {
                float textSize = this.f3588e.getTextSize();
                c cVar = this.f3620w0;
                if (cVar.f1897h != textSize) {
                    cVar.f1897h = textSize;
                    cVar.h(false);
                }
                int gravity = this.f3588e.getGravity();
                int i9 = (gravity & (-113)) | 48;
                if (cVar.g != i9) {
                    cVar.g = i9;
                    cVar.h(false);
                }
                if (cVar.f != gravity) {
                    cVar.f = gravity;
                    cVar.h(false);
                }
                if (this.f3588e == null) {
                    throw new IllegalStateException();
                }
                boolean zD = t.d(this);
                int i10 = rect.bottom;
                Rect rect2 = this.f3582a0;
                rect2.bottom = i10;
                int i11 = this.f3574P;
                if (i11 == 1) {
                    rect2.left = g(rect.left, zD);
                    rect2.top = rect.top + this.f3575Q;
                    rect2.right = h(rect.right, zD);
                } else if (i11 != 2) {
                    rect2.left = g(rect.left, zD);
                    rect2.top = getPaddingTop();
                    rect2.right = h(rect.right, zD);
                } else {
                    rect2.left = this.f3588e.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - c();
                    rect2.right = rect.right - this.f3588e.getPaddingRight();
                }
                int i12 = rect2.left;
                int i13 = rect2.top;
                int i14 = rect2.right;
                int i15 = rect2.bottom;
                Rect rect3 = cVar.f1892d;
                if (rect3.left != i12 || rect3.top != i13 || rect3.right != i14 || rect3.bottom != i15) {
                    rect3.set(i12, i13, i14, i15);
                    cVar.f1874M = true;
                }
                if (this.f3588e == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = cVar.f1876O;
                textPaint.setTextSize(cVar.f1897h);
                textPaint.setTypeface(cVar.f1910u);
                textPaint.setLetterSpacing(cVar.f1884W);
                float f = -textPaint.ascent();
                rect2.left = this.f3588e.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.f3574P != 1 || this.f3588e.getMinLines() > 1) ? rect.top + this.f3588e.getCompoundPaddingTop() : (int) (rect.centerY() - (f / 2.0f));
                rect2.right = rect.right - this.f3588e.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.f3574P != 1 || this.f3588e.getMinLines() > 1) ? rect.bottom - this.f3588e.getCompoundPaddingBottom() : (int) (rect2.top + f);
                rect2.bottom = compoundPaddingBottom;
                int i16 = rect2.left;
                int i17 = rect2.top;
                int i18 = rect2.right;
                Rect rect4 = cVar.f1890c;
                if (rect4.left != i16 || rect4.top != i17 || rect4.right != i18 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i16, i17, i18, compoundPaddingBottom);
                    cVar.f1874M = true;
                }
                cVar.h(false);
                if (!e() || this.f3618v0) {
                    return;
                }
                j();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        EditText editText;
        super.onMeasure(i3, i4);
        boolean z2 = this.f3562C0;
        n nVar = this.f3586d;
        if (!z2) {
            nVar.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f3562C0 = true;
        }
        if (this.f3615u != null && (editText = this.f3588e) != null) {
            this.f3615u.setGravity(editText.getGravity());
            this.f3615u.setPadding(this.f3588e.getCompoundPaddingLeft(), this.f3588e.getCompoundPaddingTop(), this.f3588e.getCompoundPaddingRight(), this.f3588e.getCompoundPaddingBottom());
        }
        nVar.m();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof A)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        A a3 = (A) parcelable;
        super.onRestoreInstanceState(a3.b);
        setError(a3.f3874d);
        if (a3.f3875e) {
            post(new u0(9, this));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i3) {
        super.onRtlPropertiesChanged(i3);
        boolean z2 = i3 == 1;
        if (z2 != this.f3572N) {
            Y0.c cVar = this.f3571M.f2432e;
            RectF rectF = this.f3583b0;
            float fA = cVar.a(rectF);
            float fA2 = this.f3571M.f.a(rectF);
            float fA3 = this.f3571M.f2433h.a(rectF);
            float fA4 = this.f3571M.g.a(rectF);
            m mVar = this.f3571M;
            p000a.a aVar = mVar.f2429a;
            p000a.a aVar2 = mVar.b;
            p000a.a aVar3 = mVar.f2431d;
            p000a.a aVar4 = mVar.f2430c;
            e eVar = new e(0);
            e eVar2 = new e(0);
            e eVar3 = new e(0);
            e eVar4 = new e(0);
            Y0.a aVar5 = new Y0.a(fA2);
            Y0.a aVar6 = new Y0.a(fA);
            Y0.a aVar7 = new Y0.a(fA4);
            Y0.a aVar8 = new Y0.a(fA3);
            m mVar2 = new m();
            mVar2.f2429a = aVar2;
            mVar2.b = aVar;
            mVar2.f2430c = aVar3;
            mVar2.f2431d = aVar4;
            mVar2.f2432e = aVar5;
            mVar2.f = aVar6;
            mVar2.g = aVar8;
            mVar2.f2433h = aVar7;
            mVar2.f2434i = eVar;
            mVar2.f2435j = eVar2;
            mVar2.f2436k = eVar3;
            mVar2.f2437l = eVar4;
            this.f3572N = z2;
            setShapeAppearanceModel(mVar2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        A a3 = new A(super.onSaveInstanceState());
        if (m()) {
            a3.f3874d = getError();
        }
        n nVar = this.f3586d;
        a3.f3875e = nVar.f3913j != 0 && nVar.f3911h.f3475e;
        return a3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final void p() {
        ColorStateList colorStateList;
        ColorStateList colorStateListValueOf = this.f3559B;
        if (colorStateListValueOf == null) {
            Context context = getContext();
            TypedValue typedValueH = com.bumptech.glide.c.H(context, com.minhub.gamehub.R.attr.colorControlActivated);
            if (typedValueH != null) {
                int i3 = typedValueH.resourceId;
                if (i3 != 0) {
                    colorStateListValueOf = ContextCompat.getColorStateList(context, i3);
                } else {
                    int i4 = typedValueH.data;
                    if (i4 != 0) {
                        colorStateListValueOf = ColorStateList.valueOf(i4);
                    } else {
                        colorStateListValueOf = null;
                    }
                }
            } else {
                colorStateListValueOf = null;
            }
        }
        EditText editText = this.f3588e;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = DrawableCompat.wrap(this.f3588e.getTextCursorDrawable()).mutate();
        if ((m() || (this.f3607p != null && this.f3604n)) && (colorStateList = this.f3561C) != null) {
            colorStateListValueOf = colorStateList;
        }
        DrawableCompat.setTintList(drawableMutate, colorStateListValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    public final boolean q() {
        boolean z2;
        if (this.f3588e == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z3 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            w wVar = this.f3584c;
            if (wVar.getMeasuredWidth() > 0) {
                int measuredWidth = wVar.getMeasuredWidth() - this.f3588e.getPaddingLeft();
                if (this.f3587d0 == null || this.f3589e0 != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.f3587d0 = colorDrawable;
                    this.f3589e0 = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f3588e);
                Drawable drawable = compoundDrawablesRelative[0];
                ColorDrawable colorDrawable2 = this.f3587d0;
                if (drawable != colorDrawable2) {
                    TextViewCompat.setCompoundDrawablesRelative(this.f3588e, colorDrawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else if (this.f3587d0 != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f3588e);
                TextViewCompat.setCompoundDrawablesRelative(this.f3588e, null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f3587d0 = null;
                z2 = true;
            } else {
                z2 = false;
            }
        } else if (this.f3587d0 != null) {
            Drawable[] compoundDrawablesRelative3 = TextViewCompat.getCompoundDrawablesRelative(this.f3588e);
            TextViewCompat.setCompoundDrawablesRelative(this.f3588e, null, compoundDrawablesRelative3[1], compoundDrawablesRelative3[2], compoundDrawablesRelative3[3]);
            this.f3587d0 = null;
            z2 = true;
        } else {
            z2 = false;
        }
        n nVar = this.f3586d;
        if ((nVar.e() || ((nVar.f3913j != 0 && nVar.d()) || nVar.f3920q != null)) && nVar.getMeasuredWidth() > 0) {
            int measuredWidth2 = nVar.f3921r.getMeasuredWidth() - this.f3588e.getPaddingRight();
            if (nVar.e()) {
                checkableImageButton = nVar.f3909d;
            } else if (nVar.f3913j != 0 && nVar.d()) {
                checkableImageButton = nVar.f3911h;
            }
            if (checkableImageButton != null) {
                measuredWidth2 = MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] compoundDrawablesRelative4 = TextViewCompat.getCompoundDrawablesRelative(this.f3588e);
            ColorDrawable colorDrawable3 = this.f3591g0;
            if (colorDrawable3 != null && this.f3593h0 != measuredWidth2) {
                this.f3593h0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.setCompoundDrawablesRelative(this.f3588e, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f3591g0, compoundDrawablesRelative4[3]);
                return true;
            }
            if (colorDrawable3 == null) {
                ColorDrawable colorDrawable4 = new ColorDrawable();
                this.f3591g0 = colorDrawable4;
                this.f3593h0 = measuredWidth2;
                colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
            }
            Drawable drawable2 = compoundDrawablesRelative4[2];
            ColorDrawable colorDrawable5 = this.f3591g0;
            if (drawable2 != colorDrawable5) {
                this.f3595i0 = drawable2;
                TextViewCompat.setCompoundDrawablesRelative(this.f3588e, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], colorDrawable5, compoundDrawablesRelative4[3]);
                return true;
            }
        } else if (this.f3591g0 != null) {
            Drawable[] compoundDrawablesRelative5 = TextViewCompat.getCompoundDrawablesRelative(this.f3588e);
            if (compoundDrawablesRelative5[2] == this.f3591g0) {
                TextViewCompat.setCompoundDrawablesRelative(this.f3588e, compoundDrawablesRelative5[0], compoundDrawablesRelative5[1], this.f3595i0, compoundDrawablesRelative5[3]);
            } else {
                z3 = z2;
            }
            this.f3591g0 = null;
            return z3;
        }
        return z2;
    }

    public final void r() {
        Drawable background;
        C0285d0 c0285d0;
        EditText editText = this.f3588e;
        if (editText == null || this.f3574P != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = AbstractC0309p0.f4896a;
        Drawable drawableMutate = background.mutate();
        if (m()) {
            drawableMutate.setColorFilter(C0321w.c(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f3604n && (c0285d0 = this.f3607p) != null) {
            drawableMutate.setColorFilter(C0321w.c(c0285d0.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(drawableMutate);
            this.f3588e.refreshDrawableState();
        }
    }

    public final void s() {
        EditText editText = this.f3588e;
        if (editText == null || this.f3566G == null) {
            return;
        }
        if ((this.f3569J || editText.getBackground() == null) && this.f3574P != 0) {
            ViewCompat.setBackground(this.f3588e, getEditTextBoxBackground());
            this.f3569J = true;
        }
    }

    public void setBoxBackgroundColor(int i3) {
        if (this.f3580V != i3) {
            this.f3580V = i3;
            this.p0 = i3;
            this.f3611r0 = i3;
            this.s0 = i3;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i3) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i3));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.p0 = defaultColor;
        this.f3580V = defaultColor;
        this.f3609q0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f3611r0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.s0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i3) {
        if (i3 == this.f3574P) {
            return;
        }
        this.f3574P = i3;
        if (this.f3588e != null) {
            i();
        }
    }

    public void setBoxCollapsedPaddingTop(int i3) {
        this.f3575Q = i3;
    }

    public void setBoxCornerFamily(int i3) {
        l lVarE = this.f3571M.e();
        Y0.c cVar = this.f3571M.f2432e;
        lVarE.f2420a = com.bumptech.glide.c.i(i3);
        lVarE.f2423e = cVar;
        Y0.c cVar2 = this.f3571M.f;
        lVarE.b = com.bumptech.glide.c.i(i3);
        lVarE.f = cVar2;
        Y0.c cVar3 = this.f3571M.f2433h;
        lVarE.f2422d = com.bumptech.glide.c.i(i3);
        lVarE.f2424h = cVar3;
        Y0.c cVar4 = this.f3571M.g;
        lVarE.f2421c = com.bumptech.glide.c.i(i3);
        lVarE.g = cVar4;
        this.f3571M = lVarE.a();
        b();
    }

    public void setBoxStrokeColor(int i3) {
        if (this.n0 != i3) {
            this.n0 = i3;
            x();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f3601l0 = colorStateList.getDefaultColor();
            this.f3614t0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f3603m0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.n0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.n0 != colorStateList.getDefaultColor()) {
            this.n0 = colorStateList.getDefaultColor();
        }
        x();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f3606o0 != colorStateList) {
            this.f3606o0 = colorStateList;
            x();
        }
    }

    public void setBoxStrokeWidth(int i3) {
        this.f3577S = i3;
        x();
    }

    public void setBoxStrokeWidthFocused(int i3) {
        this.f3578T = i3;
        x();
    }

    public void setBoxStrokeWidthFocusedResource(int i3) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i3));
    }

    public void setBoxStrokeWidthResource(int i3) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i3));
    }

    public void setCounterEnabled(boolean z2) {
        if (this.f3600l != z2) {
            r rVar = this.f3598k;
            if (z2) {
                C0285d0 c0285d0 = new C0285d0(getContext(), null);
                this.f3607p = c0285d0;
                c0285d0.setId(com.minhub.gamehub.R.id.textinput_counter);
                Typeface typeface = this.f3585c0;
                if (typeface != null) {
                    this.f3607p.setTypeface(typeface);
                }
                this.f3607p.setMaxLines(1);
                rVar.a(this.f3607p, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f3607p.getLayoutParams(), getResources().getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_textinput_counter_margin_start));
                o();
                if (this.f3607p != null) {
                    EditText editText = this.f3588e;
                    n(editText != null ? editText.getText() : null);
                }
            } else {
                rVar.g(this.f3607p, 2);
                this.f3607p = null;
            }
            this.f3600l = z2;
        }
    }

    public void setCounterMaxLength(int i3) {
        if (this.f3602m != i3) {
            if (i3 > 0) {
                this.f3602m = i3;
            } else {
                this.f3602m = -1;
            }
            if (!this.f3600l || this.f3607p == null) {
                return;
            }
            EditText editText = this.f3588e;
            n(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i3) {
        if (this.f3608q != i3) {
            this.f3608q = i3;
            o();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f3557A != colorStateList) {
            this.f3557A = colorStateList;
            o();
        }
    }

    public void setCounterTextAppearance(int i3) {
        if (this.f3610r != i3) {
            this.f3610r = i3;
            o();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f3625z != colorStateList) {
            this.f3625z = colorStateList;
            o();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.f3559B != colorStateList) {
            this.f3559B = colorStateList;
            p();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.f3561C != colorStateList) {
            this.f3561C = colorStateList;
            if (m() || (this.f3607p != null && this.f3604n)) {
                p();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f3597j0 = colorStateList;
        this.f3599k0 = colorStateList;
        if (this.f3588e != null) {
            u(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        k(this, z2);
        super.setEnabled(z2);
    }

    public void setEndIconActivated(boolean z2) {
        this.f3586d.f3911h.setActivated(z2);
    }

    public void setEndIconCheckable(boolean z2) {
        this.f3586d.f3911h.setCheckable(z2);
    }

    public void setEndIconContentDescription(int i3) {
        n nVar = this.f3586d;
        CharSequence text = i3 != 0 ? nVar.getResources().getText(i3) : null;
        CheckableImageButton checkableImageButton = nVar.f3911h;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i3) {
        n nVar = this.f3586d;
        Drawable drawableV = i3 != 0 ? d.v(nVar.getContext(), i3) : null;
        TextInputLayout textInputLayout = nVar.b;
        CheckableImageButton checkableImageButton = nVar.f3911h;
        checkableImageButton.setImageDrawable(drawableV);
        if (drawableV != null) {
            com.bumptech.glide.c.a(textInputLayout, checkableImageButton, nVar.f3915l, nVar.f3916m);
            com.bumptech.glide.c.F(textInputLayout, checkableImageButton, nVar.f3915l);
        }
    }

    public void setEndIconMinSize(int i3) {
        n nVar = this.f3586d;
        if (i3 < 0) {
            nVar.getClass();
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i3 != nVar.f3917n) {
            nVar.f3917n = i3;
            CheckableImageButton checkableImageButton = nVar.f3911h;
            checkableImageButton.setMinimumWidth(i3);
            checkableImageButton.setMinimumHeight(i3);
            CheckableImageButton checkableImageButton2 = nVar.f3909d;
            checkableImageButton2.setMinimumWidth(i3);
            checkableImageButton2.setMinimumHeight(i3);
        }
    }

    public void setEndIconMode(int i3) {
        this.f3586d.g(i3);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        n nVar = this.f3586d;
        CheckableImageButton checkableImageButton = nVar.f3911h;
        View.OnLongClickListener onLongClickListener = nVar.f3919p;
        checkableImageButton.setOnClickListener(onClickListener);
        com.bumptech.glide.c.S(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        n nVar = this.f3586d;
        nVar.f3919p = onLongClickListener;
        CheckableImageButton checkableImageButton = nVar.f3911h;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        com.bumptech.glide.c.S(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        n nVar = this.f3586d;
        nVar.f3918o = scaleType;
        nVar.f3911h.setScaleType(scaleType);
        nVar.f3909d.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        n nVar = this.f3586d;
        if (nVar.f3915l != colorStateList) {
            nVar.f3915l = colorStateList;
            com.bumptech.glide.c.a(nVar.b, nVar.f3911h, colorStateList, nVar.f3916m);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        n nVar = this.f3586d;
        if (nVar.f3916m != mode) {
            nVar.f3916m = mode;
            com.bumptech.glide.c.a(nVar.b, nVar.f3911h, nVar.f3915l, mode);
        }
    }

    public void setEndIconVisible(boolean z2) {
        this.f3586d.h(z2);
    }

    public void setError(CharSequence charSequence) {
        r rVar = this.f3598k;
        if (!rVar.f3950q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            rVar.f();
            return;
        }
        rVar.c();
        rVar.f3949p = charSequence;
        rVar.f3951r.setText(charSequence);
        int i3 = rVar.f3947n;
        if (i3 != 1) {
            rVar.f3948o = 1;
        }
        rVar.i(i3, rVar.f3948o, rVar.h(rVar.f3951r, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i3) {
        r rVar = this.f3598k;
        rVar.f3953t = i3;
        C0285d0 c0285d0 = rVar.f3951r;
        if (c0285d0 != null) {
            ViewCompat.setAccessibilityLiveRegion(c0285d0, i3);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        r rVar = this.f3598k;
        rVar.f3952s = charSequence;
        C0285d0 c0285d0 = rVar.f3951r;
        if (c0285d0 != null) {
            c0285d0.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z2) {
        r rVar = this.f3598k;
        TextInputLayout textInputLayout = rVar.f3941h;
        if (rVar.f3950q == z2) {
            return;
        }
        rVar.c();
        if (z2) {
            C0285d0 c0285d0 = new C0285d0(rVar.g, null);
            rVar.f3951r = c0285d0;
            c0285d0.setId(com.minhub.gamehub.R.id.textinput_error);
            rVar.f3951r.setTextAlignment(5);
            Typeface typeface = rVar.f3936B;
            if (typeface != null) {
                rVar.f3951r.setTypeface(typeface);
            }
            int i3 = rVar.f3954u;
            rVar.f3954u = i3;
            C0285d0 c0285d1 = rVar.f3951r;
            if (c0285d1 != null) {
                rVar.f3941h.l(c0285d1, i3);
            }
            ColorStateList colorStateList = rVar.f3955v;
            rVar.f3955v = colorStateList;
            C0285d0 c0285d2 = rVar.f3951r;
            if (c0285d2 != null && colorStateList != null) {
                c0285d2.setTextColor(colorStateList);
            }
            CharSequence charSequence = rVar.f3952s;
            rVar.f3952s = charSequence;
            C0285d0 c0285d3 = rVar.f3951r;
            if (c0285d3 != null) {
                c0285d3.setContentDescription(charSequence);
            }
            int i4 = rVar.f3953t;
            rVar.f3953t = i4;
            C0285d0 c0285d4 = rVar.f3951r;
            if (c0285d4 != null) {
                ViewCompat.setAccessibilityLiveRegion(c0285d4, i4);
            }
            rVar.f3951r.setVisibility(4);
            rVar.a(rVar.f3951r, 0);
        } else {
            rVar.f();
            rVar.g(rVar.f3951r, 0);
            rVar.f3951r = null;
            textInputLayout.r();
            textInputLayout.x();
        }
        rVar.f3950q = z2;
    }

    public void setErrorIconDrawable(int i3) {
        n nVar = this.f3586d;
        nVar.i(i3 != 0 ? d.v(nVar.getContext(), i3) : null);
        com.bumptech.glide.c.F(nVar.b, nVar.f3909d, nVar.f3910e);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        n nVar = this.f3586d;
        CheckableImageButton checkableImageButton = nVar.f3909d;
        View.OnLongClickListener onLongClickListener = nVar.g;
        checkableImageButton.setOnClickListener(onClickListener);
        com.bumptech.glide.c.S(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        n nVar = this.f3586d;
        nVar.g = onLongClickListener;
        CheckableImageButton checkableImageButton = nVar.f3909d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        com.bumptech.glide.c.S(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        n nVar = this.f3586d;
        if (nVar.f3910e != colorStateList) {
            nVar.f3910e = colorStateList;
            com.bumptech.glide.c.a(nVar.b, nVar.f3909d, colorStateList, nVar.f);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        n nVar = this.f3586d;
        if (nVar.f != mode) {
            nVar.f = mode;
            com.bumptech.glide.c.a(nVar.b, nVar.f3909d, nVar.f3910e, mode);
        }
    }

    public void setErrorTextAppearance(int i3) {
        r rVar = this.f3598k;
        rVar.f3954u = i3;
        C0285d0 c0285d0 = rVar.f3951r;
        if (c0285d0 != null) {
            rVar.f3941h.l(c0285d0, i3);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        r rVar = this.f3598k;
        rVar.f3955v = colorStateList;
        C0285d0 c0285d0 = rVar.f3951r;
        if (c0285d0 == null || colorStateList == null) {
            return;
        }
        c0285d0.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z2) {
        if (this.f3622x0 != z2) {
            this.f3622x0 = z2;
            u(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        r rVar = this.f3598k;
        if (zIsEmpty) {
            if (rVar.f3957x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!rVar.f3957x) {
            setHelperTextEnabled(true);
        }
        rVar.c();
        rVar.f3956w = charSequence;
        rVar.f3958y.setText(charSequence);
        int i3 = rVar.f3947n;
        if (i3 != 2) {
            rVar.f3948o = 2;
        }
        rVar.i(i3, rVar.f3948o, rVar.h(rVar.f3958y, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        r rVar = this.f3598k;
        rVar.f3935A = colorStateList;
        C0285d0 c0285d0 = rVar.f3958y;
        if (c0285d0 == null || colorStateList == null) {
            return;
        }
        c0285d0.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z2) {
        r rVar = this.f3598k;
        TextInputLayout textInputLayout = rVar.f3941h;
        if (rVar.f3957x == z2) {
            return;
        }
        rVar.c();
        if (z2) {
            C0285d0 c0285d0 = new C0285d0(rVar.g, null);
            rVar.f3958y = c0285d0;
            c0285d0.setId(com.minhub.gamehub.R.id.textinput_helper_text);
            rVar.f3958y.setTextAlignment(5);
            Typeface typeface = rVar.f3936B;
            if (typeface != null) {
                rVar.f3958y.setTypeface(typeface);
            }
            rVar.f3958y.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(rVar.f3958y, 1);
            int i3 = rVar.f3959z;
            rVar.f3959z = i3;
            C0285d0 c0285d1 = rVar.f3958y;
            if (c0285d1 != null) {
                TextViewCompat.setTextAppearance(c0285d1, i3);
            }
            ColorStateList colorStateList = rVar.f3935A;
            rVar.f3935A = colorStateList;
            C0285d0 c0285d2 = rVar.f3958y;
            if (c0285d2 != null && colorStateList != null) {
                c0285d2.setTextColor(colorStateList);
            }
            rVar.a(rVar.f3958y, 1);
            rVar.f3958y.setAccessibilityDelegate(new q(rVar));
        } else {
            rVar.c();
            int i4 = rVar.f3947n;
            if (i4 == 2) {
                rVar.f3948o = 0;
            }
            rVar.i(i4, rVar.f3948o, rVar.h(rVar.f3958y, ""));
            rVar.g(rVar.f3958y, 1);
            rVar.f3958y = null;
            textInputLayout.r();
            textInputLayout.x();
        }
        rVar.f3957x = z2;
    }

    public void setHelperTextTextAppearance(int i3) {
        r rVar = this.f3598k;
        rVar.f3959z = i3;
        C0285d0 c0285d0 = rVar.f3958y;
        if (c0285d0 != null) {
            TextViewCompat.setTextAppearance(c0285d0, i3);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.f3563D) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z2) {
        this.f3624y0 = z2;
    }

    public void setHintEnabled(boolean z2) {
        if (z2 != this.f3563D) {
            this.f3563D = z2;
            if (z2) {
                CharSequence hint = this.f3588e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f3564E)) {
                        setHint(hint);
                    }
                    this.f3588e.setHint((CharSequence) null);
                }
                this.f3565F = true;
            } else {
                this.f3565F = false;
                if (!TextUtils.isEmpty(this.f3564E) && TextUtils.isEmpty(this.f3588e.getHint())) {
                    this.f3588e.setHint(this.f3564E);
                }
                setHintInternal(null);
            }
            if (this.f3588e != null) {
                t();
            }
        }
    }

    public void setHintTextAppearance(int i3) {
        c cVar = this.f3620w0;
        TextInputLayout textInputLayout = cVar.f1887a;
        V0.d dVar = new V0.d(textInputLayout.getContext(), i3);
        ColorStateList colorStateList = dVar.f2249j;
        if (colorStateList != null) {
            cVar.f1900k = colorStateList;
        }
        float f = dVar.f2250k;
        if (f != 0.0f) {
            cVar.f1898i = f;
        }
        ColorStateList colorStateList2 = dVar.f2243a;
        if (colorStateList2 != null) {
            cVar.f1882U = colorStateList2;
        }
        cVar.f1880S = dVar.f2246e;
        cVar.f1881T = dVar.f;
        cVar.f1879R = dVar.g;
        cVar.f1883V = dVar.f2248i;
        V0.a aVar = cVar.f1914y;
        if (aVar != null) {
            aVar.f2237o = true;
        }
        C0009b c0009b = new C0009b(cVar);
        dVar.a();
        cVar.f1914y = new V0.a(c0009b, dVar.f2253n);
        dVar.c(textInputLayout.getContext(), cVar.f1914y);
        cVar.h(false);
        this.f3599k0 = cVar.f1900k;
        if (this.f3588e != null) {
            u(false, false);
            t();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f3599k0 != colorStateList) {
            if (this.f3597j0 == null) {
                c cVar = this.f3620w0;
                if (cVar.f1900k != colorStateList) {
                    cVar.f1900k = colorStateList;
                    cVar.h(false);
                }
            }
            this.f3599k0 = colorStateList;
            if (this.f3588e != null) {
                u(false, false);
            }
        }
    }

    public void setLengthCounter(z zVar) {
        this.f3605o = zVar;
    }

    public void setMaxEms(int i3) {
        this.f3592h = i3;
        EditText editText = this.f3588e;
        if (editText == null || i3 == -1) {
            return;
        }
        editText.setMaxEms(i3);
    }

    public void setMaxWidth(int i3) {
        this.f3596j = i3;
        EditText editText = this.f3588e;
        if (editText == null || i3 == -1) {
            return;
        }
        editText.setMaxWidth(i3);
    }

    public void setMaxWidthResource(int i3) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i3));
    }

    public void setMinEms(int i3) {
        this.g = i3;
        EditText editText = this.f3588e;
        if (editText == null || i3 == -1) {
            return;
        }
        editText.setMinEms(i3);
    }

    public void setMinWidth(int i3) {
        this.f3594i = i3;
        EditText editText = this.f3588e;
        if (editText == null || i3 == -1) {
            return;
        }
        editText.setMinWidth(i3);
    }

    public void setMinWidthResource(int i3) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i3));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i3) {
        n nVar = this.f3586d;
        nVar.f3911h.setContentDescription(i3 != 0 ? nVar.getResources().getText(i3) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i3) {
        n nVar = this.f3586d;
        nVar.f3911h.setImageDrawable(i3 != 0 ? d.v(nVar.getContext(), i3) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z2) {
        n nVar = this.f3586d;
        if (z2 && nVar.f3913j != 1) {
            nVar.g(1);
        } else if (z2) {
            nVar.getClass();
        } else {
            nVar.g(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        n nVar = this.f3586d;
        nVar.f3915l = colorStateList;
        com.bumptech.glide.c.a(nVar.b, nVar.f3911h, colorStateList, nVar.f3916m);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        n nVar = this.f3586d;
        nVar.f3916m = mode;
        com.bumptech.glide.c.a(nVar.b, nVar.f3911h, nVar.f3915l, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f3615u == null) {
            C0285d0 c0285d0 = new C0285d0(getContext(), null);
            this.f3615u = c0285d0;
            c0285d0.setId(com.minhub.gamehub.R.id.textinput_placeholder);
            ViewCompat.setImportantForAccessibility(this.f3615u, 2);
            C0175h c0175hD = d();
            this.f3621x = c0175hD;
            c0175hD.f2016c = 67L;
            this.f3623y = d();
            setPlaceholderTextAppearance(this.f3619w);
            setPlaceholderTextColor(this.f3617v);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f3613t) {
                setPlaceholderTextEnabled(true);
            }
            this.f3612s = charSequence;
        }
        EditText editText = this.f3588e;
        v(editText != null ? editText.getText() : null);
    }

    public void setPlaceholderTextAppearance(int i3) {
        this.f3619w = i3;
        C0285d0 c0285d0 = this.f3615u;
        if (c0285d0 != null) {
            TextViewCompat.setTextAppearance(c0285d0, i3);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f3617v != colorStateList) {
            this.f3617v = colorStateList;
            C0285d0 c0285d0 = this.f3615u;
            if (c0285d0 == null || colorStateList == null) {
                return;
            }
            c0285d0.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        w wVar = this.f3584c;
        wVar.getClass();
        wVar.f3971d = TextUtils.isEmpty(charSequence) ? null : charSequence;
        wVar.f3970c.setText(charSequence);
        wVar.e();
    }

    public void setPrefixTextAppearance(int i3) {
        TextViewCompat.setTextAppearance(this.f3584c.f3970c, i3);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f3584c.f3970c.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(m mVar) {
        h hVar = this.f3566G;
        if (hVar == null || hVar.b.f2383a == mVar) {
            return;
        }
        this.f3571M = mVar;
        b();
    }

    public void setStartIconCheckable(boolean z2) {
        this.f3584c.f3972e.setCheckable(z2);
    }

    public void setStartIconContentDescription(int i3) {
        setStartIconContentDescription(i3 != 0 ? getResources().getText(i3) : null);
    }

    public void setStartIconDrawable(int i3) {
        setStartIconDrawable(i3 != 0 ? d.v(getContext(), i3) : null);
    }

    public void setStartIconMinSize(int i3) {
        w wVar = this.f3584c;
        if (i3 < 0) {
            wVar.getClass();
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i3 != wVar.f3973h) {
            wVar.f3973h = i3;
            CheckableImageButton checkableImageButton = wVar.f3972e;
            checkableImageButton.setMinimumWidth(i3);
            checkableImageButton.setMinimumHeight(i3);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        w wVar = this.f3584c;
        CheckableImageButton checkableImageButton = wVar.f3972e;
        View.OnLongClickListener onLongClickListener = wVar.f3975j;
        checkableImageButton.setOnClickListener(onClickListener);
        com.bumptech.glide.c.S(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        w wVar = this.f3584c;
        wVar.f3975j = onLongClickListener;
        CheckableImageButton checkableImageButton = wVar.f3972e;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        com.bumptech.glide.c.S(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        w wVar = this.f3584c;
        wVar.f3974i = scaleType;
        wVar.f3972e.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        w wVar = this.f3584c;
        if (wVar.f != colorStateList) {
            wVar.f = colorStateList;
            com.bumptech.glide.c.a(wVar.b, wVar.f3972e, colorStateList, wVar.g);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        w wVar = this.f3584c;
        if (wVar.g != mode) {
            wVar.g = mode;
            com.bumptech.glide.c.a(wVar.b, wVar.f3972e, wVar.f, mode);
        }
    }

    public void setStartIconVisible(boolean z2) {
        this.f3584c.c(z2);
    }

    public void setSuffixText(CharSequence charSequence) {
        n nVar = this.f3586d;
        nVar.getClass();
        nVar.f3920q = TextUtils.isEmpty(charSequence) ? null : charSequence;
        nVar.f3921r.setText(charSequence);
        nVar.n();
    }

    public void setSuffixTextAppearance(int i3) {
        TextViewCompat.setTextAppearance(this.f3586d.f3921r, i3);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f3586d.f3921r.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(y yVar) {
        EditText editText = this.f3588e;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, yVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f3585c0) {
            this.f3585c0 = typeface;
            this.f3620w0.m(typeface);
            r rVar = this.f3598k;
            if (typeface != rVar.f3936B) {
                rVar.f3936B = typeface;
                C0285d0 c0285d0 = rVar.f3951r;
                if (c0285d0 != null) {
                    c0285d0.setTypeface(typeface);
                }
                C0285d0 c0285d1 = rVar.f3958y;
                if (c0285d1 != null) {
                    c0285d1.setTypeface(typeface);
                }
            }
            C0285d0 c0285d2 = this.f3607p;
            if (c0285d2 != null) {
                c0285d2.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        if (this.f3574P != 1) {
            FrameLayout frameLayout = this.b;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iC = c();
            if (iC != layoutParams.topMargin) {
                layoutParams.topMargin = iC;
                frameLayout.requestLayout();
            }
        }
    }

    public final void u(boolean z2, boolean z3) {
        ColorStateList colorStateList;
        C0285d0 c0285d0;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f3588e;
        boolean z4 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f3588e;
        boolean z5 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f3597j0;
        c cVar = this.f3620w0;
        if (colorStateList2 != null) {
            cVar.i(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.f3597j0;
            cVar.i(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f3614t0) : this.f3614t0));
        } else if (m()) {
            C0285d0 c0285d1 = this.f3598k.f3951r;
            cVar.i(c0285d1 != null ? c0285d1.getTextColors() : null);
        } else if (this.f3604n && (c0285d0 = this.f3607p) != null) {
            cVar.i(c0285d0.getTextColors());
        } else if (z5 && (colorStateList = this.f3599k0) != null && cVar.f1900k != colorStateList) {
            cVar.f1900k = colorStateList;
            cVar.h(false);
        }
        n nVar = this.f3586d;
        w wVar = this.f3584c;
        if (z4 || !this.f3622x0 || (isEnabled() && z5)) {
            if (z3 || this.f3618v0) {
                ValueAnimator valueAnimator = this.f3626z0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f3626z0.cancel();
                }
                if (z2 && this.f3624y0) {
                    a(1.0f);
                } else {
                    cVar.k(1.0f);
                }
                this.f3618v0 = false;
                if (e()) {
                    j();
                }
                EditText editText3 = this.f3588e;
                v(editText3 != null ? editText3.getText() : null);
                wVar.f3976k = false;
                wVar.e();
                nVar.f3922s = false;
                nVar.n();
                return;
            }
            return;
        }
        if (z3 || !this.f3618v0) {
            ValueAnimator valueAnimator2 = this.f3626z0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f3626z0.cancel();
            }
            if (z2 && this.f3624y0) {
                a(0.0f);
            } else {
                cVar.k(0.0f);
            }
            if (e() && !((g) this.f3566G).f3889y.f3887r.isEmpty() && e()) {
                ((g) this.f3566G).t(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f3618v0 = true;
            C0285d0 c0285d2 = this.f3615u;
            if (c0285d2 != null && this.f3613t) {
                c0285d2.setText((CharSequence) null);
                S.z.a(this.b, this.f3623y);
                this.f3615u.setVisibility(4);
            }
            wVar.f3976k = true;
            wVar.e();
            nVar.f3922s = true;
            nVar.n();
        }
    }

    public final void v(Editable editable) {
        ((u) this.f3605o).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.b;
        if (length != 0 || this.f3618v0) {
            C0285d0 c0285d0 = this.f3615u;
            if (c0285d0 == null || !this.f3613t) {
                return;
            }
            c0285d0.setText((CharSequence) null);
            S.z.a(frameLayout, this.f3623y);
            this.f3615u.setVisibility(4);
            return;
        }
        if (this.f3615u == null || !this.f3613t || TextUtils.isEmpty(this.f3612s)) {
            return;
        }
        this.f3615u.setText(this.f3612s);
        S.z.a(frameLayout, this.f3621x);
        this.f3615u.setVisibility(0);
        this.f3615u.bringToFront();
        announceForAccessibility(this.f3612s);
    }

    public final void w(boolean z2, boolean z3) {
        int defaultColor = this.f3606o0.getDefaultColor();
        int colorForState = this.f3606o0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f3606o0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z2) {
            this.f3579U = colorForState2;
        } else if (z3) {
            this.f3579U = colorForState;
        } else {
            this.f3579U = defaultColor;
        }
    }

    public final void x() {
        C0285d0 c0285d0;
        EditText editText;
        EditText editText2;
        if (this.f3566G == null || this.f3574P == 0) {
            return;
        }
        boolean z2 = false;
        boolean z3 = isFocused() || ((editText2 = this.f3588e) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f3588e) != null && editText.isHovered())) {
            z2 = true;
        }
        if (!isEnabled()) {
            this.f3579U = this.f3614t0;
        } else if (m()) {
            if (this.f3606o0 != null) {
                w(z3, z2);
            } else {
                this.f3579U = getErrorCurrentTextColors();
            }
        } else if (!this.f3604n || (c0285d0 = this.f3607p) == null) {
            if (z3) {
                this.f3579U = this.n0;
            } else if (z2) {
                this.f3579U = this.f3603m0;
            } else {
                this.f3579U = this.f3601l0;
            }
        } else if (this.f3606o0 != null) {
            w(z3, z2);
        } else {
            this.f3579U = c0285d0.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            p();
        }
        n nVar = this.f3586d;
        TextInputLayout textInputLayout = nVar.b;
        CheckableImageButton checkableImageButton = nVar.f3911h;
        TextInputLayout textInputLayout2 = nVar.b;
        nVar.l();
        com.bumptech.glide.c.F(textInputLayout2, nVar.f3909d, nVar.f3910e);
        com.bumptech.glide.c.F(textInputLayout2, checkableImageButton, nVar.f3915l);
        if (nVar.b() instanceof i) {
            if (!textInputLayout.m() || checkableImageButton.getDrawable() == null) {
                com.bumptech.glide.c.a(textInputLayout, checkableImageButton, nVar.f3915l, nVar.f3916m);
            } else {
                Drawable drawableMutate = DrawableCompat.wrap(checkableImageButton.getDrawable()).mutate();
                DrawableCompat.setTint(drawableMutate, textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        w wVar = this.f3584c;
        com.bumptech.glide.c.F(wVar.b, wVar.f3972e, wVar.f);
        if (this.f3574P == 2) {
            int i3 = this.f3576R;
            if (z3 && isEnabled()) {
                this.f3576R = this.f3578T;
            } else {
                this.f3576R = this.f3577S;
            }
            if (this.f3576R != i3 && e() && !this.f3618v0) {
                if (e()) {
                    ((g) this.f3566G).t(0.0f, 0.0f, 0.0f, 0.0f);
                }
                j();
            }
        }
        if (this.f3574P == 1) {
            if (!isEnabled()) {
                this.f3580V = this.f3609q0;
            } else if (z2 && !z3) {
                this.f3580V = this.s0;
            } else if (z3) {
                this.f3580V = this.f3611r0;
            } else {
                this.f3580V = this.p0;
            }
        }
        b();
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f3584c.f3972e;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f3584c.b(drawable);
    }

    public void setHint(int i3) {
        setHint(i3 != 0 ? getResources().getText(i3) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f3586d.f3911h.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f3586d.f3911h.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f3586d.i(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f3586d.f3911h;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        n nVar = this.f3586d;
        TextInputLayout textInputLayout = nVar.b;
        CheckableImageButton checkableImageButton = nVar.f3911h;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            com.bumptech.glide.c.a(textInputLayout, checkableImageButton, nVar.f3915l, nVar.f3916m);
            com.bumptech.glide.c.F(textInputLayout, checkableImageButton, nVar.f3915l);
        }
    }
}
