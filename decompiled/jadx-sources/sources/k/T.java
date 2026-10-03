package k;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.core.view.TintableBackgroundView;
import p024j.ViewTreeObserverOnGlobalLayoutListenerC0267f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class T extends Spinner implements TintableBackgroundView {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f4738j = {R.attr.spinnerMode};
    public final C0310q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f4739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final K f4740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SpinnerAdapter f4741e;
    public final boolean f;
    public final S g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f4743i;

    /* JADX WARN: Code duplicated, block: B:26:0x0065 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0068  */
    /* JADX WARN: Code duplicated, block: B:29:0x0099  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d3  */
    public T(Context context, AttributeSet attributeSet) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, com.minhub.gamehub.R.attr.spinnerStyle);
        this.f4743i = new Rect();
        V0.a(this, getContext());
        int[] iArr = p008d.a.f3858u;
        Z0 z0E = Z0.e(context, attributeSet, iArr, com.minhub.gamehub.R.attr.spinnerStyle);
        TypedArray typedArray = z0E.b;
        this.b = new C0310q(this);
        int resourceId = typedArray.getResourceId(4, 0);
        if (resourceId != 0) {
            this.f4739c = new p021i.c(context, resourceId);
        } else {
            this.f4739c = context;
        }
        int i3 = -1;
        TypedArray typedArray2 = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4738j, com.minhub.gamehub.R.attr.spinnerStyle, 0);
            try {
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i3 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                    if (typedArrayObtainStyledAttributes != null) {
                    }
                    if (i3 != 0) {
                        M m2 = new M(this);
                        this.g = m2;
                        m2.f4713d = typedArray.getString(2);
                    } else if (i3 == 1) {
                        P p2 = new P(this, this.f4739c, attributeSet);
                        Z0 z0E2 = Z0.e(this.f4739c, attributeSet, iArr, com.minhub.gamehub.R.attr.spinnerStyle);
                        this.f4742h = z0E2.b.getLayoutDimension(3, -2);
                        p2.h(z0E2.b(1));
                        p2.f4723D = typedArray.getString(2);
                        z0E2.f();
                        this.g = p2;
                        this.f4740d = new K(this, this, p2);
                    }
                    textArray = typedArray.getTextArray(0);
                    if (textArray != null) {
                        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
                        arrayAdapter.setDropDownViewResource(com.minhub.gamehub.R.layout.support_simple_spinner_dropdown_item);
                        setAdapter((SpinnerAdapter) arrayAdapter);
                    }
                    z0E.f();
                    this.f = true;
                    spinnerAdapter = this.f4741e;
                    if (spinnerAdapter != null) {
                        setAdapter(spinnerAdapter);
                        this.f4741e = null;
                    }
                    this.b.d(attributeSet, com.minhub.gamehub.R.attr.spinnerStyle);
                }
            } catch (Throwable th) {
                th = th;
                typedArray2 = typedArrayObtainStyledAttributes;
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
            if (typedArray2 != null) {
                typedArray2.recycle();
            }
            throw th;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i3 != 0) {
            M m3 = new M(this);
            this.g = m3;
            m3.f4713d = typedArray.getString(2);
        } else if (i3 == 1) {
            P p3 = new P(this, this.f4739c, attributeSet);
            Z0 z0E3 = Z0.e(this.f4739c, attributeSet, iArr, com.minhub.gamehub.R.attr.spinnerStyle);
            this.f4742h = z0E3.b.getLayoutDimension(3, -2);
            p3.h(z0E3.b(1));
            p3.f4723D = typedArray.getString(2);
            z0E3.f();
            this.g = p3;
            this.f4740d = new K(this, this, p3);
        }
        textArray = typedArray.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter2.setDropDownViewResource(com.minhub.gamehub.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter2);
        }
        z0E.f();
        this.f = true;
        spinnerAdapter = this.f4741e;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f4741e = null;
        }
        this.b.d(attributeSet, com.minhub.gamehub.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i3 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.f4743i;
        drawable.getPadding(rect);
        return rect.left + rect.right + iMax2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        S s2 = this.g;
        return s2 != null ? s2.a() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        S s2 = this.g;
        return s2 != null ? s2.n() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.g != null ? this.f4742h : super.getDropDownWidth();
    }

    public final S getInternalPopup() {
        return this.g;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        S s2 = this.g;
        return s2 != null ? s2.e() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f4739c;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        S s2 = this.g;
        return s2 != null ? s2.o() : super.getPrompt();
    }

    @Override // androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            return c0310q.b();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            return c0310q.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        S s2 = this.g;
        if (s2 == null || !s2.b()) {
            return;
        }
        s2.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        if (this.g == null || View.MeasureSpec.getMode(i3) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i3)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        Q q2 = (Q) parcelable;
        super.onRestoreInstanceState(q2.getSuperState());
        if (!q2.b || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0267f(2, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        Q q2 = new Q(super.onSaveInstanceState());
        S s2 = this.g;
        q2.b = s2 != null && s2.b();
        return q2;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        K k2 = this.f4740d;
        if (k2 == null || !k2.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        S s2 = this.g;
        if (s2 == null) {
            return super.performClick();
        }
        if (s2.b()) {
            return true;
        }
        s2.m(getTextDirection(), getTextAlignment());
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        super.setBackgroundResource(i3);
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.f(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i3) {
        S s2 = this.g;
        if (s2 == null) {
            super.setDropDownHorizontalOffset(i3);
        } else {
            s2.j(i3);
            s2.l(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i3) {
        S s2 = this.g;
        if (s2 != null) {
            s2.i(i3);
        } else {
            super.setDropDownVerticalOffset(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i3) {
        if (this.g != null) {
            this.f4742h = i3;
        } else {
            super.setDropDownWidth(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        S s2 = this.g;
        if (s2 != null) {
            s2.h(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i3) {
        setPopupBackgroundDrawable(com.bumptech.glide.d.v(getPopupContext(), i3));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        S s2 = this.g;
        if (s2 != null) {
            s2.g(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.h(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.i(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f) {
            this.f4741e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        S s2 = this.g;
        if (s2 != null) {
            Context context = this.f4739c;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            N n2 = new N();
            n2.f4719a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                n2.b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                L.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
            s2.p(n2);
        }
    }
}
