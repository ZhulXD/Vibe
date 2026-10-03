package k;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCompoundDrawablesView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class r extends Button implements TintableBackgroundView, AutoSizeableTextView, TintableCompoundDrawablesView {
    public final C0310q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z f4904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0327z f4905d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        W0.a(context);
        V0.a(this, getContext());
        C0310q c0310q = new C0310q(this);
        this.b = c0310q;
        c0310q.d(attributeSet, i3);
        Z z2 = new Z(this);
        this.f4904c = z2;
        z2.f(attributeSet, i3);
        z2.b();
        getEmojiTextViewHelper().b(attributeSet, i3);
    }

    private C0327z getEmojiTextViewHelper() {
        if (this.f4905d == null) {
            this.f4905d = new C0327z(this);
        }
        return this.f4905d;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.a();
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public int getAutoSizeMaxTextSize() {
        if (q1.f4903c) {
            return super.getAutoSizeMaxTextSize();
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            return Math.round(z2.f4801i.f4834e);
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public int getAutoSizeMinTextSize() {
        if (q1.f4903c) {
            return super.getAutoSizeMinTextSize();
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            return Math.round(z2.f4801i.f4833d);
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public int getAutoSizeStepGranularity() {
        if (q1.f4903c) {
            return super.getAutoSizeStepGranularity();
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            return Math.round(z2.f4801i.f4832c);
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (q1.f4903c) {
            return super.getAutoSizeTextAvailableSizes();
        }
        Z z2 = this.f4904c;
        return z2 != null ? z2.f4801i.f : new int[0];
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (q1.f4903c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            return z2.f4801i.f4831a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            return c0310q.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            return c0310q.c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4904c.d();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4904c.e();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        Z z3 = this.f4904c;
        if (z3 == null || q1.f4903c) {
            return;
        }
        z3.f4801i.a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        super.onTextChanged(charSequence, i3, i4, i5);
        Z z2 = this.f4904c;
        if (z2 != null) {
            C0295i0 c0295i0 = z2.f4801i;
            if (q1.f4903c || !c0295i0.f()) {
                return;
            }
            c0295i0.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().c(z2);
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i3, int i4, int i5, int i6) {
        if (q1.f4903c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i3, i4, i5, i6);
            return;
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            z2.h(i3, i4, i5, i6);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i3) {
        if (q1.f4903c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i3);
            return;
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            z2.i(iArr, i3);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public void setAutoSizeTextTypeWithDefaults(int i3) {
        if (q1.f4903c) {
            super.setAutoSizeTextTypeWithDefaults(i3);
            return;
        }
        Z z2 = this.f4904c;
        if (z2 != null) {
            z2.j(i3);
        }
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
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().d(z2);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z2) {
        Z z3 = this.f4904c;
        if (z3 != null) {
            z3.f4796a.setAllCaps(z2);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.i(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        Z z2 = this.f4904c;
        z2.k(colorStateList);
        z2.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.f4904c;
        z2.l(mode);
        z2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i3) {
        super.setTextAppearance(context, i3);
        Z z2 = this.f4904c;
        if (z2 != null) {
            z2.g(context, i3);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i3, float f) {
        boolean z2 = q1.f4903c;
        if (z2) {
            super.setTextSize(i3, f);
            return;
        }
        Z z3 = this.f4904c;
        if (z3 != null) {
            C0295i0 c0295i0 = z3.f4801i;
            if (z2 || c0295i0.f()) {
                return;
            }
            c0295i0.g(i3, f);
        }
    }
}
