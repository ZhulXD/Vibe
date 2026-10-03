package H0;

import A1.C0009b;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import p011e.D;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends D {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public BottomSheetBehavior f1075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FrameLayout f1076e;
    public CoordinatorLayout f;
    public FrameLayout g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n f1080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f1081l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public F.b f1082m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final m f1083n;

    public o(Context context) {
        TypedValue typedValue = new TypedValue();
        super(context, context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R.style.Theme_Design_Light_BottomSheetDialog);
        this.f1077h = true;
        this.f1078i = true;
        this.f1083n = new m(this);
        b().i(1);
        this.f1081l = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
        this.f1081l = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        if (this.f1075d == null) {
            e();
        }
        super.cancel();
    }

    public final void e() {
        if (this.f1076e == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.f1076e = frameLayout;
            this.f = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f1076e.findViewById(R.id.design_bottom_sheet);
            this.g = frameLayout2;
            BottomSheetBehavior bottomSheetBehaviorA = BottomSheetBehavior.A(frameLayout2);
            this.f1075d = bottomSheetBehaviorA;
            ArrayList arrayList = bottomSheetBehaviorA.f3320W;
            m mVar = this.f1083n;
            if (!arrayList.contains(mVar)) {
                arrayList.add(mVar);
            }
            this.f1075d.F(this.f1077h);
            this.f1082m = new F.b(this.f1075d, this.g);
        }
    }

    public final FrameLayout f(View view, int i3, ViewGroup.LayoutParams layoutParams) {
        e();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f1076e.findViewById(R.id.coordinator);
        if (i3 != 0 && view == null) {
            view = getLayoutInflater().inflate(i3, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f1081l) {
            ViewCompat.setOnApplyWindowInsetsListener(this.g, new C0009b(this));
        }
        this.g.removeAllViews();
        if (layoutParams == null) {
            this.g.addView(view);
        } else {
            this.g.addView(view, layoutParams);
        }
        int i4 = 0;
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new j(i4, this));
        ViewCompat.setAccessibilityDelegate(this.g, new k(i4, this));
        this.g.setOnTouchListener(new l(0));
        return this.f1076e;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z2 = this.f1081l && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f1076e;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z2);
            }
            CoordinatorLayout coordinatorLayout = this.f;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z2);
            }
            WindowCompat.setDecorFitsSystemWindows(window, !z2);
            n nVar = this.f1080k;
            if (nVar != null) {
                nVar.e(window);
            }
        }
        F.b bVar = this.f1082m;
        if (bVar == null) {
            return;
        }
        View view = (View) bVar.f945e;
        S0.d dVar = (S0.d) bVar.f943c;
        if (this.f1077h) {
            if (dVar != null) {
                dVar.b((S0.b) bVar.f944d, view, false);
            }
        } else if (dVar != null) {
            dVar.c(view);
        }
    }

    @Override // p011e.D, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        S0.d dVar;
        n nVar = this.f1080k;
        if (nVar != null) {
            nVar.e(null);
        }
        F.b bVar = this.f1082m;
        if (bVar == null || (dVar = (S0.d) bVar.f943c) == null) {
            return;
        }
        dVar.c((View) bVar.f945e);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.f1075d;
        if (bottomSheetBehavior == null || bottomSheetBehavior.f3309L != 5) {
            return;
        }
        bottomSheetBehavior.H(4);
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z2) {
        F.b bVar;
        super.setCancelable(z2);
        if (this.f1077h != z2) {
            this.f1077h = z2;
            BottomSheetBehavior bottomSheetBehavior = this.f1075d;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.F(z2);
            }
            if (getWindow() == null || (bVar = this.f1082m) == null) {
                return;
            }
            View view = (View) bVar.f945e;
            S0.d dVar = (S0.d) bVar.f943c;
            if (this.f1077h) {
                if (dVar != null) {
                    dVar.b((S0.b) bVar.f944d, view, false);
                }
            } else if (dVar != null) {
                dVar.c(view);
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z2) {
        super.setCanceledOnTouchOutside(z2);
        if (z2 && !this.f1077h) {
            this.f1077h = true;
        }
        this.f1078i = z2;
        this.f1079j = true;
    }

    @Override // p011e.D, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(int i3) {
        super.setContentView(f(null, i3, null));
    }

    @Override // p011e.D, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(f(view, 0, null));
    }

    @Override // p011e.D, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(f(view, 0, layoutParams));
    }
}
