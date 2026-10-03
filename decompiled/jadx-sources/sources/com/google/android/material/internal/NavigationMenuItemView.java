package com.google.android.material.internal;

import H0.k;
import R0.f;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import k.C0328z0;
import p000a.a;
import p024j.D;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuItemView extends f implements D {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final int[] f3476H = {R.attr.state_checked};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final CheckedTextView f3477A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public FrameLayout f3478B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public s f3479C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ColorStateList f3480D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f3481E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public Drawable f3482F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final k f3483G;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3484w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3485x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f3486y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final boolean f3487z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3487z = true;
        k kVar = new k(2, this);
        this.f3483G = kVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.minhub.gamehub.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.minhub.gamehub.R.id.design_menu_item_text);
        this.f3477A = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, kVar);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f3478B == null) {
                this.f3478B = (FrameLayout) ((ViewStub) findViewById(com.minhub.gamehub.R.id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f3478B.removeAllViews();
            this.f3478B.addView(view);
        }
    }

    @Override // p024j.D
    public final void b(s sVar) {
        StateListDrawable stateListDrawable;
        this.f3479C = sVar;
        int i3 = sVar.f4580a;
        if (i3 > 0) {
            setId(i3);
        }
        setVisibility(sVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.minhub.gamehub.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f3476H, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            ViewCompat.setBackground(this, stateListDrawable);
        }
        setCheckable(sVar.isCheckable());
        setChecked(sVar.isChecked());
        setEnabled(sVar.isEnabled());
        setTitle(sVar.f4583e);
        setIcon(sVar.getIcon());
        setActionView(sVar.getActionView());
        setContentDescription(sVar.f4593q);
        a.J(this, sVar.f4594r);
        s sVar2 = this.f3479C;
        CharSequence charSequence = sVar2.f4583e;
        CheckedTextView checkedTextView = this.f3477A;
        if (charSequence == null && sVar2.getIcon() == null && this.f3479C.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f3478B;
            if (frameLayout != null) {
                C0328z0 c0328z0 = (C0328z0) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) c0328z0).width = -1;
                this.f3478B.setLayoutParams(c0328z0);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f3478B;
        if (frameLayout2 != null) {
            C0328z0 c0328z1 = (C0328z0) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) c0328z1).width = -2;
            this.f3478B.setLayoutParams(c0328z1);
        }
    }

    @Override // p024j.D
    public s getItemData() {
        return this.f3479C;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 1);
        s sVar = this.f3479C;
        if (sVar != null && sVar.isCheckable() && this.f3479C.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3476H);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z2) {
        refreshDrawableState();
        if (this.f3486y != z2) {
            this.f3486y = z2;
            this.f3483G.sendAccessibilityEvent(this.f3477A, 2048);
        }
    }

    public void setChecked(boolean z2) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.f3477A;
        checkedTextView.setChecked(z2);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z2 && this.f3487z) ? 1 : 0);
    }

    public void setHorizontalPadding(int i3) {
        setPadding(i3, getPaddingTop(), i3, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f3481E) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.f3480D);
            }
            int i3 = this.f3484w;
            drawable.setBounds(0, 0, i3, i3);
        } else if (this.f3485x) {
            if (this.f3482F == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), com.minhub.gamehub.R.drawable.navigation_empty_icon, getContext().getTheme());
                this.f3482F = drawable2;
                if (drawable2 != null) {
                    int i4 = this.f3484w;
                    drawable2.setBounds(0, 0, i4, i4);
                }
            }
            drawable = this.f3482F;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.f3477A, drawable, null, null, null);
    }

    public void setIconPadding(int i3) {
        this.f3477A.setCompoundDrawablePadding(i3);
    }

    public void setIconSize(int i3) {
        this.f3484w = i3;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f3480D = colorStateList;
        this.f3481E = colorStateList != null;
        s sVar = this.f3479C;
        if (sVar != null) {
            setIcon(sVar.getIcon());
        }
    }

    public void setMaxLines(int i3) {
        this.f3477A.setMaxLines(i3);
    }

    public void setNeedsEmptyIcon(boolean z2) {
        this.f3485x = z2;
    }

    public void setTextAppearance(int i3) {
        TextViewCompat.setTextAppearance(this.f3477A, i3);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f3477A.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f3477A.setText(charSequence);
    }
}
