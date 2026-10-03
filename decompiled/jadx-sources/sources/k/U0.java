package k;

import S.C0169b;
import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class U0 extends CompoundButton {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final C0169b f4744S = new C0169b(Float.class, "thumbPos", 7);

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final int[] f4745T = {R.attr.state_checked};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public float f4746A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f4747B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f4748C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f4749D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f4750E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f4751F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f4752G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4753H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f4754I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final TextPaint f4755J;
    public final ColorStateList K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public StaticLayout f4756L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public StaticLayout f4757M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final p018h.a f4758N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ObjectAnimator f4759O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public C0327z f4760P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public H.h f4761Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Rect f4762R;
    public Drawable b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f4763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f4764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4765e;
    public boolean f;
    public Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f4766h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f4767i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4768j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4769k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4770l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4771m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4772n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4773o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f4774p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f4775q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f4776r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f4777s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f4778t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f4779u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f4780v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f4781w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f4782x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final VelocityTracker f4783y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f4784z;

    public U0(Context context, AttributeSet attributeSet) {
        Typeface typeface;
        int resourceId;
        super(context, attributeSet, com.minhub.gamehub.R.attr.switchStyle);
        this.f4763c = null;
        this.f4764d = null;
        this.f4765e = false;
        this.f = false;
        this.f4766h = null;
        this.f4767i = null;
        this.f4768j = false;
        this.f4769k = false;
        this.f4783y = VelocityTracker.obtain();
        this.f4754I = true;
        this.f4762R = new Rect();
        V0.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f4755J = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = p008d.a.f3859v;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, com.minhub.gamehub.R.attr.switchStyle, 0);
        Z0 z2 = new Z0(context, typedArrayObtainStyledAttributes);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, com.minhub.gamehub.R.attr.switchStyle, 0);
        Drawable drawableB = z2.b(2);
        this.b = drawableB;
        if (drawableB != null) {
            drawableB.setCallback(this);
        }
        Drawable drawableB2 = z2.b(11);
        this.g = drawableB2;
        if (drawableB2 != null) {
            drawableB2.setCallback(this);
        }
        setTextOnInternal(typedArrayObtainStyledAttributes.getText(0));
        setTextOffInternal(typedArrayObtainStyledAttributes.getText(1));
        this.f4778t = typedArrayObtainStyledAttributes.getBoolean(3, true);
        this.f4770l = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        this.f4771m = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.f4772n = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.f4773o = typedArrayObtainStyledAttributes.getBoolean(4, false);
        ColorStateList colorStateListA = z2.a(9);
        if (colorStateListA != null) {
            this.f4763c = colorStateListA;
            this.f4765e = true;
        }
        PorterDuff.Mode modeC = AbstractC0309p0.c(typedArrayObtainStyledAttributes.getInt(10, -1), null);
        if (this.f4764d != modeC) {
            this.f4764d = modeC;
            this.f = true;
        }
        if (this.f4765e || this.f) {
            a();
        }
        ColorStateList colorStateListA2 = z2.a(12);
        if (colorStateListA2 != null) {
            this.f4766h = colorStateListA2;
            this.f4768j = true;
        }
        PorterDuff.Mode modeC2 = AbstractC0309p0.c(typedArrayObtainStyledAttributes.getInt(13, -1), null);
        if (this.f4767i != modeC2) {
            this.f4767i = modeC2;
            this.f4769k = true;
        }
        if (this.f4768j || this.f4769k) {
            b();
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        if (resourceId2 != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId2, p008d.a.f3860w);
            ColorStateList colorStateList = (!typedArrayObtainStyledAttributes2.hasValue(3) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(3, 0)) == 0 || (colorStateList = ContextCompat.getColorStateList(context, resourceId)) == null) ? typedArrayObtainStyledAttributes2.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.K = colorStateList;
            } else {
                this.K = getTextColors();
            }
            int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i3 = typedArrayObtainStyledAttributes2.getInt(1, -1);
            int i4 = typedArrayObtainStyledAttributes2.getInt(2, -1);
            if (i3 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i3 != 2) {
                typeface = i3 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            if (i4 > 0) {
                Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i4) : Typeface.create(typeface, i4);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int i5 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i4;
                textPaint.setFakeBoldText((i5 & 1) != 0);
                textPaint.setTextSkewX((2 & i5) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (typedArrayObtainStyledAttributes2.getBoolean(14, false)) {
                Context context2 = getContext();
                p018h.a aVar = new p018h.a();
                aVar.b = context2.getResources().getConfiguration().locale;
                this.f4758N = aVar;
            } else {
                this.f4758N = null;
            }
            setTextOnInternal(this.f4774p);
            setTextOffInternal(this.f4776r);
            typedArrayObtainStyledAttributes2.recycle();
        }
        new Z(this).f(attributeSet, com.minhub.gamehub.R.attr.switchStyle);
        z2.f();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f4780v = viewConfiguration.getScaledTouchSlop();
        this.f4784z = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, com.minhub.gamehub.R.attr.switchStyle);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private C0327z getEmojiTextViewHelper() {
        if (this.f4760P == null) {
            this.f4760P = new C0327z(this);
        }
        return this.f4760P;
    }

    private boolean getTargetCheckedState() {
        return this.f4746A > 0.5f;
    }

    private int getThumbOffset() {
        boolean z2 = q1.f4902a;
        return (int) (((getLayoutDirection() == 1 ? 1.0f - this.f4746A : this.f4746A) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.g;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f4762R;
        drawable.getPadding(rect);
        Drawable drawable2 = this.b;
        Rect rectB = drawable2 != null ? AbstractC0309p0.b(drawable2) : AbstractC0309p0.f4897c;
        return ((((this.f4747B - this.f4749D) - rect.left) - rect.right) - rectB.left) - rectB.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f4776r = charSequence;
        TransformationMethod transformationMethodA0 = ((com.bumptech.glide.c) getEmojiTextViewHelper().b.b).a0(this.f4758N);
        if (transformationMethodA0 != null) {
            charSequence = transformationMethodA0.getTransformation(charSequence, this);
        }
        this.f4777s = charSequence;
        this.f4757M = null;
        if (this.f4778t) {
            d();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f4774p = charSequence;
        TransformationMethod transformationMethodA0 = ((com.bumptech.glide.c) getEmojiTextViewHelper().b.b).a0(this.f4758N);
        if (transformationMethodA0 != null) {
            charSequence = transformationMethodA0.getTransformation(charSequence, this);
        }
        this.f4775q = charSequence;
        this.f4756L = null;
        if (this.f4778t) {
            d();
        }
    }

    public final void a() {
        Drawable drawable = this.b;
        if (drawable != null) {
            if (this.f4765e || this.f) {
                Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                this.b = drawableMutate;
                if (this.f4765e) {
                    DrawableCompat.setTintList(drawableMutate, this.f4763c);
                }
                if (this.f) {
                    DrawableCompat.setTintMode(this.b, this.f4764d);
                }
                if (this.b.isStateful()) {
                    this.b.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.g;
        if (drawable != null) {
            if (this.f4768j || this.f4769k) {
                Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                this.g = drawableMutate;
                if (this.f4768j) {
                    DrawableCompat.setTintList(drawableMutate, this.f4766h);
                }
                if (this.f4769k) {
                    DrawableCompat.setTintMode(this.g, this.f4767i);
                }
                if (this.g.isStateful()) {
                    this.g.setState(getDrawableState());
                }
            }
        }
    }

    public final void c() {
        setTextOnInternal(this.f4774p);
        setTextOffInternal(this.f4776r);
        requestLayout();
    }

    public final void d() {
        if (this.f4761Q == null && ((com.bumptech.glide.c) this.f4760P.b.b).r() && androidx.emoji2.text.j.f2876k != null) {
            androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
            int iB = jVarA.b();
            if (iB == 3 || iB == 0) {
                H.h hVar = new H.h(this);
                this.f4761Q = hVar;
                jVarA.f(hVar);
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i3;
        int i4;
        int i5 = this.f4750E;
        int i6 = this.f4751F;
        int i7 = this.f4752G;
        int i8 = this.f4753H;
        int thumbOffset = getThumbOffset() + i5;
        Drawable drawable = this.b;
        Rect rectB = drawable != null ? AbstractC0309p0.b(drawable) : AbstractC0309p0.f4897c;
        Drawable drawable2 = this.g;
        Rect rect = this.f4762R;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i9 = rect.left;
            thumbOffset += i9;
            if (rectB != null) {
                int i10 = rectB.left;
                if (i10 > i9) {
                    i5 += i10 - i9;
                }
                int i11 = rectB.top;
                int i12 = rect.top;
                i3 = i11 > i12 ? (i11 - i12) + i6 : i6;
                int i13 = rectB.right;
                int i14 = rect.right;
                if (i13 > i14) {
                    i7 -= i13 - i14;
                }
                int i15 = rectB.bottom;
                int i16 = rect.bottom;
                if (i15 > i16) {
                    i4 = i8 - (i15 - i16);
                }
                this.g.setBounds(i5, i3, i7, i4);
            } else {
                i3 = i6;
            }
            i4 = i8;
            this.g.setBounds(i5, i3, i7, i4);
        }
        Drawable drawable3 = this.b;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i17 = thumbOffset - rect.left;
            int i18 = thumbOffset + this.f4749D + rect.right;
            this.b.setBounds(i17, i6, i18, i8);
            Drawable background = getBackground();
            if (background != null) {
                DrawableCompat.setHotspotBounds(background, i17, i6, i18, i8);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f3) {
        super.drawableHotspotChanged(f, f3);
        Drawable drawable = this.b;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f, f3);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            DrawableCompat.setHotspot(drawable2, f, f3);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.b;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.g;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        boolean z2 = q1.f4902a;
        if (getLayoutDirection() != 1) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f4747B;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f4772n : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        boolean z2 = q1.f4902a;
        if (getLayoutDirection() == 1) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f4747B;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f4772n : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f4778t;
    }

    public boolean getSplitTrack() {
        return this.f4773o;
    }

    public int getSwitchMinWidth() {
        return this.f4771m;
    }

    public int getSwitchPadding() {
        return this.f4772n;
    }

    public CharSequence getTextOff() {
        return this.f4776r;
    }

    public CharSequence getTextOn() {
        return this.f4774p;
    }

    public Drawable getThumbDrawable() {
        return this.b;
    }

    public final float getThumbPosition() {
        return this.f4746A;
    }

    public int getThumbTextPadding() {
        return this.f4770l;
    }

    public ColorStateList getThumbTintList() {
        return this.f4763c;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f4764d;
    }

    public Drawable getTrackDrawable() {
        return this.g;
    }

    public ColorStateList getTrackTintList() {
        return this.f4766h;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f4767i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f4759O;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f4759O.end();
        this.f4759O = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f4745T);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.g;
        Rect rect = this.f4762R;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i3 = this.f4751F;
        int i4 = this.f4753H;
        int i5 = i3 + rect.top;
        int i6 = i4 - rect.bottom;
        Drawable drawable2 = this.b;
        if (drawable != null) {
            if (!this.f4773o || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectB = AbstractC0309p0.b(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectB.left;
                rect.right -= rectB.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.f4756L : this.f4757M;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            TextPaint textPaint = this.f4755J;
            ColorStateList colorStateList = this.K;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i5 + i6) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f4774p : this.f4776r;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z2, i3, i4, i5, i6);
        int iMax2 = 0;
        if (this.b != null) {
            Drawable drawable = this.g;
            Rect rect = this.f4762R;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectB = AbstractC0309p0.b(this.b);
            iMax = Math.max(0, rectB.left - rect.left);
            iMax2 = Math.max(0, rectB.right - rect.right);
        } else {
            iMax = 0;
        }
        boolean z3 = q1.f4902a;
        if (getLayoutDirection() == 1) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.f4747B + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.f4747B) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i7 = this.f4748C;
            int i8 = height2 - (i7 / 2);
            height = i7 + i8;
            paddingTop = i8;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.f4748C + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.f4748C;
        }
        this.f4750E = paddingLeft;
        this.f4751F = paddingTop;
        this.f4753H = height;
        this.f4752G = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i3, int i4) {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        int intrinsicHeight2 = 0;
        if (this.f4778t) {
            StaticLayout staticLayout = this.f4756L;
            TextPaint textPaint = this.f4755J;
            if (staticLayout == null) {
                CharSequence charSequence = this.f4775q;
                this.f4756L = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.f4757M == null) {
                CharSequence charSequence2 = this.f4777s;
                this.f4757M = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.b;
        Rect rect = this.f4762R;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.b.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.b.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        if (this.f4778t) {
            iMax = (this.f4770l * 2) + Math.max(this.f4756L.getWidth(), this.f4757M.getWidth());
        } else {
            iMax = 0;
        }
        this.f4749D = Math.max(iMax, intrinsicWidth);
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.g.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        Drawable drawable3 = this.b;
        if (drawable3 != null) {
            Rect rectB = AbstractC0309p0.b(drawable3);
            iMax2 = Math.max(iMax2, rectB.left);
            iMax3 = Math.max(iMax3, rectB.right);
        }
        int iMax4 = this.f4754I ? Math.max(this.f4771m, (this.f4749D * 2) + iMax2 + iMax3) : this.f4771m;
        int iMax5 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.f4747B = iMax4;
        this.f4748C = iMax5;
        super.onMeasure(i3, i4);
        if (getMeasuredHeight() < iMax5) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax5);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f4774p : this.f4776r;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x008e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0093  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:52:0x00be  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00db  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f2  */
    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean zIsChecked;
        boolean targetCheckedState;
        float xVelocity;
        float f;
        VelocityTracker velocityTracker = this.f4783y;
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i3 = this.f4780v;
        if (actionMasked != 0) {
            float f3 = 0.0f;
            if (actionMasked == 1) {
                if (this.f4779u == 2) {
                    this.f4779u = 0;
                    if (motionEvent.getAction() == 1 || !isEnabled()) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    zIsChecked = isChecked();
                    if (z2) {
                        velocityTracker.computeCurrentVelocity(1000);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > this.f4784z) {
                            boolean z3 = q1.f4902a;
                            targetCheckedState = getLayoutDirection() == 1 ? xVelocity > 0.0f : xVelocity < 0.0f;
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.f4779u = 0;
                velocityTracker.clear();
            } else if (actionMasked == 2) {
                int i4 = this.f4779u;
                if (i4 == 1) {
                    float x2 = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    float f4 = i3;
                    if (Math.abs(x2 - this.f4781w) > f4 || Math.abs(y2 - this.f4782x) > f4) {
                        this.f4779u = 2;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        this.f4781w = x2;
                        this.f4782x = y2;
                        return true;
                    }
                } else if (i4 == 2) {
                    float x3 = motionEvent.getX();
                    int thumbScrollRange = getThumbScrollRange();
                    float f5 = x3 - this.f4781w;
                    if (thumbScrollRange != 0) {
                        f = f5 / thumbScrollRange;
                    } else {
                        f = f5 > 0.0f ? 1.0f : -1.0f;
                    }
                    boolean z4 = q1.f4902a;
                    if (getLayoutDirection() == 1) {
                        f = -f;
                    }
                    float f6 = this.f4746A;
                    float f7 = f + f6;
                    if (f7 >= 0.0f) {
                        f3 = f7 > 1.0f ? 1.0f : f7;
                    }
                    if (f3 != f6) {
                        this.f4781w = x3;
                        setThumbPosition(f3);
                    }
                    return true;
                }
            } else if (actionMasked == 3) {
                if (this.f4779u == 2) {
                    this.f4779u = 0;
                    if (motionEvent.getAction() == 1) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    zIsChecked = isChecked();
                    if (z2) {
                        velocityTracker.computeCurrentVelocity(1000);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > this.f4784z) {
                            boolean z5 = q1.f4902a;
                            if (getLayoutDirection() == 1) {
                            }
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                    motionEventObtain2.setAction(3);
                    super.onTouchEvent(motionEventObtain2);
                    motionEventObtain2.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.f4779u = 0;
                velocityTracker.clear();
            }
        } else {
            float x4 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (isEnabled() && this.b != null) {
                int thumbOffset = getThumbOffset();
                Drawable drawable = this.b;
                Rect rect = this.f4762R;
                drawable.getPadding(rect);
                int i5 = this.f4751F - i3;
                int i6 = (this.f4750E + thumbOffset) - i3;
                int i7 = this.f4749D + i6 + rect.left + rect.right + i3;
                int i8 = this.f4753H + i3;
                if (x4 > i6 && x4 < i7 && y3 > i5 && y3 < i8) {
                    this.f4779u = 1;
                    this.f4781w = x4;
                    this.f4782x = y3;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().c(z2);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        super.setChecked(z2);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                CharSequence string = this.f4774p;
                if (string == null) {
                    string = getResources().getString(com.minhub.gamehub.R.string.abc_capital_on);
                }
                ViewCompat.setStateDescription(this, string);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string2 = this.f4776r;
            if (string2 == null) {
                string2 = getResources().getString(com.minhub.gamehub.R.string.abc_capital_off);
            }
            ViewCompat.setStateDescription(this, string2);
        }
        if (getWindowToken() == null || !isLaidOut()) {
            ObjectAnimator objectAnimator = this.f4759O;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f4744S, zIsChecked ? 1.0f : 0.0f);
        this.f4759O = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        this.f4759O.setAutoCancel(true);
        this.f4759O.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().d(z2);
        setTextOnInternal(this.f4774p);
        setTextOffInternal(this.f4776r);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z2) {
        this.f4754I = z2;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z2) {
        if (this.f4778t != z2) {
            this.f4778t = z2;
            requestLayout();
            if (z2) {
                d();
            }
        }
    }

    public void setSplitTrack(boolean z2) {
        this.f4773o = z2;
        invalidate();
    }

    public void setSwitchMinWidth(int i3) {
        this.f4771m = i3;
        requestLayout();
    }

    public void setSwitchPadding(int i3) {
        this.f4772n = i3;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.f4755J;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        CharSequence string = this.f4776r;
        if (string == null) {
            string = getResources().getString(com.minhub.gamehub.R.string.abc_capital_off);
        }
        ViewCompat.setStateDescription(this, string);
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        CharSequence string = this.f4774p;
        if (string == null) {
            string = getResources().getString(com.minhub.gamehub.R.string.abc_capital_on);
        }
        ViewCompat.setStateDescription(this, string);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f4746A = f;
        invalidate();
    }

    public void setThumbResource(int i3) {
        setThumbDrawable(com.bumptech.glide.d.v(getContext(), i3));
    }

    public void setThumbTextPadding(int i3) {
        this.f4770l = i3;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f4763c = colorStateList;
        this.f4765e = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f4764d = mode;
        this.f = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i3) {
        setTrackDrawable(com.bumptech.glide.d.v(getContext(), i3));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f4766h = colorStateList;
        this.f4768j = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f4767i = mode;
        this.f4769k = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.b || drawable == this.g;
    }
}
