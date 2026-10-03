package com.google.android.material.switchmaterial;

import Q0.a;
import R0.p;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.c;
import k.U0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SwitchMaterial extends U0 {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final int[][] f3511b0 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final a f3512U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public ColorStateList f3513V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public ColorStateList f3514W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f3515a0;

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        super(p015f1.a.a(context, attributeSet, com.minhub.gamehub.R.attr.switchStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_CompoundButton_Switch), attributeSet);
        Context context2 = getContext();
        this.f3512U = new a(context2);
        p.a(context2, attributeSet, com.minhub.gamehub.R.attr.switchStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_CompoundButton_Switch);
        int[] iArr = A0.a.f12I;
        p.b(context2, attributeSet, iArr, com.minhub.gamehub.R.attr.switchStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_CompoundButton_Switch, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.minhub.gamehub.R.attr.switchStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_CompoundButton_Switch);
        this.f3515a0 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f3513V == null) {
            int iM = c.m(this, com.minhub.gamehub.R.attr.colorSurface);
            int iM2 = c.m(this, com.minhub.gamehub.R.attr.colorControlActivated);
            float dimension = getResources().getDimension(com.minhub.gamehub.R.dimen.mtrl_switch_thumb_elevation);
            a aVar = this.f3512U;
            if (aVar.f1832a) {
                float elevation = 0.0f;
                for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
                    elevation += ViewCompat.getElevation((View) parent);
                }
                dimension += elevation;
            }
            int iA = aVar.a(iM, dimension);
            this.f3513V = new ColorStateList(f3511b0, new int[]{c.w(iM, 1.0f, iM2), iA, c.w(iM, 0.38f, iM2), iA});
        }
        return this.f3513V;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.f3514W == null) {
            int iM = c.m(this, com.minhub.gamehub.R.attr.colorSurface);
            int iM2 = c.m(this, com.minhub.gamehub.R.attr.colorControlActivated);
            int iM3 = c.m(this, com.minhub.gamehub.R.attr.colorOnSurface);
            this.f3514W = new ColorStateList(f3511b0, new int[]{c.w(iM, 0.54f, iM2), c.w(iM, 0.32f, iM3), c.w(iM, 0.12f, iM2), c.w(iM, 0.12f, iM3)});
        }
        return this.f3514W;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f3515a0 && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f3515a0 && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.f3515a0 = z2;
        if (z2) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }
}
