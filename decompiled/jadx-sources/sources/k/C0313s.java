package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableCompoundButton;
import androidx.core.widget.TintableCompoundDrawablesView;

/* JADX INFO: renamed from: k.s, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C0313s extends CheckBox implements TintableCompoundButton, TintableBackgroundView, TintableCompoundDrawablesView {
    public final C0317u b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0310q f4909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Z f4910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0327z f4911e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0313s(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        W0.a(context);
        V0.a(this, getContext());
        C0317u c0317u = new C0317u(this);
        this.b = c0317u;
        c0317u.c(attributeSet, i3);
        C0310q c0310q = new C0310q(this);
        this.f4909c = c0310q;
        c0310q.d(attributeSet, i3);
        Z z2 = new Z(this);
        this.f4910d = z2;
        z2.f(attributeSet, i3);
        getEmojiTextViewHelper().b(attributeSet, i3);
    }

    private C0327z getEmojiTextViewHelper() {
        if (this.f4911e == null) {
            this.f4911e = new C0327z(this);
        }
        return this.f4911e;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0310q c0310q = this.f4909c;
        if (c0310q != null) {
            c0310q.a();
        }
        Z z2 = this.f4910d;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        C0310q c0310q = this.f4909c;
        if (c0310q != null) {
            return c0310q.b();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0310q c0310q = this.f4909c;
        if (c0310q != null) {
            return c0310q.c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    public ColorStateList getSupportButtonTintList() {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            return c0317u.f4916a;
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    public PorterDuff.Mode getSupportButtonTintMode() {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            return c0317u.b;
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4910d.d();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4910d.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().c(z2);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0310q c0310q = this.f4909c;
        if (c0310q != null) {
            c0310q.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        super.setBackgroundResource(i3);
        C0310q c0310q = this.f4909c;
        if (c0310q != null) {
            c0310q.f(i3);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0317u c0317u = this.b;
        if (c0317u != null) {
            if (c0317u.f4919e) {
                c0317u.f4919e = false;
            } else {
                c0317u.f4919e = true;
                c0317u.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4910d;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4910d;
        if (z2 != null) {
            z2.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().d(z2);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0310q c0310q = this.f4909c;
        if (c0310q != null) {
            c0310q.h(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0310q c0310q = this.f4909c;
        if (c0310q != null) {
            c0310q.i(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            c0317u.f4916a = colorStateList;
            c0317u.f4917c = true;
            c0317u.a();
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            c0317u.b = mode;
            c0317u.f4918d = true;
            c0317u.a();
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        Z z2 = this.f4910d;
        z2.k(colorStateList);
        z2.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.f4910d;
        z2.l(mode);
        z2.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i3) {
        setButtonDrawable(com.bumptech.glide.d.v(getContext(), i3));
    }
}
