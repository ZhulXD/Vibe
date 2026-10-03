package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import k.C0285d0;
import k.InterfaceC0302m;
import p008d.a;
import p024j.AbstractC0264c;
import p024j.C0263b;
import p024j.D;
import p024j.o;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends C0285d0 implements D, View.OnClickListener, InterfaceC0302m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public s f2617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f2618j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Drawable f2619k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o f2620l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0263b f2621m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AbstractC0264c f2622n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2623o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2624p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f2625q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2626r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f2627s;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f2623o = g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f3842c, 0, 0);
        this.f2625q = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f2627s = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f2626r = -1;
        setSaveEnabled(false);
    }

    @Override // k.InterfaceC0302m
    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // p024j.D
    public final void b(s sVar) {
        this.f2617i = sVar;
        setIcon(sVar.getIcon());
        setTitle(sVar.getTitleCondensed());
        setId(sVar.f4580a);
        setVisibility(sVar.isVisible() ? 0 : 8);
        setEnabled(sVar.isEnabled());
        if (sVar.hasSubMenu() && this.f2621m == null) {
            this.f2621m = new C0263b(this);
        }
    }

    @Override // k.InterfaceC0302m
    public final boolean c() {
        return !TextUtils.isEmpty(getText()) && this.f2617i.getIcon() == null;
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i3 = configuration.screenWidthDp;
        int i4 = configuration.screenHeightDp;
        if (i3 < 480) {
            return (i3 >= 640 && i4 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // p024j.D
    public s getItemData() {
        return this.f2617i;
    }

    public final void h() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.f2618j);
        if (this.f2619k != null && ((this.f2617i.f4601y & 4) != 4 || (!this.f2623o && !this.f2624p))) {
            z2 = false;
        }
        boolean z4 = z3 & z2;
        setText(z4 ? this.f2618j : null);
        CharSequence charSequence = this.f2617i.f4593q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z4 ? null : this.f2617i.f4583e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f2617i.f4594r;
        if (TextUtils.isEmpty(charSequence2)) {
            p000a.a.J(this, z4 ? null : this.f2617i.f4583e);
        } else {
            p000a.a.J(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        o oVar = this.f2620l;
        if (oVar != null) {
            oVar.c(this.f2617i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2623o = g();
        h();
    }

    @Override // k.C0285d0, android.widget.TextView, android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i5 = this.f2626r) >= 0) {
            super.setPadding(i5, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i3, i4);
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int measuredWidth = getMeasuredWidth();
        int i6 = this.f2625q;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i6) : i6;
        if (mode != 1073741824 && i6 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i4);
        }
        if (!zIsEmpty || this.f2619k == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f2619k.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0263b c0263b;
        if (this.f2617i.hasSubMenu() && (c0263b = this.f2621m) != null && c0263b.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setExpandedFormat(boolean z2) {
        if (this.f2624p != z2) {
            this.f2624p = z2;
            s sVar = this.f2617i;
            if (sVar != null) {
                p pVar = sVar.f4590n;
                pVar.f4560k = true;
                pVar.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f2619k = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i3 = this.f2627s;
            if (intrinsicWidth > i3) {
                intrinsicHeight = (int) (intrinsicHeight * (i3 / intrinsicWidth));
                intrinsicWidth = i3;
            }
            if (intrinsicHeight > i3) {
                intrinsicWidth = (int) (intrinsicWidth * (i3 / intrinsicHeight));
            } else {
                i3 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i3);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(o oVar) {
        this.f2620l = oVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i3, int i4, int i5, int i6) {
        this.f2626r = i3;
        super.setPadding(i3, i4, i5, i6);
    }

    public void setPopupCallback(AbstractC0264c abstractC0264c) {
        this.f2622n = abstractC0264c;
    }

    public void setTitle(CharSequence charSequence) {
        this.f2618j = charSequence;
        h();
    }

    public void setCheckable(boolean z2) {
    }

    public void setChecked(boolean z2) {
    }
}
