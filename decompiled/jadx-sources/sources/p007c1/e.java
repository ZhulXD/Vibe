package p007c1;

import R0.t;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends LinearLayout {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f3147d = 0;
    public ValueAnimator b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TabLayout f3148c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(TabLayout tabLayout, Context context) {
        super(context);
        this.f3148c = tabLayout;
        setWillNotDraw(false);
    }

    public final void a(int i3) {
        TabLayout tabLayout = this.f3148c;
        if (tabLayout.f3530O == 0 || (tabLayout.getTabSelectedIndicator().getBounds().left == -1 && tabLayout.getTabSelectedIndicator().getBounds().right == -1)) {
            View childAt = getChildAt(i3);
            Y0.e eVar = tabLayout.f3525I;
            Drawable drawable = tabLayout.f3543p;
            eVar.getClass();
            RectF rectFG = Y0.e.g(tabLayout, childAt);
            drawable.setBounds((int) rectFG.left, drawable.getBounds().top, (int) rectFG.right, drawable.getBounds().bottom);
            tabLayout.b = i3;
        }
    }

    public final void b(int i3) {
        TabLayout tabLayout = this.f3148c;
        Rect bounds = tabLayout.f3543p.getBounds();
        tabLayout.f3543p.setBounds(bounds.left, 0, bounds.right, i3);
        requestLayout();
    }

    public final void c(View view, View view2, float f) {
        TabLayout tabLayout = this.f3148c;
        if (view == null || view.getWidth() <= 0) {
            Drawable drawable = tabLayout.f3543p;
            drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.f3543p.getBounds().bottom);
        } else {
            tabLayout.f3525I.r(tabLayout, view, view2, f, tabLayout.f3543p);
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public final void d(int i3, int i4, boolean z2) {
        TabLayout tabLayout = this.f3148c;
        if (tabLayout.b == i3) {
            return;
        }
        View childAt = getChildAt(tabLayout.getSelectedTabPosition());
        View childAt2 = getChildAt(i3);
        if (childAt2 == null) {
            a(tabLayout.getSelectedTabPosition());
            return;
        }
        tabLayout.b = i3;
        d dVar = new d(this, childAt, childAt2);
        if (!z2) {
            this.b.removeAllUpdateListeners();
            this.b.addUpdateListener(dVar);
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        this.b = valueAnimator;
        valueAnimator.setInterpolator(tabLayout.f3526J);
        valueAnimator.setDuration(i4);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.addUpdateListener(dVar);
        valueAnimator.start();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int height;
        TabLayout tabLayout = this.f3148c;
        int iHeight = tabLayout.f3543p.getBounds().height();
        if (iHeight < 0) {
            iHeight = tabLayout.f3543p.getIntrinsicHeight();
        }
        int i3 = tabLayout.f3518B;
        if (i3 == 0) {
            height = getHeight() - iHeight;
            iHeight = getHeight();
        } else if (i3 != 1) {
            height = 0;
            if (i3 != 2) {
                iHeight = i3 != 3 ? 0 : getHeight();
            }
        } else {
            height = (getHeight() - iHeight) / 2;
            iHeight = (getHeight() + iHeight) / 2;
        }
        if (tabLayout.f3543p.getBounds().width() > 0) {
            Rect bounds = tabLayout.f3543p.getBounds();
            tabLayout.f3543p.setBounds(bounds.left, height, bounds.right, iHeight);
            tabLayout.f3543p.draw(canvas);
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        ValueAnimator valueAnimator = this.b;
        TabLayout tabLayout = this.f3148c;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            d(tabLayout.getSelectedTabPosition(), -1, false);
            return;
        }
        if (tabLayout.b == -1) {
            tabLayout.b = tabLayout.getSelectedTabPosition();
        }
        a(tabLayout.b);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        if (View.MeasureSpec.getMode(i3) != 1073741824) {
            return;
        }
        TabLayout tabLayout = this.f3148c;
        boolean z2 = true;
        if (tabLayout.f3553z == 1 || tabLayout.f3519C == 2) {
            int childCount = getChildCount();
            int iMax = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() == 0) {
                    iMax = Math.max(iMax, childAt.getMeasuredWidth());
                }
            }
            if (iMax <= 0) {
                return;
            }
            if (iMax * childCount <= getMeasuredWidth() - (((int) t.b(getContext(), 16)) * 2)) {
                boolean z3 = false;
                for (int i6 = 0; i6 < childCount; i6++) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i6).getLayoutParams();
                    if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                        layoutParams.width = iMax;
                        layoutParams.weight = 0.0f;
                        z3 = true;
                    }
                }
                z2 = z3;
            } else {
                tabLayout.f3553z = 0;
                tabLayout.m(false);
            }
            if (z2) {
                super.onMeasure(i3, i4);
            }
        }
    }
}
