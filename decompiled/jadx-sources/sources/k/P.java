package k;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.minhub.gamehub.R;
import p024j.ViewTreeObserverOnGlobalLayoutListenerC0267f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class P extends I0 implements S {

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public CharSequence f4723D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public N f4724E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final Rect f4725F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f4726G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ T f4727H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P(T t2, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.f4727H = t2;
        this.f4725F = new Rect();
        this.f4695p = t2;
        this.f4705z = true;
        this.f4683A.setFocusable(true);
        this.f4696q = new p010d1.s(1, this);
    }

    @Override // k.S
    public final void g(CharSequence charSequence) {
        this.f4723D = charSequence;
    }

    @Override // k.S
    public final void j(int i3) {
        this.f4726G = i3;
    }

    @Override // k.S
    public final void m(int i3, int i4) {
        ViewTreeObserver viewTreeObserver;
        D d3 = this.f4683A;
        boolean zIsShowing = d3.isShowing();
        s();
        d3.setInputMethodMode(2);
        c();
        C0320v0 c0320v0 = this.f4685d;
        c0320v0.setChoiceMode(1);
        c0320v0.setTextDirection(i3);
        c0320v0.setTextAlignment(i4);
        T t2 = this.f4727H;
        int selectedItemPosition = t2.getSelectedItemPosition();
        C0320v0 c0320v1 = this.f4685d;
        if (d3.isShowing() && c0320v1 != null) {
            c0320v1.setListSelectionHidden(false);
            c0320v1.setSelection(selectedItemPosition);
            if (c0320v1.getChoiceMode() != 0) {
                c0320v1.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = t2.getViewTreeObserver()) == null) {
            return;
        }
        ViewTreeObserverOnGlobalLayoutListenerC0267f viewTreeObserverOnGlobalLayoutListenerC0267f = new ViewTreeObserverOnGlobalLayoutListenerC0267f(3, this);
        viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0267f);
        d3.setOnDismissListener(new O(this, viewTreeObserverOnGlobalLayoutListenerC0267f));
    }

    @Override // k.S
    public final CharSequence o() {
        return this.f4723D;
    }

    @Override // k.I0, k.S
    public final void p(ListAdapter listAdapter) {
        super.p(listAdapter);
        this.f4724E = (N) listAdapter;
    }

    public final void s() {
        int i3;
        T t2 = this.f4727H;
        Rect rect = t2.f4743i;
        D d3 = this.f4683A;
        Drawable background = d3.getBackground();
        if (background != null) {
            background.getPadding(rect);
            boolean z2 = q1.f4902a;
            i3 = t2.getLayoutDirection() == 1 ? rect.right : -rect.left;
        } else {
            i3 = 0;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = t2.getPaddingLeft();
        int paddingRight = t2.getPaddingRight();
        int width = t2.getWidth();
        int i4 = t2.f4742h;
        if (i4 == -2) {
            int iA = t2.a(this.f4724E, d3.getBackground());
            int i5 = (t2.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
            if (iA > i5) {
                iA = i5;
            }
            r(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i4 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i4);
        }
        boolean z3 = q1.f4902a;
        this.g = t2.getLayoutDirection() == 1 ? (((width - paddingRight) - this.f) - this.f4726G) + i3 : paddingLeft + this.f4726G + i3;
    }
}
