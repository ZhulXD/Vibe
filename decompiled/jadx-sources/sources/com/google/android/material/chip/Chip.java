package com.google.android.material.chip;

import M0.b;
import M0.c;
import M0.d;
import M0.e;
import M0.f;
import R0.g;
import R0.h;
import R0.m;
import R0.p;
import R0.t;
import Y0.x;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import k.C0313s;
import kotlin.jvm.internal.IntCompanionObject;
import p015f1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Chip extends C0313s implements e, x, h {
    public f f;
    public InsetDrawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RippleDrawable f3386h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View.OnClickListener f3387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f3388j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public g f3389k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3390l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3391m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3392n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3393o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3394p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3395q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3396r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f3397s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final d f3398t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3399u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Rect f3400v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final RectF f3401w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final b f3402x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final Rect f3384y = new Rect();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f3385z = {R.attr.state_selected};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final int[] f3383A = {R.attr.state_checkable};

    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        int resourceId3;
        super(a.a(context, attributeSet, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, com.minhub.gamehub.R.attr.chipStyle);
        this.f3400v = new Rect();
        this.f3401w = new RectF();
        this.f3402x = new b(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        f fVar = new f(context2, attributeSet);
        Context context3 = fVar.f1332f0;
        int[] iArr = A0.a.f;
        TypedArray typedArrayE = p.e(context3, attributeSet, iArr, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        fVar.f1308F0 = typedArrayE.hasValue(37);
        Context context4 = fVar.f1332f0;
        ColorStateList colorStateListR = com.bumptech.glide.d.r(context4, typedArrayE, 24);
        if (fVar.f1348y != colorStateListR) {
            fVar.f1348y = colorStateListR;
            fVar.onStateChange(fVar.getState());
        }
        ColorStateList colorStateListR2 = com.bumptech.glide.d.r(context4, typedArrayE, 11);
        if (fVar.f1350z != colorStateListR2) {
            fVar.f1350z = colorStateListR2;
            fVar.onStateChange(fVar.getState());
        }
        float dimension = typedArrayE.getDimension(19, 0.0f);
        if (fVar.f1297A != dimension) {
            fVar.f1297A = dimension;
            fVar.invalidateSelf();
            fVar.A();
        }
        if (typedArrayE.hasValue(12)) {
            fVar.G(typedArrayE.getDimension(12, 0.0f));
        }
        fVar.L(com.bumptech.glide.d.r(context4, typedArrayE, 22));
        fVar.M(typedArrayE.getDimension(23, 0.0f));
        fVar.V(com.bumptech.glide.d.r(context4, typedArrayE, 36));
        String text = typedArrayE.getText(5);
        text = text == null ? "" : text;
        boolean zEquals = TextUtils.equals(fVar.f1307F, text);
        m mVar = fVar.f1338l0;
        if (!zEquals) {
            fVar.f1307F = text;
            mVar.f1937e = true;
            fVar.invalidateSelf();
            fVar.A();
        }
        V0.d dVar = (!typedArrayE.hasValue(0) || (resourceId3 = typedArrayE.getResourceId(0, 0)) == 0) ? null : new V0.d(context4, resourceId3);
        dVar.f2250k = typedArrayE.getDimension(1, dVar.f2250k);
        mVar.c(dVar, context4);
        int i3 = typedArrayE.getInt(3, 0);
        if (i3 == 1) {
            fVar.f1302C0 = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            fVar.f1302C0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            fVar.f1302C0 = TextUtils.TruncateAt.END;
        }
        fVar.K(typedArrayE.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            fVar.K(typedArrayE.getBoolean(15, false));
        }
        fVar.H(com.bumptech.glide.d.w(context4, typedArrayE, 14));
        if (typedArrayE.hasValue(17)) {
            fVar.J(com.bumptech.glide.d.r(context4, typedArrayE, 17));
        }
        fVar.I(typedArrayE.getDimension(16, -1.0f));
        fVar.S(typedArrayE.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            fVar.S(typedArrayE.getBoolean(26, false));
        }
        fVar.N(com.bumptech.glide.d.w(context4, typedArrayE, 25));
        fVar.R(com.bumptech.glide.d.r(context4, typedArrayE, 30));
        fVar.P(typedArrayE.getDimension(28, 0.0f));
        fVar.C(typedArrayE.getBoolean(6, false));
        fVar.F(typedArrayE.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            fVar.F(typedArrayE.getBoolean(8, false));
        }
        fVar.D(com.bumptech.glide.d.w(context4, typedArrayE, 7));
        if (typedArrayE.hasValue(9)) {
            fVar.E(com.bumptech.glide.d.r(context4, typedArrayE, 9));
        }
        fVar.f1323V = (!typedArrayE.hasValue(39) || (resourceId2 = typedArrayE.getResourceId(39, 0)) == 0) ? null : B0.b.a(context4, resourceId2);
        fVar.f1324W = (!typedArrayE.hasValue(33) || (resourceId = typedArrayE.getResourceId(33, 0)) == 0) ? null : B0.b.a(context4, resourceId);
        float dimension2 = typedArrayE.getDimension(21, 0.0f);
        if (fVar.f1325X != dimension2) {
            fVar.f1325X = dimension2;
            fVar.invalidateSelf();
            fVar.A();
        }
        fVar.U(typedArrayE.getDimension(35, 0.0f));
        fVar.T(typedArrayE.getDimension(34, 0.0f));
        float dimension3 = typedArrayE.getDimension(41, 0.0f);
        if (fVar.f1327a0 != dimension3) {
            fVar.f1327a0 = dimension3;
            fVar.invalidateSelf();
            fVar.A();
        }
        float dimension4 = typedArrayE.getDimension(40, 0.0f);
        if (fVar.f1328b0 != dimension4) {
            fVar.f1328b0 = dimension4;
            fVar.invalidateSelf();
            fVar.A();
        }
        fVar.Q(typedArrayE.getDimension(29, 0.0f));
        fVar.O(typedArrayE.getDimension(27, 0.0f));
        float dimension5 = typedArrayE.getDimension(13, 0.0f);
        if (fVar.f1331e0 != dimension5) {
            fVar.f1331e0 = dimension5;
            fVar.invalidateSelf();
            fVar.A();
        }
        fVar.f1306E0 = typedArrayE.getDimensionPixelSize(4, IntCompanionObject.MAX_VALUE);
        typedArrayE.recycle();
        p.a(context2, attributeSet, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action);
        p.b(context2, attributeSet, iArr, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action);
        this.f3394p = typedArrayObtainStyledAttributes.getBoolean(32, false);
        this.f3396r = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(20, (float) Math.ceil(t.b(getContext(), 48))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(fVar);
        fVar.k(ViewCompat.getElevation(this));
        p.a(context2, attributeSet, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action);
        p.b(context2, attributeSet, iArr, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(37);
        typedArrayObtainStyledAttributes2.recycle();
        this.f3398t = new d(this, this);
        e();
        if (!zHasValue) {
            setOutlineProvider(new c(this));
        }
        setChecked(this.f3390l);
        setText(fVar.f1307F);
        setEllipsize(fVar.f1302C0);
        h();
        if (!this.f.f1304D0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        g();
        if (this.f3394p) {
            setMinHeight(this.f3396r);
        }
        this.f3395q = ViewCompat.getLayoutDirection(this);
        super.setOnCheckedChangeListener(new M0.a(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.f3401w;
        rectF.setEmpty();
        if (d() && this.f3387i != null) {
            f fVar = this.f;
            Rect bounds = fVar.getBounds();
            rectF.setEmpty();
            if (fVar.Y()) {
                float f = fVar.f1331e0 + fVar.f1330d0 + fVar.f1317P + fVar.f1329c0 + fVar.f1328b0;
                if (DrawableCompat.getLayoutDirection(fVar) == 0) {
                    float f3 = bounds.right;
                    rectF.right = f3;
                    rectF.left = f3 - f;
                } else {
                    float f4 = bounds.left;
                    rectF.left = f4;
                    rectF.right = f4 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i3 = (int) closeIconTouchBounds.left;
        int i4 = (int) closeIconTouchBounds.top;
        int i5 = (int) closeIconTouchBounds.right;
        int i6 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f3400v;
        rect.set(i3, i4, i5, i6);
        return rect;
    }

    private V0.d getTextAppearance() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1338l0.g;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z2) {
        if (this.f3392n != z2) {
            this.f3392n = z2;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z2) {
        if (this.f3391m != z2) {
            this.f3391m = z2;
            refreshDrawableState();
        }
    }

    public final void c(int i3) {
        this.f3396r = i3;
        if (!this.f3394p) {
            InsetDrawable insetDrawable = this.g;
            if (insetDrawable == null) {
                int[] iArr = W0.a.f2299a;
                f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.g = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    int[] iArr2 = W0.a.f2299a;
                    f();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i3 - ((int) this.f.f1297A));
        int iMax2 = Math.max(0, i3 - this.f.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.g;
            if (insetDrawable2 == null) {
                int[] iArr3 = W0.a.f2299a;
                f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.g = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    int[] iArr4 = W0.a.f2299a;
                    f();
                    return;
                }
                return;
            }
        }
        int i4 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i5 = iMax > 0 ? iMax / 2 : 0;
        if (this.g != null) {
            Rect rect = new Rect();
            this.g.getPadding(rect);
            if (rect.top == i5 && rect.bottom == i5 && rect.left == i4 && rect.right == i4) {
                int[] iArr5 = W0.a.f2299a;
                f();
                return;
            }
        }
        if (getMinHeight() != i3) {
            setMinHeight(i3);
        }
        if (getMinWidth() != i3) {
            setMinWidth(i3);
        }
        this.g = new InsetDrawable((Drawable) this.f, i4, i5, i4, i5);
        int[] iArr6 = W0.a.f2299a;
        f();
    }

    public final boolean d() {
        f fVar = this.f;
        if (fVar == null) {
            return false;
        }
        Drawable drawable = fVar.f1314M;
        return (drawable != null ? DrawableCompat.unwrap(drawable) : null) != null;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.f3399u) {
            return this.f3398t.d(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i3;
        if (!this.f3399u) {
            return super.dispatchKeyEvent(keyEvent);
        }
        d dVar = this.f3398t;
        dVar.getClass();
        boolean zH = false;
        int i4 = 0;
        zH = false;
        zH = false;
        zH = false;
        zH = false;
        zH = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i5 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case MotionEventCompat.AXIS_RUDDER /* 20 */:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i5 = 33;
                                } else if (keyCode == 21) {
                                    i5 = 17;
                                } else if (keyCode != 22) {
                                    i5 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i4 < repeatCount && dVar.h(i5, null)) {
                                    i4++;
                                    z2 = true;
                                }
                                zH = z2;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                i3 = dVar.f732i;
                                if (i3 != Integer.MIN_VALUE) {
                                    dVar.j(i3, 16, null);
                                }
                                zH = true;
                            }
                            break;
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    i3 = dVar.f732i;
                    if (i3 != Integer.MIN_VALUE) {
                        dVar.j(i3, 16, null);
                    }
                    zH = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                zH = dVar.h(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zH = dVar.h(1, null);
            }
        }
        if (!zH || dVar.f732i == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // k.C0313s, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i3;
        int i4;
        super.drawableStateChanged();
        f fVar = this.f;
        boolean zB = false;
        if (fVar != null && f.z(fVar.f1314M)) {
            f fVar2 = this.f;
            ?? IsEnabled = isEnabled();
            if (this.f3393o) {
                i3 = IsEnabled;
                i3 = IsEnabled + 1;
            }
            i3 = IsEnabled;
            int i5 = i3;
            if (this.f3392n) {
                i5 = i3 + 1;
            }
            int i6 = i5;
            if (this.f3391m) {
                i6 = i5 + 1;
            }
            int i7 = i6;
            if (isChecked()) {
                i7 = i6 + 1;
            }
            int[] iArr = new int[i7];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i4 = 1;
            } else {
                i4 = 0;
            }
            if (this.f3393o) {
                iArr[i4] = 16842908;
                i4++;
            }
            if (this.f3392n) {
                iArr[i4] = 16843623;
                i4++;
            }
            if (this.f3391m) {
                iArr[i4] = 16842919;
                i4++;
            }
            if (isChecked()) {
                iArr[i4] = 16842913;
            }
            if (!Arrays.equals(fVar2.f1351z0, iArr)) {
                fVar2.f1351z0 = iArr;
                if (fVar2.Y()) {
                    zB = fVar2.B(fVar2.getState(), iArr);
                }
            }
        }
        if (zB) {
            invalidate();
        }
    }

    public final void e() {
        f fVar;
        if (!d() || (fVar = this.f) == null || !fVar.f1313L || this.f3387i == null) {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.f3399u = false;
        } else {
            ViewCompat.setAccessibilityDelegate(this, this.f3398t);
            this.f3399u = true;
        }
    }

    public final void f() {
        this.f3386h = new RippleDrawable(W0.a.c(this.f.f1305E), getBackgroundDrawable(), null);
        this.f.getClass();
        ViewCompat.setBackground(this, this.f3386h);
        g();
    }

    public final void g() {
        f fVar;
        if (TextUtils.isEmpty(getText()) || (fVar = this.f) == null) {
            return;
        }
        int iW = (int) (fVar.w() + fVar.f1331e0 + fVar.f1328b0);
        f fVar2 = this.f;
        int iV = (int) (fVar2.v() + fVar2.f1325X + fVar2.f1327a0);
        if (this.g != null) {
            Rect rect = new Rect();
            this.g.getPadding(rect);
            iV += rect.left;
            iW += rect.right;
        }
        ViewCompat.setPaddingRelative(this, iV, getPaddingTop(), iW, getPaddingBottom());
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f3397s)) {
            return this.f3397s;
        }
        f fVar = this.f;
        if (fVar == null || !fVar.f1319R) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).f3404i.f1860d) ? "android.widget.RadioButton" : "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.g;
        return insetDrawable == null ? this.f : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1321T;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1322U;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1350z;
        }
        return null;
    }

    public float getChipCornerRadius() {
        f fVar = this.f;
        if (fVar != null) {
            return Math.max(0.0f, fVar.x());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f;
    }

    public float getChipEndPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1331e0;
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        f fVar = this.f;
        if (fVar == null || (drawable = fVar.f1310H) == null) {
            return null;
        }
        return DrawableCompat.unwrap(drawable);
    }

    public float getChipIconSize() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1312J;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1311I;
        }
        return null;
    }

    public float getChipMinHeight() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1297A;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1325X;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1301C;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1303D;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        Drawable drawable;
        f fVar = this.f;
        if (fVar == null || (drawable = fVar.f1314M) == null) {
            return null;
        }
        return DrawableCompat.unwrap(drawable);
    }

    public CharSequence getCloseIconContentDescription() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1318Q;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1330d0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1317P;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1329c0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1316O;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1302C0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.f3399u) {
            d dVar = this.f3398t;
            if (dVar.f732i == 1 || dVar.f731h == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public B0.b getHideMotionSpec() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1324W;
        }
        return null;
    }

    public float getIconEndPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.Z;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1326Y;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1305E;
        }
        return null;
    }

    public Y0.m getShapeAppearanceModel() {
        return this.f.b.f2383a;
    }

    public B0.b getShowMotionSpec() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1323V;
        }
        return null;
    }

    public float getTextEndPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1328b0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        f fVar = this.f;
        if (fVar != null) {
            return fVar.f1327a0;
        }
        return 0.0f;
    }

    public final void h() {
        TextPaint paint = getPaint();
        f fVar = this.f;
        if (fVar != null) {
            paint.drawableState = fVar.getState();
        }
        V0.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.d(getContext(), paint, this.f3402x);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bumptech.glide.c.T(this, this.f);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3385z);
        }
        f fVar = this.f;
        if (fVar != null && fVar.f1319R) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3383A);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z2, int i3, Rect rect) {
        super.onFocusChanged(z2, i3, rect);
        if (this.f3399u) {
            d dVar = this.f3398t;
            int i4 = dVar.f732i;
            if (i4 != Integer.MIN_VALUE) {
                dVar.a(i4);
            }
            if (z2) {
                dVar.h(i3, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i3;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        f fVar = this.f;
        int i4 = 0;
        accessibilityNodeInfo.setCheckable(fVar != null && fVar.f1319R);
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            if (chipGroup.f1918d) {
                int i5 = 0;
                while (true) {
                    if (i4 >= chipGroup.getChildCount()) {
                        i5 = -1;
                        break;
                    }
                    View childAt = chipGroup.getChildAt(i4);
                    if ((childAt instanceof Chip) && chipGroup.getChildAt(i4).getVisibility() == 0) {
                        if (((Chip) childAt) == this) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    i4++;
                }
                i3 = i5;
            } else {
                i3 = -1;
            }
            Object tag = getTag(com.minhub.gamehub.R.id.row_index_key);
            accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, i3, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i3) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i3);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i3) {
        super.onRtlPropertiesChanged(i3);
        if (this.f3395q != i3) {
            this.f3395q = i3;
            g();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f3391m) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z2 = true;
                }
                z2 = false;
            } else {
                if (this.f3391m) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.f3387i;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    if (this.f3399u) {
                        this.f3398t.o(1, 1);
                    }
                    z2 = true;
                }
                setCloseIconPressed(false);
            }
            z2 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z2 = true;
        } else {
            z2 = false;
        }
        return z2 || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.f3397s = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f3386h) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i3) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // k.C0313s, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f3386h) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // k.C0313s, android.view.View
    public void setBackgroundResource(int i3) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z2) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.C(z2);
        }
    }

    public void setCheckableResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.C(fVar.f1332f0.getResources().getBoolean(i3));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        f fVar = this.f;
        if (fVar == null) {
            this.f3390l = z2;
        } else if (fVar.f1319R) {
            super.setChecked(z2);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.D(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z2) {
        setCheckedIconVisible(z2);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i3) {
        setCheckedIconVisible(i3);
    }

    public void setCheckedIconResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.D(com.bumptech.glide.d.v(fVar.f1332f0, i3));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.E(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.E(ContextCompat.getColorStateList(fVar.f1332f0, i3));
        }
    }

    public void setCheckedIconVisible(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.F(fVar.f1332f0.getResources().getBoolean(i3));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        f fVar = this.f;
        if (fVar == null || fVar.f1350z == colorStateList) {
            return;
        }
        fVar.f1350z = colorStateList;
        fVar.onStateChange(fVar.getState());
    }

    public void setChipBackgroundColorResource(int i3) {
        ColorStateList colorStateList;
        f fVar = this.f;
        if (fVar == null || fVar.f1350z == (colorStateList = ContextCompat.getColorStateList(fVar.f1332f0, i3))) {
            return;
        }
        fVar.f1350z = colorStateList;
        fVar.onStateChange(fVar.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.G(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.G(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    public void setChipDrawable(f fVar) {
        f fVar2 = this.f;
        if (fVar2 != fVar) {
            if (fVar2 != null) {
                fVar2.f1300B0 = new WeakReference(null);
            }
            this.f = fVar;
            fVar.f1304D0 = false;
            fVar.f1300B0 = new WeakReference(this);
            c(this.f3396r);
        }
    }

    public void setChipEndPadding(float f) {
        f fVar = this.f;
        if (fVar == null || fVar.f1331e0 == f) {
            return;
        }
        fVar.f1331e0 = f;
        fVar.invalidateSelf();
        fVar.A();
    }

    public void setChipEndPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            float dimension = fVar.f1332f0.getResources().getDimension(i3);
            if (fVar.f1331e0 != dimension) {
                fVar.f1331e0 = dimension;
                fVar.invalidateSelf();
                fVar.A();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.H(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z2) {
        setChipIconVisible(z2);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i3) {
        setChipIconVisible(i3);
    }

    public void setChipIconResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.H(com.bumptech.glide.d.v(fVar.f1332f0, i3));
        }
    }

    public void setChipIconSize(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.I(f);
        }
    }

    public void setChipIconSizeResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.I(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.J(colorStateList);
        }
    }

    public void setChipIconTintResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.J(ContextCompat.getColorStateList(fVar.f1332f0, i3));
        }
    }

    public void setChipIconVisible(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.K(fVar.f1332f0.getResources().getBoolean(i3));
        }
    }

    public void setChipMinHeight(float f) {
        f fVar = this.f;
        if (fVar == null || fVar.f1297A == f) {
            return;
        }
        fVar.f1297A = f;
        fVar.invalidateSelf();
        fVar.A();
    }

    public void setChipMinHeightResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            float dimension = fVar.f1332f0.getResources().getDimension(i3);
            if (fVar.f1297A != dimension) {
                fVar.f1297A = dimension;
                fVar.invalidateSelf();
                fVar.A();
            }
        }
    }

    public void setChipStartPadding(float f) {
        f fVar = this.f;
        if (fVar == null || fVar.f1325X == f) {
            return;
        }
        fVar.f1325X = f;
        fVar.invalidateSelf();
        fVar.A();
    }

    public void setChipStartPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            float dimension = fVar.f1332f0.getResources().getDimension(i3);
            if (fVar.f1325X != dimension) {
                fVar.f1325X = dimension;
                fVar.invalidateSelf();
                fVar.A();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.L(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.L(ContextCompat.getColorStateList(fVar.f1332f0, i3));
        }
    }

    public void setChipStrokeWidth(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.M(f);
        }
    }

    public void setChipStrokeWidthResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.M(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i3) {
        setText(getResources().getString(i3));
    }

    public void setCloseIcon(Drawable drawable) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.N(drawable);
        }
        e();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        f fVar = this.f;
        if (fVar == null || fVar.f1318Q == charSequence) {
            return;
        }
        fVar.f1318Q = BidiFormatter.getInstance().unicodeWrap(charSequence);
        fVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z2) {
        setCloseIconVisible(z2);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i3) {
        setCloseIconVisible(i3);
    }

    public void setCloseIconEndPadding(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.O(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.O(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    public void setCloseIconResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.N(com.bumptech.glide.d.v(fVar.f1332f0, i3));
        }
        e();
    }

    public void setCloseIconSize(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.P(f);
        }
    }

    public void setCloseIconSizeResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.P(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    public void setCloseIconStartPadding(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.Q(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.Q(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.R(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.R(ContextCompat.getColorStateList(fVar.f1332f0, i3));
        }
    }

    public void setCloseIconVisible(int i3) {
        setCloseIconVisible(getResources().getBoolean(i3));
    }

    @Override // k.C0313s, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // k.C0313s, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i3, int i4, int i5, int i6) {
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i5 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i3, i4, i5, i6);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i3, int i4, int i5, int i6) {
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i5 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i3, i4, i5, i6);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        f fVar = this.f;
        if (fVar != null) {
            fVar.k(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        f fVar = this.f;
        if (fVar != null) {
            fVar.f1302C0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z2) {
        this.f3394p = z2;
        c(this.f3396r);
    }

    @Override // android.widget.TextView
    public void setGravity(int i3) {
        if (i3 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i3);
        }
    }

    public void setHideMotionSpec(B0.b bVar) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.f1324W = bVar;
        }
    }

    public void setHideMotionSpecResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.f1324W = B0.b.a(fVar.f1332f0, i3);
        }
    }

    public void setIconEndPadding(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.T(f);
        }
    }

    public void setIconEndPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.T(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    public void setIconStartPadding(float f) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.U(f);
        }
    }

    public void setIconStartPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.U(fVar.f1332f0.getResources().getDimension(i3));
        }
    }

    @Override // R0.h
    public void setInternalOnCheckedChangeListener(g gVar) {
        this.f3389k = gVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i3) {
        if (this.f == null) {
            return;
        }
        super.setLayoutDirection(i3);
    }

    @Override // android.widget.TextView
    public void setLines(int i3) {
        if (i3 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i3);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i3) {
        if (i3 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i3);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i3) {
        super.setMaxWidth(i3);
        f fVar = this.f;
        if (fVar != null) {
            fVar.f1306E0 = i3;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i3) {
        if (i3 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i3);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f3388j = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f3387i = onClickListener;
        e();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.V(colorStateList);
        }
        this.f.getClass();
        f();
    }

    public void setRippleColorResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.V(ContextCompat.getColorStateList(fVar.f1332f0, i3));
            this.f.getClass();
            f();
        }
    }

    @Override // Y0.x
    public void setShapeAppearanceModel(Y0.m mVar) {
        this.f.setShapeAppearanceModel(mVar);
    }

    public void setShowMotionSpec(B0.b bVar) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.f1323V = bVar;
        }
    }

    public void setShowMotionSpecResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.f1323V = B0.b.a(fVar.f1332f0, i3);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z2) {
        if (!z2) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z2);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        f fVar = this.f;
        if (fVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(fVar.f1304D0 ? null : charSequence, bufferType);
        f fVar2 = this.f;
        if (fVar2 == null || TextUtils.equals(fVar2.f1307F, charSequence)) {
            return;
        }
        fVar2.f1307F = charSequence;
        fVar2.f1338l0.f1937e = true;
        fVar2.invalidateSelf();
        fVar2.A();
    }

    public void setTextAppearance(V0.d dVar) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.f1338l0.c(dVar, fVar.f1332f0);
        }
        h();
    }

    public void setTextAppearanceResource(int i3) {
        setTextAppearance(getContext(), i3);
    }

    public void setTextEndPadding(float f) {
        f fVar = this.f;
        if (fVar == null || fVar.f1328b0 == f) {
            return;
        }
        fVar.f1328b0 = f;
        fVar.invalidateSelf();
        fVar.A();
    }

    public void setTextEndPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            float dimension = fVar.f1332f0.getResources().getDimension(i3);
            if (fVar.f1328b0 != dimension) {
                fVar.f1328b0 = dimension;
                fVar.invalidateSelf();
                fVar.A();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i3, float f) {
        super.setTextSize(i3, f);
        f fVar = this.f;
        if (fVar != null) {
            float fApplyDimension = TypedValue.applyDimension(i3, f, getResources().getDisplayMetrics());
            m mVar = fVar.f1338l0;
            V0.d dVar = mVar.g;
            if (dVar != null) {
                dVar.f2250k = fApplyDimension;
                mVar.f1934a.setTextSize(fApplyDimension);
                fVar.a();
            }
        }
        h();
    }

    public void setTextStartPadding(float f) {
        f fVar = this.f;
        if (fVar == null || fVar.f1327a0 == f) {
            return;
        }
        fVar.f1327a0 = f;
        fVar.invalidateSelf();
        fVar.A();
    }

    public void setTextStartPaddingResource(int i3) {
        f fVar = this.f;
        if (fVar != null) {
            float dimension = fVar.f1332f0.getResources().getDimension(i3);
            if (fVar.f1327a0 != dimension) {
                fVar.f1327a0 = dimension;
                fVar.invalidateSelf();
                fVar.A();
            }
        }
    }

    public void setCloseIconVisible(boolean z2) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.S(z2);
        }
        e();
    }

    public void setCheckedIconVisible(boolean z2) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.F(z2);
        }
    }

    public void setChipIconVisible(boolean z2) {
        f fVar = this.f;
        if (fVar != null) {
            fVar.K(z2);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i3) {
        super.setTextAppearance(context, i3);
        f fVar = this.f;
        if (fVar != null) {
            Context context2 = fVar.f1332f0;
            fVar.f1338l0.c(new V0.d(context2, i3), context2);
        }
        h();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i3) {
        super.setTextAppearance(i3);
        f fVar = this.f;
        if (fVar != null) {
            Context context = fVar.f1332f0;
            fVar.f1338l0.c(new V0.d(context, i3), context);
        }
        h();
    }
}
