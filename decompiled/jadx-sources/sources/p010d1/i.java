package p010d1;

import B0.a;
import B1.C0046b;
import C1.RunnableC0068g1;
import C1.V;
import J0.b;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.bumptech.glide.c;
import com.google.android.material.textfield.TextInputLayout;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3891e;
    public final int f;
    public final TimeInterpolator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AutoCompleteTextView f3892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final V f3893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ViewOnFocusChangeListenerC0238a f3894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C0046b f3895k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3896l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3897m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3898n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f3899o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AccessibilityManager f3900p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ValueAnimator f3901q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ValueAnimator f3902r;

    public i(n nVar) {
        super(nVar);
        this.f3893i = new V(6, this);
        this.f3894j = new ViewOnFocusChangeListenerC0238a(this, 1);
        this.f3895k = new C0046b(9, this);
        this.f3899o = Long.MAX_VALUE;
        this.f = c.N(nVar.getContext(), R.attr.motionDurationShort3, 67);
        this.f3891e = c.N(nVar.getContext(), R.attr.motionDurationShort3, 50);
        this.g = c.O(nVar.getContext(), R.attr.motionEasingLinearInterpolator, a.f290a);
    }

    @Override // p010d1.o
    public final void a() {
        if (this.f3900p.isTouchExplorationEnabled() && this.f3892h.getInputType() != 0 && !this.f3929d.hasFocus()) {
            this.f3892h.dismissDropDown();
        }
        this.f3892h.post(new RunnableC0068g1(13, this));
    }

    @Override // p010d1.o
    public final int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // p010d1.o
    public final int d() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // p010d1.o
    public final View.OnFocusChangeListener e() {
        return this.f3894j;
    }

    @Override // p010d1.o
    public final View.OnClickListener f() {
        return this.f3893i;
    }

    @Override // p010d1.o
    public final AccessibilityManagerCompat.TouchExplorationStateChangeListener h() {
        return this.f3895k;
    }

    @Override // p010d1.o
    public final boolean i(int i3) {
        return i3 != 0;
    }

    @Override // p010d1.o
    public final boolean k() {
        return this.f3898n;
    }

    @Override // p010d1.o
    public final void l(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f3892h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new com.hatkid.mkxpz.gamepad.a(1, this));
        this.f3892h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: d1.h
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                i iVar = this.f3890a;
                iVar.f3897m = true;
                iVar.f3899o = System.currentTimeMillis();
                iVar.s(false);
            }
        });
        this.f3892h.setThreshold(0);
        TextInputLayout textInputLayout = this.f3927a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (editText.getInputType() == 0 && this.f3900p.isTouchExplorationEnabled()) {
            ViewCompat.setImportantForAccessibility(this.f3929d, 2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // p010d1.o
    public final void m(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f3892h.getInputType() == 0) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override // p010d1.o
    public final void n(AccessibilityEvent accessibilityEvent) {
        if (this.f3900p.isEnabled() && this.f3892h.getInputType() == 0) {
            boolean z2 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f3898n && !this.f3892h.isPopupShowing();
            if (accessibilityEvent.getEventType() == 1 || z2) {
                t();
                this.f3897m = true;
                this.f3899o = System.currentTimeMillis();
            }
        }
    }

    @Override // p010d1.o
    public final void q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f);
        int i3 = 1;
        valueAnimatorOfFloat.addUpdateListener(new b(i3, this));
        this.f3902r = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(this.f3891e);
        valueAnimatorOfFloat2.addUpdateListener(new b(i3, this));
        this.f3901q = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new E0.a(7, this));
        this.f3900p = (AccessibilityManager) this.f3928c.getSystemService("accessibility");
    }

    @Override // p010d1.o
    public final void r() {
        AutoCompleteTextView autoCompleteTextView = this.f3892h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f3892h.setOnDismissListener(null);
        }
    }

    public final void s(boolean z2) {
        if (this.f3898n != z2) {
            this.f3898n = z2;
            this.f3902r.cancel();
            this.f3901q.start();
        }
    }

    public final void t() {
        if (this.f3892h == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f3899o;
        if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
            this.f3897m = false;
        }
        if (this.f3897m) {
            this.f3897m = false;
            return;
        }
        s(!this.f3898n);
        if (!this.f3898n) {
            this.f3892h.dismissDropDown();
        } else {
            this.f3892h.requestFocus();
            this.f3892h.showDropDown();
        }
    }
}
