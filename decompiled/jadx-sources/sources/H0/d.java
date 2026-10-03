package H0;

import R0.r;
import R0.s;
import R0.t;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements r {
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f1058c;

    public d(BottomSheetBehavior bottomSheetBehavior, boolean z2) {
        this.f1058c = bottomSheetBehavior;
        this.b = z2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0065  */
    /* JADX WARN: Code duplicated, block: B:33:0x0080  */
    @Override // R0.r
    public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, s sVar) {
        boolean z2;
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.mandatorySystemGestures());
        int i3 = insets.top;
        BottomSheetBehavior bottomSheetBehavior = this.f1058c;
        bottomSheetBehavior.f3347w = i3;
        boolean zD = t.d(view);
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        boolean z3 = bottomSheetBehavior.f3339o;
        if (z3) {
            int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
            bottomSheetBehavior.f3346v = systemWindowInsetBottom;
            paddingBottom = systemWindowInsetBottom + sVar.f1942d;
        }
        if (bottomSheetBehavior.f3340p) {
            paddingLeft = (zD ? sVar.f1941c : sVar.f1940a) + insets.left;
        }
        if (bottomSheetBehavior.f3341q) {
            paddingRight = (zD ? sVar.f1940a : sVar.f1941c) + insets.right;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        boolean z4 = true;
        if (bottomSheetBehavior.f3343s) {
            int i4 = marginLayoutParams.leftMargin;
            int i5 = insets.left;
            if (i4 != i5) {
                marginLayoutParams.leftMargin = i5;
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (bottomSheetBehavior.f3344t) {
            int i6 = marginLayoutParams.rightMargin;
            int i7 = insets.right;
            if (i6 != i7) {
                marginLayoutParams.rightMargin = i7;
                z2 = true;
            }
        }
        if (bottomSheetBehavior.f3345u) {
            int i8 = marginLayoutParams.topMargin;
            int i9 = insets.top;
            if (i8 != i9) {
                marginLayoutParams.topMargin = i9;
            } else {
                z4 = z2;
            }
        } else {
            z4 = z2;
        }
        if (z4) {
            view.setLayoutParams(marginLayoutParams);
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
        boolean z5 = this.b;
        if (z5) {
            bottomSheetBehavior.f3337m = insets2.bottom;
        }
        if (!z3 && !z5) {
            return windowInsetsCompat;
        }
        bottomSheetBehavior.O();
        return windowInsetsCompat;
    }
}
