package k;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static l1 f4871l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static l1 f4872m;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence f4873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k1 f4875e;
    public final k1 f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4876h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public m1 f4877i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4878j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4879k = true;

    /* JADX WARN: Type inference failed for: r0v0, types: [k.k1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [k.k1] */
    public l1(View view, CharSequence charSequence) {
        final int i3 = 0;
        this.f4875e = new Runnable(this) { // from class: k.k1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ l1 f4854c;

            {
                this.f4854c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                        this.f4854c.c(false);
                        break;
                    default:
                        this.f4854c.a();
                        break;
                }
            }
        };
        final int i4 = 1;
        this.f = new Runnable(this) { // from class: k.k1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ l1 f4854c;

            {
                this.f4854c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i4) {
                    case 0:
                        this.f4854c.c(false);
                        break;
                    default:
                        this.f4854c.a();
                        break;
                }
            }
        };
        this.b = view;
        this.f4873c = charSequence;
        this.f4874d = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(l1 l1Var) {
        l1 l1Var2 = f4871l;
        if (l1Var2 != null) {
            l1Var2.b.removeCallbacks(l1Var2.f4875e);
        }
        f4871l = l1Var;
        if (l1Var != null) {
            l1Var.b.postDelayed(l1Var.f4875e, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        l1 l1Var = f4872m;
        View view = this.b;
        if (l1Var == this) {
            f4872m = null;
            m1 m1Var = this.f4877i;
            if (m1Var != null) {
                View view2 = m1Var.f4881c;
                if (view2.getParent() != null) {
                    ((WindowManager) ((Context) m1Var.b).getSystemService("window")).removeView(view2);
                }
                this.f4877i = null;
                this.f4879k = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f4871l == this) {
            b(null);
        }
        view.removeCallbacks(this.f);
    }

    public final void c(boolean z2) {
        int height;
        int i3;
        int i4;
        int i5;
        long longPressTimeout;
        long j2;
        long j3;
        View view = this.b;
        if (view.isAttachedToWindow()) {
            b(null);
            l1 l1Var = f4872m;
            if (l1Var != null) {
                l1Var.a();
            }
            f4872m = this;
            this.f4878j = z2;
            m1 m1Var = new m1(view.getContext());
            Context context = (Context) m1Var.b;
            this.f4877i = m1Var;
            int width = this.g;
            int i6 = this.f4876h;
            boolean z3 = this.f4878j;
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) m1Var.f4882d;
            View view2 = m1Var.f4881c;
            if (view2.getParent() != null && view2.getParent() != null) {
                ((WindowManager) context.getSystemService("window")).removeView(view2);
            }
            m1Var.f4880a.setText(this.f4873c);
            int[] iArr = (int[]) m1Var.g;
            int[] iArr2 = (int[]) m1Var.f;
            Rect rect = (Rect) m1Var.f4883e;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i6 + dimensionPixelOffset2;
                i3 = i6 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i3 = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z3 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            int i7 = width;
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                for (Context context2 = view.getContext(); context2 instanceof ContextWrapper; context2 = ((ContextWrapper) context2).getBaseContext()) {
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
                i5 = 1;
            } else {
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i4 = 0;
                    i5 = 1;
                } else {
                    Resources resources = context.getResources();
                    i5 = 1;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i4 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(iArr);
                view.getLocationOnScreen(iArr2);
                int i8 = iArr2[i4] - iArr[i4];
                iArr2[i4] = i8;
                iArr2[i5] = iArr2[i5] - iArr[i5];
                layoutParams.x = (i8 + i7) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, i4);
                view2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i9 = iArr2[i5];
                int i10 = ((i9 + i3) - dimensionPixelOffset3) - measuredHeight;
                int i11 = i9 + height + dimensionPixelOffset3;
                if (z3) {
                    if (i10 >= 0) {
                        layoutParams.y = i10;
                    } else {
                        layoutParams.y = i11;
                    }
                } else if (measuredHeight + i11 <= rect.height()) {
                    layoutParams.y = i11;
                } else {
                    layoutParams.y = i10;
                }
            }
            ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.f4878j) {
                j3 = 2500;
            } else {
                if ((ViewCompat.getWindowSystemUiVisibility(view) & 1) == i5) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j2 = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j2 = 15000;
                }
                j3 = j2 - longPressTimeout;
            }
            k1 k1Var = this.f;
            view.removeCallbacks(k1Var);
            view.postDelayed(k1Var, j3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0066  */
    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f4877i == null || !this.f4878j) {
            View view2 = this.b;
            AccessibilityManager accessibilityManager = (AccessibilityManager) view2.getContext().getSystemService("accessibility");
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
                int action = motionEvent.getAction();
                if (action != 7) {
                    if (action == 10) {
                        this.f4879k = true;
                        a();
                        return false;
                    }
                } else if (view2.isEnabled() && this.f4877i == null) {
                    int x2 = (int) motionEvent.getX();
                    int y2 = (int) motionEvent.getY();
                    if (this.f4879k) {
                        this.g = x2;
                        this.f4876h = y2;
                        this.f4879k = false;
                        b(this);
                    } else {
                        int iAbs = Math.abs(x2 - this.g);
                        int i3 = this.f4874d;
                        if (iAbs > i3 || Math.abs(y2 - this.f4876h) > i3) {
                            this.g = x2;
                            this.f4876h = y2;
                            this.f4879k = false;
                            b(this);
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.g = view.getWidth() / 2;
        this.f4876h = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
