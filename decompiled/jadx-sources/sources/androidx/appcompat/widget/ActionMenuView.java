package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import com.google.android.material.datepicker.c;
import k.A0;
import k.C0290g;
import k.C0296j;
import k.C0300l;
import k.C0304n;
import k.C0328z0;
import k.InterfaceC0302m;
import k.InterfaceC0306o;
import k.b1;
import k.q1;
import kotlin.jvm.internal.IntCompanionObject;
import p024j.C0269h;
import p024j.E;
import p024j.o;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends A0 implements o, E {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public InterfaceC0306o f2694A;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public p f2695q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Context f2696r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2697s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2698t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C0300l f2699u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public b1 f2700v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2701w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2702x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f2703y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f2704z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f2703y = (int) (56.0f * f);
        this.f2704z = (int) (f * 4.0f);
        this.f2696r = context;
        this.f2697s = 0;
    }

    public static C0304n j() {
        C0304n c0304n = new C0304n(-2, -2);
        c0304n.f4884a = false;
        ((LinearLayout.LayoutParams) c0304n).gravity = 16;
        return c0304n;
    }

    public static C0304n k(ViewGroup.LayoutParams layoutParams) {
        C0304n c0304n;
        if (layoutParams == null) {
            return j();
        }
        if (layoutParams instanceof C0304n) {
            C0304n c0304n2 = (C0304n) layoutParams;
            c0304n = new C0304n(c0304n2);
            c0304n.f4884a = c0304n2.f4884a;
        } else {
            c0304n = new C0304n(layoutParams);
        }
        if (((LinearLayout.LayoutParams) c0304n).gravity <= 0) {
            ((LinearLayout.LayoutParams) c0304n).gravity = 16;
        }
        return c0304n;
    }

    @Override // p024j.E
    public final void a(p pVar) {
        this.f2695q = pVar;
    }

    @Override // p024j.o
    public final boolean c(s sVar) {
        return this.f2695q.q(sVar, null, 0);
    }

    @Override // k.A0, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0304n;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // k.A0
    /* JADX INFO: renamed from: f */
    public final /* bridge */ /* synthetic */ C0328z0 generateDefaultLayoutParams() {
        return j();
    }

    @Override // k.A0
    /* JADX INFO: renamed from: g */
    public final C0328z0 generateLayoutParams(AttributeSet attributeSet) {
        return new C0304n(getContext(), attributeSet);
    }

    @Override // k.A0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return j();
    }

    @Override // k.A0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public Menu getMenu() {
        if (this.f2695q == null) {
            Context context = getContext();
            p pVar = new p(context);
            this.f2695q = pVar;
            pVar.f4556e = new C0269h(5, this);
            C0300l c0300l = new C0300l(context);
            this.f2699u = c0300l;
            c0300l.f4858n = true;
            c0300l.f4859o = true;
            c0300l.f = new c(10);
            this.f2695q.b(c0300l, this.f2696r);
            C0300l c0300l2 = this.f2699u;
            c0300l2.f4510i = this;
            this.f2695q = c0300l2.f4507d;
        }
        return this.f2695q;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C0300l c0300l = this.f2699u;
        C0296j c0296j = c0300l.f4855k;
        if (c0296j != null) {
            return c0296j.getDrawable();
        }
        if (c0300l.f4857m) {
            return c0300l.f4856l;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f2697s;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // k.A0
    /* JADX INFO: renamed from: h */
    public final /* bridge */ /* synthetic */ C0328z0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public final boolean l(int i3) {
        boolean zA = false;
        if (i3 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i3 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i3);
        if (i3 < getChildCount() && (childAt instanceof InterfaceC0302m)) {
            zA = ((InterfaceC0302m) childAt).a();
        }
        return (i3 <= 0 || !(childAt2 instanceof InterfaceC0302m)) ? zA : ((InterfaceC0302m) childAt2).c() | zA;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0300l c0300l = this.f2699u;
        if (c0300l != null) {
            c0300l.g(false);
            if (this.f2699u.f()) {
                this.f2699u.c();
                this.f2699u.n();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0300l c0300l = this.f2699u;
        if (c0300l != null) {
            c0300l.c();
            C0290g c0290g = c0300l.f4866v;
            if (c0290g == null || !c0290g.b()) {
                return;
            }
            c0290g.f4467i.dismiss();
        }
    }

    @Override // k.A0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int width;
        int paddingLeft;
        if (!this.f2701w) {
            super.onLayout(z2, i3, i4, i5, i6);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i6 - i4) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i5 - i3;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean z3 = q1.f4902a;
        boolean z4 = getLayoutDirection() == 1;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0304n c0304n = (C0304n) childAt.getLayoutParams();
                if (c0304n.f4884a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (l(i11)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z4) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) c0304n).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0304n).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i12 = i7 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0304n).leftMargin) + ((LinearLayout.LayoutParams) c0304n).rightMargin;
                    l(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        int iMax = Math.max(0, i15 > 0 ? paddingRight / i15 : 0);
        if (z4) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                C0304n c0304n2 = (C0304n) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0304n2.f4884a) {
                    int i17 = width2 - ((LinearLayout.LayoutParams) c0304n2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0304n2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            C0304n c0304n3 = (C0304n) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0304n3.f4884a) {
                int i20 = paddingLeft2 + ((LinearLayout.LayoutParams) c0304n3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) c0304n3).rightMargin + iMax + i20;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // k.A0, android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        int i6;
        ?? r11;
        int i7;
        int i8;
        p pVar;
        boolean z2 = this.f2701w;
        boolean z3 = View.MeasureSpec.getMode(i3) == 1073741824;
        this.f2701w = z3;
        if (z2 != z3) {
            this.f2702x = 0;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (this.f2701w && (pVar = this.f2695q) != null && size != this.f2702x) {
            this.f2702x = size;
            pVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.f2701w || childCount <= 0) {
            for (int i9 = 0; i9 < childCount; i9++) {
                C0304n c0304n = (C0304n) getChildAt(i9).getLayoutParams();
                ((LinearLayout.LayoutParams) c0304n).rightMargin = 0;
                ((LinearLayout.LayoutParams) c0304n).leftMargin = 0;
            }
            super.onMeasure(i3, i4);
            return;
        }
        int mode = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i3);
        int size3 = View.MeasureSpec.getSize(i4);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i4, paddingBottom, -2);
        int i10 = size2 - paddingRight;
        int i11 = this.f2703y;
        int i12 = i10 / i11;
        int i13 = i10 % i11;
        if (i12 == 0) {
            setMeasuredDimension(i10, 0);
            return;
        }
        int i14 = (i13 / i12) + i11;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i15 = 0;
        int iMax2 = 0;
        int i16 = 0;
        boolean z4 = false;
        int i17 = 0;
        long j2 = 0;
        while (true) {
            i5 = this.f2704z;
            if (i16 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i16);
            int i18 = size3;
            int i19 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i7 = i14;
            } else {
                boolean z5 = childAt instanceof ActionMenuItemView;
                i15++;
                if (z5) {
                    childAt.setPadding(i5, 0, i5, 0);
                }
                C0304n c0304n2 = (C0304n) childAt.getLayoutParams();
                c0304n2.f = false;
                c0304n2.f4885c = 0;
                c0304n2.b = 0;
                c0304n2.f4886d = false;
                ((LinearLayout.LayoutParams) c0304n2).leftMargin = 0;
                ((LinearLayout.LayoutParams) c0304n2).rightMargin = 0;
                c0304n2.f4887e = z5 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i20 = c0304n2.f4884a ? 1 : i12;
                C0304n c0304n3 = (C0304n) childAt.getLayoutParams();
                int i21 = i12;
                i7 = i14;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i19, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z5 ? (ActionMenuItemView) childAt : null;
                boolean z6 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                boolean z7 = z6;
                if (i20 <= 0 || (z6 && i20 < 2)) {
                    i8 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i7 * i20, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i8 = measuredWidth / i7;
                    if (measuredWidth % i7 != 0) {
                        i8++;
                    }
                    if (z7 && i8 < 2) {
                        i8 = 2;
                    }
                }
                c0304n3.f4886d = !c0304n3.f4884a && z7;
                c0304n3.b = i8;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i8 * i7, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i8);
                if (c0304n2.f4886d) {
                    i17++;
                }
                if (c0304n2.f4884a) {
                    z4 = true;
                }
                i12 = i21 - i8;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i8 == 1) {
                    j2 |= (long) (1 << i16);
                }
            }
            i16++;
            size3 = i18;
            paddingBottom = i19;
            i14 = i7;
        }
        int i22 = size3;
        int i23 = i12;
        int i24 = i14;
        boolean z8 = z4 && i15 == 2;
        int i25 = i23;
        boolean z9 = false;
        while (true) {
            if (i17 <= 0 || i25 <= 0) {
                i6 = iMax;
                break;
            }
            int i26 = IntCompanionObject.MAX_VALUE;
            long j3 = 0;
            int i27 = 0;
            int i28 = 0;
            while (i28 < childCount2) {
                int i29 = iMax;
                C0304n c0304n4 = (C0304n) getChildAt(i28).getLayoutParams();
                boolean z10 = z8;
                if (c0304n4.f4886d) {
                    int i30 = c0304n4.b;
                    if (i30 < i26) {
                        j3 = 1 << i28;
                        i26 = i30;
                        i27 = 1;
                    } else if (i30 == i26) {
                        j3 |= 1 << i28;
                        i27++;
                    }
                }
                i28++;
                z8 = z10;
                iMax = i29;
            }
            i6 = iMax;
            boolean z11 = z8;
            j2 |= j3;
            if (i27 > i25) {
                break;
            }
            int i31 = i26 + 1;
            int i32 = 0;
            while (i32 < childCount2) {
                View childAt2 = getChildAt(i32);
                C0304n c0304n5 = (C0304n) childAt2.getLayoutParams();
                boolean z12 = z4;
                long j4 = 1 << i32;
                if ((j3 & j4) != 0) {
                    if (z11 && c0304n5.f4887e) {
                        r11 = 1;
                        r11 = 1;
                        if (i25 == 1) {
                            childAt2.setPadding(i5 + i24, 0, i5, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    c0304n5.b += r11;
                    c0304n5.f = r11;
                    i25--;
                } else if (c0304n5.b == i31) {
                    j2 |= j4;
                }
                i32++;
                z4 = z12;
            }
            z8 = z11;
            iMax = i6;
            z9 = true;
        }
        boolean z13 = !z4 && i15 == 1;
        if (i25 > 0 && j2 != 0 && (i25 < i15 - 1 || z13 || iMax2 > 1)) {
            float fBitCount = Long.bitCount(j2);
            if (!z13) {
                if ((j2 & 1) != 0 && !((C0304n) getChildAt(0).getLayoutParams()).f4887e) {
                    fBitCount -= 0.5f;
                }
                int i33 = childCount2 - 1;
                if ((j2 & ((long) (1 << i33))) != 0 && !((C0304n) getChildAt(i33).getLayoutParams()).f4887e) {
                    fBitCount -= 0.5f;
                }
            }
            int i34 = fBitCount > 0.0f ? (int) ((i25 * i24) / fBitCount) : 0;
            boolean z14 = z9;
            for (int i35 = 0; i35 < childCount2; i35++) {
                if ((j2 & ((long) (1 << i35))) != 0) {
                    View childAt3 = getChildAt(i35);
                    C0304n c0304n6 = (C0304n) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0304n6.f4885c = i34;
                        c0304n6.f = true;
                        if (i35 == 0 && !c0304n6.f4887e) {
                            ((LinearLayout.LayoutParams) c0304n6).leftMargin = (-i34) / 2;
                        }
                        z14 = true;
                    } else if (c0304n6.f4884a) {
                        c0304n6.f4885c = i34;
                        c0304n6.f = true;
                        ((LinearLayout.LayoutParams) c0304n6).rightMargin = (-i34) / 2;
                        z14 = true;
                    } else {
                        if (i35 != 0) {
                            ((LinearLayout.LayoutParams) c0304n6).leftMargin = i34 / 2;
                        }
                        if (i35 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) c0304n6).rightMargin = i34 / 2;
                        }
                    }
                }
            }
            z9 = z14;
        }
        if (z9) {
            for (int i36 = 0; i36 < childCount2; i36++) {
                View childAt4 = getChildAt(i36);
                C0304n c0304n7 = (C0304n) childAt4.getLayoutParams();
                if (c0304n7.f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0304n7.b * i24) + c0304n7.f4885c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i10, mode != 1073741824 ? i6 : i22);
    }

    public void setExpandedActionViewsExclusive(boolean z2) {
        this.f2699u.f4863s = z2;
    }

    public void setOnMenuItemClickListener(InterfaceC0306o interfaceC0306o) {
        this.f2694A = interfaceC0306o;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C0300l c0300l = this.f2699u;
        C0296j c0296j = c0300l.f4855k;
        if (c0296j != null) {
            c0296j.setImageDrawable(drawable);
        } else {
            c0300l.f4857m = true;
            c0300l.f4856l = drawable;
        }
    }

    public void setOverflowReserved(boolean z2) {
        this.f2698t = z2;
    }

    public void setPopupTheme(int i3) {
        if (this.f2697s != i3) {
            this.f2697s = i3;
            if (i3 == 0) {
                this.f2696r = getContext();
            } else {
                this.f2696r = new ContextThemeWrapper(getContext(), i3);
            }
        }
    }

    public void setPresenter(C0300l c0300l) {
        this.f2699u = c0300l;
        c0300l.f4510i = this;
        this.f2695q = c0300l.f4507d;
    }

    @Override // k.A0, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0304n(getContext(), attributeSet);
    }
}
