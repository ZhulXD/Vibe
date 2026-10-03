package p010d1;

import B0.a;
import C1.RunnableC0068g1;
import C1.V;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import com.bumptech.glide.c;
import com.google.android.material.internal.CheckableImageButton;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3879e;
    public final int f;
    public final TimeInterpolator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TimeInterpolator f3880h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public EditText f3881i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final V f3882j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ViewOnFocusChangeListenerC0238a f3883k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AnimatorSet f3884l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ValueAnimator f3885m;

    public d(n nVar) {
        super(nVar);
        this.f3882j = new V(5, this);
        this.f3883k = new ViewOnFocusChangeListenerC0238a(this, 0);
        this.f3879e = c.N(nVar.getContext(), R.attr.motionDurationShort3, 100);
        this.f = c.N(nVar.getContext(), R.attr.motionDurationShort3, 150);
        this.g = c.O(nVar.getContext(), R.attr.motionEasingLinearInterpolator, a.f290a);
        this.f3880h = c.O(nVar.getContext(), R.attr.motionEasingEmphasizedInterpolator, a.f292d);
    }

    @Override // p010d1.o
    public final void a() {
        if (this.b.f3920q != null) {
            return;
        }
        s(t());
    }

    @Override // p010d1.o
    public final int c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // p010d1.o
    public final int d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // p010d1.o
    public final View.OnFocusChangeListener e() {
        return this.f3883k;
    }

    @Override // p010d1.o
    public final View.OnClickListener f() {
        return this.f3882j;
    }

    @Override // p010d1.o
    public final View.OnFocusChangeListener g() {
        return this.f3883k;
    }

    @Override // p010d1.o
    public final void l(EditText editText) {
        this.f3881i = editText;
        this.f3927a.setEndIconVisible(t());
    }

    @Override // p010d1.o
    public final void o(boolean z2) {
        if (this.b.f3920q == null) {
            return;
        }
        s(z2);
    }

    @Override // p010d1.o
    public final void q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f3880h);
        valueAnimatorOfFloat.setDuration(this.f);
        final int i3 = 1;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: d1.b
            public final /* synthetic */ d b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i3) {
                    case 0:
                        d dVar = this.b;
                        dVar.getClass();
                        dVar.f3929d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        d dVar2 = this.b;
                        dVar2.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = dVar2.f3929d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        int i4 = this.f3879e;
        valueAnimatorOfFloat2.setDuration(i4);
        final int i5 = 0;
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: d1.b
            public final /* synthetic */ d b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i5) {
                    case 0:
                        d dVar = this.b;
                        dVar.getClass();
                        dVar.f3929d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        d dVar2 = this.b;
                        dVar2.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = dVar2.f3929d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f3884l = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.f3884l.addListener(new c(this, i5));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat3.setDuration(i4);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: d1.b
            public final /* synthetic */ d b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i5) {
                    case 0:
                        d dVar = this.b;
                        dVar.getClass();
                        dVar.f3929d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        d dVar2 = this.b;
                        dVar2.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = dVar2.f3929d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        this.f3885m = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new c(this, i3));
    }

    @Override // p010d1.o
    public final void r() {
        EditText editText = this.f3881i;
        if (editText != null) {
            editText.post(new RunnableC0068g1(12, this));
        }
    }

    public final void s(boolean z2) {
        boolean z3 = this.b.d() == z2;
        if (z2 && !this.f3884l.isRunning()) {
            this.f3885m.cancel();
            this.f3884l.start();
            if (z3) {
                this.f3884l.end();
                return;
            }
            return;
        }
        if (z2) {
            return;
        }
        this.f3884l.cancel();
        this.f3885m.start();
        if (z3) {
            this.f3885m.end();
        }
    }

    public final boolean t() {
        EditText editText = this.f3881i;
        if (editText != null) {
            return (editText.hasFocus() || this.f3929d.hasFocus()) && this.f3881i.getText().length() > 0;
        }
        return false;
    }
}
