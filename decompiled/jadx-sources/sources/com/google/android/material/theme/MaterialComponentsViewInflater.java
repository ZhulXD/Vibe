package com.google.android.material.theme;

import L0.c;
import R0.p;
import U0.a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.core.widget.CompoundButtonCompat;
import com.bumptech.glide.d;
import com.google.android.material.button.MaterialButton;
import com.minhub.gamehub.R;
import k.C0285d0;
import k.C0308p;
import k.C0313s;
import k.r;
import p010d1.u;
import p011e.F;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialComponentsViewInflater extends F {
    @Override // p011e.F
    public final C0308p a(Context context, AttributeSet attributeSet) {
        return new u(context, attributeSet);
    }

    @Override // p011e.F
    public final r b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // p011e.F
    public final C0313s c(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // p011e.F
    public final k.F d(Context context, AttributeSet attributeSet) {
        a aVar = new a(p015f1.a.a(context, attributeSet, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = aVar.getContext();
        TypedArray typedArrayE = p.e(context2, attributeSet, A0.a.f36v, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayE.hasValue(0)) {
            CompoundButtonCompat.setButtonTintList(aVar, d.r(context2, typedArrayE, 0));
        }
        aVar.g = typedArrayE.getBoolean(1, false);
        typedArrayE.recycle();
        return aVar;
    }

    @Override // p011e.F
    public final C0285d0 e(Context context, AttributeSet attributeSet) {
        p013e1.a aVar = new p013e1.a(p015f1.a.a(context, attributeSet, android.R.attr.textViewStyle, 0), attributeSet, android.R.attr.textViewStyle);
        Context context2 = aVar.getContext();
        if (com.bumptech.glide.c.J(context2, R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = A0.a.f39y;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
            int iG = p013e1.a.g(context2, typedArrayObtainStyledAttributes, 1, 2);
            typedArrayObtainStyledAttributes.recycle();
            if (iG == -1) {
                TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
                int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, A0.a.f38x);
                    int iG2 = p013e1.a.g(aVar.getContext(), typedArrayObtainStyledAttributes3, 1, 2);
                    typedArrayObtainStyledAttributes3.recycle();
                    if (iG2 >= 0) {
                        aVar.setLineHeight(iG2);
                    }
                }
            }
        }
        return aVar;
    }
}
