package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CheckedTextViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCheckedTextView;
import androidx.core.widget.TintableCompoundDrawablesView;
import com.minhub.gamehub.R;

/* JADX INFO: renamed from: k.t, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0315t extends CheckedTextView implements TintableCheckedTextView, TintableBackgroundView, TintableCompoundDrawablesView {
    public final C0317u b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0310q f4912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Z f4913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0327z f4914e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0315t(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        W0.a(context);
        V0.a(this, getContext());
        Z z2 = new Z(this);
        this.f4913d = z2;
        z2.f(attributeSet, R.attr.checkedTextViewStyle);
        z2.b();
        C0310q c0310q = new C0310q(this);
        this.f4912c = c0310q;
        c0310q.d(attributeSet, R.attr.checkedTextViewStyle);
        this.b = new C0317u(this);
        Context context2 = getContext();
        int[] iArr = p008d.a.f3849l;
        Z0 z0E = Z0.e(context2, attributeSet, iArr, R.attr.checkedTextViewStyle);
        TypedArray typedArray = z0E.b;
        ViewCompat.saveAttributeDataForStyleable(this, getContext(), iArr, attributeSet, z0E.b, R.attr.checkedTextViewStyle, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setCheckMarkDrawable(com.bumptech.glide.d.v(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        setCheckMarkDrawable(com.bumptech.glide.d.v(getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setCheckMarkDrawable(com.bumptech.glide.d.v(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                CheckedTextViewCompat.setCheckMarkTintList(this, z0E.a(2));
            }
            if (typedArray.hasValue(3)) {
                CheckedTextViewCompat.setCheckMarkTintMode(this, AbstractC0309p0.c(typedArray.getInt(3, -1), null));
            }
            z0E.f();
            getEmojiTextViewHelper().b(attributeSet, R.attr.checkedTextViewStyle);
        } catch (Throwable th) {
            z0E.f();
            throw th;
        }
    }

    private C0327z getEmojiTextViewHelper() {
        if (this.f4914e == null) {
            this.f4914e = new C0327z(this);
        }
        return this.f4914e;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Z z2 = this.f4913d;
        if (z2 != null) {
            z2.b();
        }
        C0310q c0310q = this.f4912c;
        if (c0310q != null) {
            c0310q.a();
        }
        C0317u c0317u = this.b;
        if (c0317u != null) {
            c0317u.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    @Override // androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        C0310q c0310q = this.f4912c;
        if (c0310q != null) {
            return c0310q.b();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0310q c0310q = this.f4912c;
        if (c0310q != null) {
            return c0310q.c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    public ColorStateList getSupportCheckMarkTintList() {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            return c0317u.f4916a;
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            return c0317u.b;
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4913d.d();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4913d.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        com.bumptech.glide.d.R(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().c(z2);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0310q c0310q = this.f4912c;
        if (c0310q != null) {
            c0310q.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        super.setBackgroundResource(i3);
        C0310q c0310q = this.f4912c;
        if (c0310q != null) {
            c0310q.f(i3);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C0317u c0317u = this.b;
        if (c0317u != null) {
            if (c0317u.f4919e) {
                c0317u.f4919e = false;
            } else {
                c0317u.f4919e = true;
                c0317u.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4913d;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4913d;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().d(z2);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0310q c0310q = this.f4912c;
        if (c0310q != null) {
            c0310q.h(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0310q c0310q = this.f4912c;
        if (c0310q != null) {
            c0310q.i(mode);
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            c0317u.f4916a = colorStateList;
            c0317u.f4917c = true;
            c0317u.b();
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C0317u c0317u = this.b;
        if (c0317u != null) {
            c0317u.b = mode;
            c0317u.f4918d = true;
            c0317u.b();
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        Z z2 = this.f4913d;
        z2.k(colorStateList);
        z2.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.f4913d;
        z2.l(mode);
        z2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i3) {
        super.setTextAppearance(context, i3);
        Z z2 = this.f4913d;
        if (z2 != null) {
            z2.g(context, i3);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i3) {
        setCheckMarkDrawable(com.bumptech.glide.d.v(getContext(), i3));
    }
}
