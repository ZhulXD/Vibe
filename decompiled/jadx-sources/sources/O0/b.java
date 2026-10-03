package O0;

import C1.DialogInterfaceOnClickListenerC0071h1;
import R0.p;
import Y0.h;
import Y0.l;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.c;
import com.minhub.gamehub.R;
import p011e.C0240b;
import p011e.C0244f;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends C0244f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f1510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f1511e;

    /* JADX WARN: Illegal instructions before constructor call */
    public b(Context context, int i3) {
        TypedValue typedValueH = c.H(context, R.attr.materialAlertDialogTheme);
        int i4 = typedValueH == null ? 0 : typedValueH.data;
        Context contextA = p015f1.a.a(context, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        contextA = i4 != 0 ? new p021i.c(contextA, i4) : contextA;
        if (i3 == 0) {
            TypedValue typedValueH2 = c.H(context, R.attr.materialAlertDialogTheme);
            i3 = typedValueH2 == null ? 0 : typedValueH2.data;
        }
        super(contextA, i3);
        ContextThemeWrapper contextThemeWrapper = ((C0240b) this.f4145c).f4096a;
        Resources.Theme theme = contextThemeWrapper.getTheme();
        p.a(contextThemeWrapper, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int[] iArr = A0.a.f28n;
        p.b(contextThemeWrapper, null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_start));
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_top));
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_end));
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_bottom));
        typedArrayObtainStyledAttributes.recycle();
        if (contextThemeWrapper.getResources().getConfiguration().getLayoutDirection() == 1) {
            dimensionPixelSize3 = dimensionPixelSize;
            dimensionPixelSize = dimensionPixelSize3;
        }
        this.f1511e = new Rect(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
        int iL = c.l(contextThemeWrapper, b.class.getCanonicalName(), R.attr.colorSurface);
        TypedArray typedArrayObtainStyledAttributes2 = contextThemeWrapper.obtainStyledAttributes(null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int color = typedArrayObtainStyledAttributes2.getColor(4, iL);
        typedArrayObtainStyledAttributes2.recycle();
        h hVar = new h(contextThemeWrapper, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        hVar.j(contextThemeWrapper);
        hVar.l(ColorStateList.valueOf(color));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(((C0240b) this.f4145c).f4096a.getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                l lVarE = hVar.b.f2383a.e();
                lVarE.b(dimension);
                hVar.setShapeAppearanceModel(lVarE.a());
            }
        }
        this.f1510d = hVar;
    }

    @Override // p011e.C0244f
    public final DialogInterfaceC0245g c() {
        DialogInterfaceC0245g dialogInterfaceC0245gC = super.c();
        Window window = dialogInterfaceC0245gC.getWindow();
        View decorView = window.getDecorView();
        h hVar = this.f1510d;
        if (hVar != null) {
            hVar.k(ViewCompat.getElevation(decorView));
        }
        Rect rect = this.f1511e;
        window.setBackgroundDrawable(new InsetDrawable((Drawable) hVar, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new a(dialogInterfaceC0245gC, rect));
        return dialogInterfaceC0245gC;
    }

    public final void f(int i3, DialogInterface.OnClickListener onClickListener) {
        C0240b c0240b = (C0240b) this.f4145c;
        c0240b.f4101i = c0240b.f4096a.getText(i3);
        c0240b.f4102j = onClickListener;
    }

    public final void g(String str, DialogInterfaceOnClickListenerC0071h1 dialogInterfaceOnClickListenerC0071h1) {
        C0240b c0240b = (C0240b) this.f4145c;
        c0240b.f4101i = str;
        c0240b.f4102j = dialogInterfaceOnClickListenerC0071h1;
    }

    public final void h(int i3, DialogInterface.OnClickListener onClickListener) {
        C0240b c0240b = (C0240b) this.f4145c;
        c0240b.g = c0240b.f4096a.getText(i3);
        c0240b.f4100h = onClickListener;
    }

    public final void i(String str, DialogInterface.OnClickListener onClickListener) {
        C0240b c0240b = (C0240b) this.f4145c;
        c0240b.g = str;
        c0240b.f4100h = onClickListener;
    }

    public final void j(int i3) {
        C0240b c0240b = (C0240b) this.f4145c;
        c0240b.f4098d = c0240b.f4096a.getText(i3);
    }
}
