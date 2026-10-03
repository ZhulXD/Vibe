package k;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableCompoundDrawablesView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C extends MultiAutoCompleteTextView implements TintableBackgroundView, TintableCompoundDrawablesView {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f4669e = {R.attr.popupBackground};
    public final C0310q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z f4670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final E f4671d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.minhub.gamehub.R.attr.autoCompleteTextViewStyle);
        W0.a(context);
        V0.a(this, getContext());
        Z0 z0E = Z0.e(getContext(), attributeSet, f4669e, com.minhub.gamehub.R.attr.autoCompleteTextViewStyle);
        if (z0E.b.hasValue(0)) {
            setDropDownBackgroundDrawable(z0E.b(0));
        }
        z0E.f();
        C0310q c0310q = new C0310q(this);
        this.b = c0310q;
        c0310q.d(attributeSet, com.minhub.gamehub.R.attr.autoCompleteTextViewStyle);
        Z z2 = new Z(this);
        this.f4670c = z2;
        z2.f(attributeSet, com.minhub.gamehub.R.attr.autoCompleteTextViewStyle);
        z2.b();
        E e2 = new E((EditText) this);
        this.f4671d = e2;
        e2.b(attributeSet, com.minhub.gamehub.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = isFocusable();
        boolean zIsClickable = isClickable();
        boolean zIsLongClickable = isLongClickable();
        int inputType = getInputType();
        KeyListener keyListenerA = e2.a(keyListener);
        if (keyListenerA == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerA);
        setRawInputType(inputType);
        setFocusable(zIsFocusable);
        setClickable(zIsClickable);
        setLongClickable(zIsLongClickable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.a();
        }
        Z z2 = this.f4670c;
        if (z2 != null) {
            z2.b();
        }
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

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4670c.d();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4670c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        com.bumptech.glide.d.R(inputConnectionOnCreateInputConnection, editorInfo, this);
        return this.f4671d.c(inputConnectionOnCreateInputConnection, editorInfo);
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

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4670c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4670c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i3) {
        setDropDownBackgroundDrawable(com.bumptech.glide.d.v(getContext(), i3));
    }

    public void setEmojiCompatEnabled(boolean z2) {
        this.f4671d.d(z2);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f4671d.a(keyListener));
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

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        Z z2 = this.f4670c;
        z2.k(colorStateList);
        z2.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.f4670c;
        z2.l(mode);
        z2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i3) {
        super.setTextAppearance(context, i3);
        Z z2 = this.f4670c;
        if (z2 != null) {
            z2.g(context, i3);
        }
    }
}
