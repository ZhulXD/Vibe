package H0;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.Window;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f1072a;
    public final WindowInsetsCompat b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Window f1073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1074d;

    public n(View view, WindowInsetsCompat windowInsetsCompat) {
        this.b = windowInsetsCompat;
        Y0.h hVar = BottomSheetBehavior.A(view).f3333i;
        ColorStateList backgroundTintList = hVar != null ? hVar.b.f2384c : ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            this.f1072a = Boolean.valueOf(com.bumptech.glide.c.q(backgroundTintList.getDefaultColor()));
            return;
        }
        ColorStateList colorStateListT = com.bumptech.glide.d.t(view.getBackground());
        Integer numValueOf = colorStateListT != null ? Integer.valueOf(colorStateListT.getDefaultColor()) : null;
        if (numValueOf != null) {
            this.f1072a = Boolean.valueOf(com.bumptech.glide.c.q(numValueOf.intValue()));
        } else {
            this.f1072a = null;
        }
    }

    @Override // H0.g
    public final void a(View view) {
        d(view);
    }

    @Override // H0.g
    public final void b(View view) {
        d(view);
    }

    @Override // H0.g
    public final void c(View view, int i3) {
        d(view);
    }

    public final void d(View view) {
        int top = view.getTop();
        WindowInsetsCompat windowInsetsCompat = this.b;
        if (top < windowInsetsCompat.getSystemWindowInsetTop()) {
            Window window = this.f1073c;
            if (window != null) {
                Boolean bool = this.f1072a;
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(bool == null ? this.f1074d : bool.booleanValue());
            }
            view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
            return;
        }
        if (view.getTop() != 0) {
            Window window2 = this.f1073c;
            if (window2 != null) {
                WindowCompat.getInsetsController(window2, window2.getDecorView()).setAppearanceLightStatusBars(this.f1074d);
            }
            view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public final void e(Window window) {
        if (this.f1073c == window) {
            return;
        }
        this.f1073c = window;
        if (window != null) {
            this.f1074d = WindowCompat.getInsetsController(window, window.getDecorView()).isAppearanceLightStatusBars();
        }
    }
}
