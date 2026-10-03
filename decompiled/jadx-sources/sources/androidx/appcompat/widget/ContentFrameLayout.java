package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewPropertyAnimatorCompat;
import k.C0290g;
import k.C0300l;
import k.InterfaceC0299k0;
import k.InterfaceC0301l0;
import k.i1;
import p011e.B;
import p011e.r;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {
    public TypedValue b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f2707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TypedValue f2708d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypedValue f2709e;
    public TypedValue f;
    public TypedValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f2710h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public InterfaceC0299k0 f2711i;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2710h = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.g == null) {
            this.g = new TypedValue();
        }
        return this.g;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f2708d == null) {
            this.f2708d = new TypedValue();
        }
        return this.f2708d;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f2709e == null) {
            this.f2709e = new TypedValue();
        }
        return this.f2709e;
    }

    public TypedValue getMinWidthMajor() {
        if (this.b == null) {
            this.b = new TypedValue();
        }
        return this.b;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f2707c == null) {
            this.f2707c = new TypedValue();
        }
        return this.f2707c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC0299k0 interfaceC0299k0 = this.f2711i;
        if (interfaceC0299k0 != null) {
            interfaceC0299k0.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0300l c0300l;
        super.onDetachedFromWindow();
        InterfaceC0299k0 interfaceC0299k0 = this.f2711i;
        if (interfaceC0299k0 != null) {
            B b = ((r) interfaceC0299k0).f4159c;
            InterfaceC0301l0 interfaceC0301l0 = b.f4047s;
            if (interfaceC0301l0 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0301l0;
                actionBarOverlayLayout.e();
                ActionMenuView actionMenuView = ((i1) actionBarOverlayLayout.f).f4839a.b;
                if (actionMenuView != null && (c0300l = actionMenuView.f2699u) != null) {
                    c0300l.c();
                    C0290g c0290g = c0300l.f4866v;
                    if (c0290g != null && c0290g.b()) {
                        c0290g.f4467i.dismiss();
                    }
                }
            }
            if (b.f4052x != null) {
                b.f4041m.getDecorView().removeCallbacks(b.f4053y);
                if (b.f4052x.isShowing()) {
                    try {
                        b.f4052x.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                b.f4052x = null;
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = b.f4054z;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            p pVar = b.z(0).f3995h;
            if (pVar != null) {
                pVar.c(true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00de  */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        int iMakeMeasureSpec;
        boolean z2;
        int iMakeMeasureSpec2;
        int i5;
        int i6;
        float fraction;
        int i7;
        int i8;
        float fraction2;
        int i9;
        int i10;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z3 = true;
        boolean z4 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        Rect rect = this.f2710h;
        if (mode != Integer.MIN_VALUE) {
            iMakeMeasureSpec = i3;
            z2 = false;
        } else {
            TypedValue typedValue = z4 ? this.f2709e : this.f2708d;
            if (typedValue == null || (i9 = typedValue.type) == 0) {
                iMakeMeasureSpec = i3;
                z2 = false;
            } else {
                if (i9 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i9 == 6) {
                        int i11 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i11, i11);
                    } else {
                        i10 = 0;
                    }
                    if (i10 > 0) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i10 - (rect.left + rect.right), View.MeasureSpec.getSize(i3)), 1073741824);
                        z2 = true;
                    } else {
                        iMakeMeasureSpec = i3;
                        z2 = false;
                    }
                }
                i10 = (int) fraction3;
                if (i10 > 0) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i10 - (rect.left + rect.right), View.MeasureSpec.getSize(i3)), 1073741824);
                    z2 = true;
                } else {
                    iMakeMeasureSpec = i3;
                    z2 = false;
                }
            }
        }
        if (mode2 != Integer.MIN_VALUE) {
            iMakeMeasureSpec2 = i4;
        } else {
            TypedValue typedValue2 = z4 ? this.f : this.g;
            if (typedValue2 == null || (i7 = typedValue2.type) == 0) {
                iMakeMeasureSpec2 = i4;
            } else {
                if (i7 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i7 == 6) {
                        int i12 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i12, i12);
                    } else {
                        i8 = 0;
                    }
                    if (i8 > 0) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i8 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i4)), 1073741824);
                    } else {
                        iMakeMeasureSpec2 = i4;
                    }
                }
                i8 = (int) fraction2;
                if (i8 > 0) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i8 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i4)), 1073741824);
                } else {
                    iMakeMeasureSpec2 = i4;
                }
            }
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z2 || mode != Integer.MIN_VALUE) {
            z3 = false;
        } else {
            TypedValue typedValue3 = z4 ? this.f2707c : this.b;
            if (typedValue3 == null || (i5 = typedValue3.type) == 0) {
                z3 = false;
            } else {
                if (i5 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i5 == 6) {
                        int i13 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i13, i13);
                    } else {
                        i6 = 0;
                    }
                    if (i6 > 0) {
                        i6 -= rect.left + rect.right;
                    }
                    if (measuredWidth < i6) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                    } else {
                        z3 = false;
                    }
                }
                i6 = (int) fraction;
                if (i6 > 0) {
                    i6 -= rect.left + rect.right;
                }
                if (measuredWidth < i6) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                } else {
                    z3 = false;
                }
            }
        }
        if (z3) {
            super.onMeasure(iMakeMeasureSpec3, iMakeMeasureSpec2);
        }
    }

    public void setAttachListener(InterfaceC0299k0 interfaceC0299k0) {
        this.f2711i = interfaceC0299k0;
    }
}
