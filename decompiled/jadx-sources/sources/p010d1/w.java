package p010d1;

import R0.t;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.minhub.gamehub.R;
import k.C0285d0;
import k.Z0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends LinearLayout {
    public final TextInputLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0285d0 f3970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f3971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CheckableImageButton f3972e;
    public ColorStateList f;
    public PorterDuff.Mode g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3973h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView.ScaleType f3974i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View.OnLongClickListener f3975j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3976k;

    public w(TextInputLayout textInputLayout, Z0 z2) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f3972e = checkableImageButton;
        C0285d0 c0285d0 = new C0285d0(getContext(), null);
        this.f3970c = c0285d0;
        if (d.K(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        View.OnLongClickListener onLongClickListener = this.f3975j;
        checkableImageButton.setOnClickListener(null);
        c.S(checkableImageButton, onLongClickListener);
        this.f3975j = null;
        checkableImageButton.setOnLongClickListener(null);
        c.S(checkableImageButton, null);
        TypedArray typedArray = z2.b;
        if (typedArray.hasValue(69)) {
            this.f = d.s(getContext(), z2, 69);
        }
        if (typedArray.hasValue(70)) {
            this.g = t.e(typedArray.getInt(70, -1), null);
        }
        if (typedArray.hasValue(66)) {
            b(z2.b(66));
            if (typedArray.hasValue(65) && checkableImageButton.getContentDescription() != (text = typedArray.getText(65))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(64, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(67, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f3973h) {
            this.f3973h = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(68)) {
            ImageView.ScaleType scaleTypeH = c.h(typedArray.getInt(68, -1));
            this.f3974i = scaleTypeH;
            checkableImageButton.setScaleType(scaleTypeH);
        }
        c0285d0.setVisibility(8);
        c0285d0.setId(R.id.textinput_prefix_text);
        c0285d0.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(c0285d0, 1);
        TextViewCompat.setTextAppearance(c0285d0, typedArray.getResourceId(60, 0));
        if (typedArray.hasValue(61)) {
            c0285d0.setTextColor(z2.a(61));
        }
        CharSequence text2 = typedArray.getText(59);
        this.f3971d = TextUtils.isEmpty(text2) ? null : text2;
        c0285d0.setText(text2);
        e();
        addView(checkableImageButton);
        addView(c0285d0);
    }

    public final int a() {
        int marginEnd;
        CheckableImageButton checkableImageButton = this.f3972e;
        if (checkableImageButton.getVisibility() == 0) {
            marginEnd = MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth();
        } else {
            marginEnd = 0;
        }
        return ViewCompat.getPaddingStart(this.f3970c) + ViewCompat.getPaddingStart(this) + marginEnd;
    }

    public final void b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f3972e;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f;
            PorterDuff.Mode mode = this.g;
            TextInputLayout textInputLayout = this.b;
            c.a(textInputLayout, checkableImageButton, colorStateList, mode);
            c(true);
            c.F(textInputLayout, checkableImageButton, this.f);
            return;
        }
        c(false);
        View.OnLongClickListener onLongClickListener = this.f3975j;
        checkableImageButton.setOnClickListener(null);
        c.S(checkableImageButton, onLongClickListener);
        this.f3975j = null;
        checkableImageButton.setOnLongClickListener(null);
        c.S(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void c(boolean z2) {
        CheckableImageButton checkableImageButton = this.f3972e;
        if ((checkableImageButton.getVisibility() == 0) != z2) {
            checkableImageButton.setVisibility(z2 ? 0 : 8);
            d();
            e();
        }
    }

    public final void d() {
        EditText editText = this.b.f3588e;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f3970c, this.f3972e.getVisibility() == 0 ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void e() {
        int i3 = (this.f3971d == null || this.f3976k) ? 8 : 0;
        setVisibility((this.f3972e.getVisibility() == 0 || i3 == 0) ? 0 : 8);
        this.f3970c.setVisibility(i3);
        this.b.q();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        d();
    }
}
