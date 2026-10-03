package p010d1;

import B0.a;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.google.android.material.textfield.TextInputLayout;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import k.C0285d0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public ColorStateList f3935A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public Typeface f3936B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3937a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3938c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TimeInterpolator f3939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f3940e;
    public final TimeInterpolator f;
    public final Context g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextInputLayout f3941h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f3942i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3943j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public FrameLayout f3944k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AnimatorSet f3945l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f3946m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3947n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3948o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f3949p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3950q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public C0285d0 f3951r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f3952s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3953t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3954u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ColorStateList f3955v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public CharSequence f3956w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3957x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public C0285d0 f3958y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3959z;

    public r(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.g = context;
        this.f3941h = textInputLayout;
        this.f3946m = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.f3937a = c.N(context, R.attr.motionDurationShort4, 217);
        this.b = c.N(context, R.attr.motionDurationMedium4, 167);
        this.f3938c = c.N(context, R.attr.motionDurationShort4, 167);
        this.f3939d = c.O(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, a.f292d);
        LinearInterpolator linearInterpolator = a.f290a;
        this.f3940e = c.O(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, linearInterpolator);
        this.f = c.O(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    public final void a(C0285d0 c0285d0, int i3) {
        if (this.f3942i == null && this.f3944k == null) {
            Context context = this.g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f3942i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f3942i;
            TextInputLayout textInputLayout = this.f3941h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f3944k = new FrameLayout(context);
            this.f3942i.addView(this.f3944k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i3 == 0 || i3 == 1) {
            this.f3944k.setVisibility(0);
            this.f3944k.addView(c0285d0);
        } else {
            this.f3942i.addView(c0285d0, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f3942i.setVisibility(0);
        this.f3943j++;
    }

    public final void b() {
        if (this.f3942i != null) {
            TextInputLayout textInputLayout = this.f3941h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.g;
                boolean zK = d.K(context);
                LinearLayout linearLayout = this.f3942i;
                int paddingStart = ViewCompat.getPaddingStart(editText);
                if (zK) {
                    paddingStart = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (zK) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
                }
                int paddingEnd = ViewCompat.getPaddingEnd(editText);
                if (zK) {
                    paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                ViewCompat.setPaddingRelative(linearLayout, paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.f3945l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z2, C0285d0 c0285d0, int i3, int i4, int i5) {
        if (c0285d0 == null || !z2) {
            return;
        }
        if (i3 == i5 || i3 == i4) {
            boolean z3 = i5 == i3;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(c0285d0, (Property<C0285d0, Float>) View.ALPHA, z3 ? 1.0f : 0.0f);
            int i6 = this.f3938c;
            objectAnimatorOfFloat.setDuration(z3 ? this.b : i6);
            objectAnimatorOfFloat.setInterpolator(z3 ? this.f3940e : this.f);
            if (i3 == i5 && i4 != 0) {
                objectAnimatorOfFloat.setStartDelay(i6);
            }
            arrayList.add(objectAnimatorOfFloat);
            if (i5 != i3 || i4 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(c0285d0, (Property<C0285d0, Float>) View.TRANSLATION_Y, -this.f3946m, 0.0f);
            objectAnimatorOfFloat2.setDuration(this.f3937a);
            objectAnimatorOfFloat2.setInterpolator(this.f3939d);
            objectAnimatorOfFloat2.setStartDelay(i6);
            arrayList.add(objectAnimatorOfFloat2);
        }
    }

    public final TextView e(int i3) {
        if (i3 == 1) {
            return this.f3951r;
        }
        if (i3 != 2) {
            return null;
        }
        return this.f3958y;
    }

    public final void f() {
        this.f3949p = null;
        c();
        if (this.f3947n == 1) {
            if (!this.f3957x || TextUtils.isEmpty(this.f3956w)) {
                this.f3948o = 0;
            } else {
                this.f3948o = 2;
            }
        }
        i(this.f3947n, this.f3948o, h(this.f3951r, ""));
    }

    public final void g(C0285d0 c0285d0, int i3) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f3942i;
        if (linearLayout == null) {
            return;
        }
        if ((i3 == 0 || i3 == 1) && (frameLayout = this.f3944k) != null) {
            frameLayout.removeView(c0285d0);
        } else {
            linearLayout.removeView(c0285d0);
        }
        int i4 = this.f3943j - 1;
        this.f3943j = i4;
        LinearLayout linearLayout2 = this.f3942i;
        if (i4 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean h(C0285d0 c0285d0, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f3941h;
        if (ViewCompat.isLaidOut(textInputLayout) && textInputLayout.isEnabled()) {
            return (this.f3948o == this.f3947n && c0285d0 != null && TextUtils.equals(c0285d0.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    public final void i(int i3, int i4, boolean z2) {
        TextView textViewE;
        TextView textViewE2;
        r rVar = this;
        if (i3 == i4) {
            return;
        }
        if (z2) {
            AnimatorSet animatorSet = new AnimatorSet();
            rVar.f3945l = animatorSet;
            ArrayList arrayList = new ArrayList();
            rVar.d(arrayList, rVar.f3957x, rVar.f3958y, 2, i3, i4);
            rVar.d(arrayList, rVar.f3950q, rVar.f3951r, 1, i3, i4);
            int size = arrayList.size();
            long jMax = 0;
            for (int i5 = 0; i5 < size; i5++) {
                Animator animator = (Animator) arrayList.get(i5);
                jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
            valueAnimatorOfInt.setDuration(jMax);
            arrayList.add(0, valueAnimatorOfInt);
            animatorSet.playTogether(arrayList);
            p pVar = new p(this, i4, e(i3), i3, rVar.e(i4));
            rVar = this;
            animatorSet.addListener(pVar);
            animatorSet.start();
        } else if (i3 != i4) {
            if (i4 != 0 && (textViewE2 = rVar.e(i4)) != null) {
                textViewE2.setVisibility(0);
                textViewE2.setAlpha(1.0f);
            }
            if (i3 != 0 && (textViewE = e(i3)) != null) {
                textViewE.setVisibility(4);
                if (i3 == 1) {
                    textViewE.setText((CharSequence) null);
                }
            }
            rVar.f3947n = i4;
        }
        TextInputLayout textInputLayout = rVar.f3941h;
        textInputLayout.r();
        textInputLayout.u(z2, false);
        textInputLayout.x();
    }
}
