package com.google.android.material.appbar;

import C1.T;
import R0.p;
import Y0.h;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Collections;
import p015f1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final ImageView.ScaleType[] f3284a0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Integer f3285S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f3286T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f3287U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public ImageView.ScaleType f3288V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public Boolean f3289W;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar), attributeSet, 0);
        Context context2 = getContext();
        TypedArray typedArrayE = p.e(context2, attributeSet, A0.a.f40z, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (typedArrayE.hasValue(2)) {
            setNavigationIconTint(typedArrayE.getColor(2, -1));
        }
        this.f3286T = typedArrayE.getBoolean(4, false);
        this.f3287U = typedArrayE.getBoolean(3, false);
        int i3 = typedArrayE.getInt(1, -1);
        if (i3 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f3284a0;
            if (i3 < scaleTypeArr.length) {
                this.f3288V = scaleTypeArr[i3];
            }
        }
        if (typedArrayE.hasValue(0)) {
            this.f3289W = Boolean.valueOf(typedArrayE.getBoolean(0, false));
        }
        typedArrayE.recycle();
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : d.t(background);
        if (colorStateListValueOf != null) {
            h hVar = new h();
            hVar.l(colorStateListValueOf);
            hVar.j(context2);
            hVar.k(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, hVar);
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.f3288V;
    }

    public Integer getNavigationIconTint() {
        return this.f3285S;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void m(int i3) {
        Menu menu = getMenu();
        boolean z2 = menu instanceof p024j.p;
        if (z2) {
            ((p024j.p) menu).w();
        }
        super.m(i3);
        if (z2) {
            ((p024j.p) menu).v();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof h) {
            c.T(this, (h) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z2, i3, i4, i5, i6);
        T t2 = p.f1939c;
        ImageView imageView2 = null;
        if (this.f3286T || this.f3287U) {
            ArrayList arrayListD = p.d(this, getTitle());
            TextView textView = arrayListD.isEmpty() ? null : (TextView) Collections.min(arrayListD, t2);
            ArrayList arrayListD2 = p.d(this, getSubtitle());
            TextView textView2 = arrayListD2.isEmpty() ? null : (TextView) Collections.max(arrayListD2, t2);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i7 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i8 = 0; i8 < getChildCount(); i8++) {
                    View childAt = getChildAt(i8);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i7 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i7 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.f3286T && textView != null) {
                    u(textView, pair);
                }
                if (this.f3287U && textView2 != null) {
                    u(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            for (int i9 = 0; i9 < getChildCount(); i9++) {
                View childAt2 = getChildAt(i9);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f3289W;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f3288V;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof h) {
            ((h) background).k(f);
        }
    }

    public void setLogoAdjustViewBounds(boolean z2) {
        Boolean bool = this.f3289W;
        if (bool == null || bool.booleanValue() != z2) {
            this.f3289W = Boolean.valueOf(z2);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.f3288V != scaleType) {
            this.f3288V = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.f3285S != null) {
            drawable = DrawableCompat.wrap(drawable.mutate());
            DrawableCompat.setTint(drawable, this.f3285S.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i3) {
        this.f3285S = Integer.valueOf(i3);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z2) {
        if (this.f3287U != z2) {
            this.f3287U = z2;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z2) {
        if (this.f3286T != z2) {
            this.f3286T = z2;
            requestLayout();
        }
    }

    public final void u(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i3 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i4 = measuredWidth2 + i3;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i3, 0), Math.max(i4 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i3 += iMax;
            i4 -= iMax;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i4 - i3, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i3, textView.getTop(), i4, textView.getBottom());
    }
}
