package k;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCompoundDrawablesView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p024j.C0269h;

/* JADX INFO: renamed from: k.d0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C0285d0 extends TextView implements TintableBackgroundView, TintableCompoundDrawablesView, AutoSizeableTextView {
    public final C0310q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z f4815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final E f4816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0327z f4817e;
    public boolean f;
    public C0269h g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Future f4818h;

    public C0285d0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private C0327z getEmojiTextViewHelper() {
        if (this.f4817e == null) {
            this.f4817e = new C0327z(this);
        }
        return this.f4817e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.a();
        }
        Z z2 = this.f4815c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    public int getAutoSizeMaxTextSize() {
        if (q1.f4903c) {
            return super.getAutoSizeMaxTextSize();
        }
        Z z2 = this.f4815c;
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
        Z z2 = this.f4815c;
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
        Z z2 = this.f4815c;
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
        Z z2 = this.f4815c;
        return z2 != null ? z2.f4801i.f : new int[0];
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (q1.f4903c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        Z z2 = this.f4815c;
        if (z2 != null) {
            return z2.f4801i.f4831a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return TextViewCompat.getFirstBaselineToTopHeight(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return TextViewCompat.getLastBaselineToBottomHeight(this);
    }

    public InterfaceC0279a0 getSuperCaller() {
        if (this.g == null) {
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 34) {
                this.g = new C0283c0(this);
            } else if (i3 >= 28) {
                this.g = new C0281b0(this);
            } else if (i3 >= 26) {
                this.g = new C0269h(6, this);
            }
        }
        return this.g;
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
        return this.f4815c.d();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4815c.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future future = this.f4818h;
        if (future != null) {
            try {
                this.f4818h = null;
                TextViewCompat.setPrecomputedText(this, (PrecomputedTextCompat) future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        E e2;
        if (Build.VERSION.SDK_INT >= 28 || (e2 = this.f4816d) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) e2.f4674c;
        return textClassifier == null ? U.a((TextView) e2.b) : textClassifier;
    }

    public PrecomputedTextCompat.Params getTextMetricsParamsCompat() {
        return TextViewCompat.getTextMetricsParams(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f4815c.getClass();
        if (Build.VERSION.SDK_INT < 30 && inputConnectionOnCreateInputConnection != null) {
            EditorInfoCompat.setInitialSurroundingText(editorInfo, getText());
        }
        com.bumptech.glide.d.R(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 30 || i3 >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        Z z3 = this.f4815c;
        if (z3 == null || q1.f4903c) {
            return;
        }
        z3.f4801i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i3, int i4) {
        Future future = this.f4818h;
        if (future != null) {
            try {
                this.f4818h = null;
                TextViewCompat.setPrecomputedText(this, (PrecomputedTextCompat) future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i3, i4);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        super.onTextChanged(charSequence, i3, i4, i5);
        Z z2 = this.f4815c;
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
        Z z2 = this.f4815c;
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
        Z z2 = this.f4815c;
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
        Z z2 = this.f4815c;
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
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4815c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4815c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4815c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        Z z2 = this.f4815c;
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

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i3) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().j(i3);
        } else {
            TextViewCompat.setFirstBaselineToTopHeight(this, i3);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i3) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().b(i3);
        } else {
            TextViewCompat.setLastBaselineToBottomHeight(this, i3);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i3) {
        TextViewCompat.setLineHeight(this, i3);
    }

    public void setPrecomputedText(PrecomputedTextCompat precomputedTextCompat) {
        TextViewCompat.setPrecomputedText(this, precomputedTextCompat);
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
        Z z2 = this.f4815c;
        z2.k(colorStateList);
        z2.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        Z z2 = this.f4815c;
        z2.l(mode);
        z2.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i3) {
        super.setTextAppearance(context, i3);
        Z z2 = this.f4815c;
        if (z2 != null) {
            z2.g(context, i3);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        E e2;
        if (Build.VERSION.SDK_INT >= 28 || (e2 = this.f4816d) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            e2.f4674c = textClassifier;
        }
    }

    public void setTextFuture(Future<PrecomputedTextCompat> future) {
        this.f4818h = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(PrecomputedTextCompat.Params params) {
        TextViewCompat.setTextMetricsParams(this, params);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i3, float f) {
        boolean z2 = q1.f4903c;
        if (z2) {
            super.setTextSize(i3, f);
            return;
        }
        Z z3 = this.f4815c;
        if (z3 != null) {
            C0295i0 c0295i0 = z3.f4801i;
            if (z2 || c0295i0.f()) {
                return;
            }
            c0295i0.g(i3, f);
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i3) {
        if (this.f) {
            return;
        }
        Typeface typefaceCreate = (typeface == null || i3 <= 0) ? null : TypefaceCompat.create(getContext(), typeface, i3);
        this.f = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i3);
        } finally {
            this.f = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0285d0(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        W0.a(context);
        this.f = false;
        this.g = null;
        V0.a(this, getContext());
        C0310q c0310q = new C0310q(this);
        this.b = c0310q;
        c0310q.d(attributeSet, i3);
        Z z2 = new Z(this);
        this.f4815c = z2;
        z2.f(attributeSet, i3);
        z2.b();
        this.f4816d = new E(this);
        getEmojiTextViewHelper().b(attributeSet, i3);
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i3, float f) {
        if (Build.VERSION.SDK_INT >= 34) {
            getSuperCaller().o(i3, f);
        } else {
            TextViewCompat.setLineHeight(this, i3, f);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i3, int i4, int i5, int i6) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i3 != 0 ? com.bumptech.glide.d.v(context, i3) : null, i4 != 0 ? com.bumptech.glide.d.v(context, i4) : null, i5 != 0 ? com.bumptech.glide.d.v(context, i5) : null, i6 != 0 ? com.bumptech.glide.d.v(context, i6) : null);
        Z z2 = this.f4815c;
        if (z2 != null) {
            z2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i3, int i4, int i5, int i6) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i3 != 0 ? com.bumptech.glide.d.v(context, i3) : null, i4 != 0 ? com.bumptech.glide.d.v(context, i4) : null, i5 != 0 ? com.bumptech.glide.d.v(context, i5) : null, i6 != 0 ? com.bumptech.glide.d.v(context, i6) : null);
        Z z2 = this.f4815c;
        if (z2 != null) {
            z2.b();
        }
    }
}
