package p010d1;

import E.b;
import R0.t;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.widget.TextViewCompat;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.minhub.gamehub.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k.C0285d0;
import k.Z0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends LinearLayout {
    public final TextInputLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f3908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CheckableImageButton f3909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f3910e;
    public PorterDuff.Mode f;
    public View.OnLongClickListener g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CheckableImageButton f3911h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m f3912i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3913j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashSet f3914k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f3915l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f3916m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3917n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView.ScaleType f3918o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View.OnLongClickListener f3919p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f3920q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final C0285d0 f3921r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3922s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public EditText f3923t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AccessibilityManager f3924u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener f3925v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final j f3926w;

    public n(TextInputLayout textInputLayout, Z0 z2) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f3913j = 0;
        this.f3914k = new LinkedHashSet();
        this.f3926w = new j(this);
        k kVar = new k(this);
        this.f3924u = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f3908c = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonA = a(this, layoutInflaterFrom, R.id.text_input_error_icon);
        this.f3909d = checkableImageButtonA;
        CheckableImageButton checkableImageButtonA2 = a(frameLayout, layoutInflaterFrom, R.id.text_input_end_icon);
        this.f3911h = checkableImageButtonA2;
        this.f3912i = new m(this, z2);
        C0285d0 c0285d0 = new C0285d0(getContext(), null);
        this.f3921r = c0285d0;
        TypedArray typedArray = z2.b;
        if (typedArray.hasValue(38)) {
            this.f3910e = d.s(getContext(), z2, 38);
        }
        if (typedArray.hasValue(39)) {
            this.f = t.e(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            i(z2.b(37));
        }
        checkableImageButtonA.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(checkableImageButtonA, 2);
        checkableImageButtonA.setClickable(false);
        checkableImageButtonA.setPressable(false);
        checkableImageButtonA.setFocusable(false);
        if (!typedArray.hasValue(53)) {
            if (typedArray.hasValue(32)) {
                this.f3915l = d.s(getContext(), z2, 32);
            }
            if (typedArray.hasValue(33)) {
                this.f3916m = t.e(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            g(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && checkableImageButtonA2.getContentDescription() != (text = typedArray.getText(27))) {
                checkableImageButtonA2.setContentDescription(text);
            }
            checkableImageButtonA2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(53)) {
            if (typedArray.hasValue(54)) {
                this.f3915l = d.s(getContext(), z2, 54);
            }
            if (typedArray.hasValue(55)) {
                this.f3916m = t.e(typedArray.getInt(55, -1), null);
            }
            g(typedArray.getBoolean(53, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(51);
            if (checkableImageButtonA2.getContentDescription() != text2) {
                checkableImageButtonA2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f3917n) {
            this.f3917n = dimensionPixelSize;
            checkableImageButtonA2.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA2.setMinimumHeight(dimensionPixelSize);
            checkableImageButtonA.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType scaleTypeH = c.h(typedArray.getInt(31, -1));
            this.f3918o = scaleTypeH;
            checkableImageButtonA2.setScaleType(scaleTypeH);
            checkableImageButtonA.setScaleType(scaleTypeH);
        }
        c0285d0.setVisibility(8);
        c0285d0.setId(R.id.textinput_suffix_text);
        c0285d0.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        ViewCompat.setAccessibilityLiveRegion(c0285d0, 1);
        TextViewCompat.setTextAppearance(c0285d0, typedArray.getResourceId(72, 0));
        if (typedArray.hasValue(73)) {
            c0285d0.setTextColor(z2.a(73));
        }
        CharSequence text3 = typedArray.getText(71);
        this.f3920q = TextUtils.isEmpty(text3) ? null : text3;
        c0285d0.setText(text3);
        n();
        frameLayout.addView(checkableImageButtonA2);
        addView(c0285d0);
        addView(frameLayout);
        addView(checkableImageButtonA);
        textInputLayout.f3590f0.add(kVar);
        if (textInputLayout.f3588e != null) {
            kVar.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new l(0, this));
    }

    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i3) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i3);
        if (d.K(getContext())) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    public final o b() {
        o eVar;
        int i3 = this.f3913j;
        m mVar = this.f3912i;
        SparseArray sparseArray = mVar.f3905a;
        o oVar = (o) sparseArray.get(i3);
        if (oVar != null) {
            return oVar;
        }
        n nVar = mVar.b;
        if (i3 == -1) {
            eVar = new e(nVar, 0);
        } else if (i3 == 0) {
            eVar = new e(nVar, 1);
        } else if (i3 == 1) {
            eVar = new v(nVar, mVar.f3907d);
        } else if (i3 == 2) {
            eVar = new d(nVar);
        } else {
            if (i3 != 3) {
                throw new IllegalArgumentException(b.i(i3, "Invalid end icon mode: "));
            }
            eVar = new i(nVar);
        }
        sparseArray.append(i3, eVar);
        return eVar;
    }

    public final int c() {
        int marginStart;
        if (d() || e()) {
            CheckableImageButton checkableImageButton = this.f3911h;
            marginStart = MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return ViewCompat.getPaddingEnd(this.f3921r) + ViewCompat.getPaddingEnd(this) + marginStart;
    }

    public final boolean d() {
        return this.f3908c.getVisibility() == 0 && this.f3911h.getVisibility() == 0;
    }

    public final boolean e() {
        return this.f3909d.getVisibility() == 0;
    }

    public final void f(boolean z2) {
        boolean z3;
        boolean zIsActivated;
        boolean z4;
        o oVarB = b();
        boolean zJ = oVarB.j();
        CheckableImageButton checkableImageButton = this.f3911h;
        boolean z5 = true;
        if (!zJ || (z4 = checkableImageButton.f3475e) == oVarB.k()) {
            z3 = false;
        } else {
            checkableImageButton.setChecked(!z4);
            z3 = true;
        }
        if (!(oVarB instanceof i) || (zIsActivated = checkableImageButton.isActivated()) == ((i) oVarB).f3896l) {
            z5 = z3;
        } else {
            checkableImageButton.setActivated(!zIsActivated);
        }
        if (z2 || z5) {
            c.F(this.b, checkableImageButton, this.f3915l);
        }
    }

    public final void g(int i3) {
        if (this.f3913j == i3) {
            return;
        }
        o oVarB = b();
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.f3925v;
        AccessibilityManager accessibilityManager = this.f3924u;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
        }
        this.f3925v = null;
        oVarB.r();
        this.f3913j = i3;
        Iterator it = this.f3914k.iterator();
        if (it.hasNext()) {
            throw b.g(it);
        }
        h(i3 != 0);
        o oVarB2 = b();
        int iD = this.f3912i.f3906c;
        if (iD == 0) {
            iD = oVarB2.d();
        }
        Drawable drawableV = iD != 0 ? d.v(getContext(), iD) : null;
        CheckableImageButton checkableImageButton = this.f3911h;
        checkableImageButton.setImageDrawable(drawableV);
        TextInputLayout textInputLayout = this.b;
        if (drawableV != null) {
            c.a(textInputLayout, checkableImageButton, this.f3915l, this.f3916m);
            c.F(textInputLayout, checkableImageButton, this.f3915l);
        }
        int iC = oVarB2.c();
        CharSequence text = iC != 0 ? getResources().getText(iC) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(oVarB2.j());
        if (!oVarB2.i(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i3);
        }
        oVarB2.q();
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListenerH = oVarB2.h();
        this.f3925v = touchExplorationStateChangeListenerH;
        if (touchExplorationStateChangeListenerH != null && accessibilityManager != null && ViewCompat.isAttachedToWindow(this)) {
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(accessibilityManager, this.f3925v);
        }
        View.OnClickListener onClickListenerF = oVarB2.f();
        View.OnLongClickListener onLongClickListener = this.f3919p;
        checkableImageButton.setOnClickListener(onClickListenerF);
        c.S(checkableImageButton, onLongClickListener);
        EditText editText = this.f3923t;
        if (editText != null) {
            oVarB2.l(editText);
            j(oVarB2);
        }
        c.a(textInputLayout, checkableImageButton, this.f3915l, this.f3916m);
        f(true);
    }

    public final void h(boolean z2) {
        if (d() != z2) {
            this.f3911h.setVisibility(z2 ? 0 : 8);
            k();
            m();
            this.b.q();
        }
    }

    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f3909d;
        checkableImageButton.setImageDrawable(drawable);
        l();
        c.a(this.b, checkableImageButton, this.f3910e, this.f);
    }

    public final void j(o oVar) {
        if (this.f3923t == null) {
            return;
        }
        if (oVar.e() != null) {
            this.f3923t.setOnFocusChangeListener(oVar.e());
        }
        if (oVar.g() != null) {
            this.f3911h.setOnFocusChangeListener(oVar.g());
        }
    }

    public final void k() {
        this.f3908c.setVisibility((this.f3911h.getVisibility() != 0 || e()) ? 8 : 0);
        setVisibility((d() || e() || ((this.f3920q == null || this.f3922s) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    public final void l() {
        CheckableImageButton checkableImageButton = this.f3909d;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.b;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.f3598k.f3950q && textInputLayout.m()) ? 0 : 8);
        k();
        m();
        if (this.f3913j != 0) {
            return;
        }
        textInputLayout.q();
    }

    public final void m() {
        TextInputLayout textInputLayout = this.b;
        if (textInputLayout.f3588e == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f3921r, getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), textInputLayout.f3588e.getPaddingTop(), (d() || e()) ? 0 : ViewCompat.getPaddingEnd(textInputLayout.f3588e), textInputLayout.f3588e.getPaddingBottom());
    }

    public final void n() {
        C0285d0 c0285d0 = this.f3921r;
        int visibility = c0285d0.getVisibility();
        int i3 = (this.f3920q == null || this.f3922s) ? 8 : 0;
        if (visibility != i3) {
            b().o(i3 == 0);
        }
        k();
        c0285d0.setVisibility(i3);
        this.b.q();
    }
}
