package com.google.android.material.chip;

import M0.g;
import M0.h;
import M0.i;
import M0.j;
import M0.k;
import R0.a;
import R0.e;
import R0.p;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.minhub.gamehub.R;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ChipGroup extends e {
    public int f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public j f3403h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f3404i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3405j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final k f3406k;

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet) {
        Context contextA = p015f1.a.a(context, attributeSet, R.attr.chipGroupStyle, R.style.Widget_MaterialComponents_ChipGroup);
        super(contextA, attributeSet, R.attr.chipGroupStyle);
        this.f1918d = false;
        TypedArray typedArrayObtainStyledAttributes = contextA.getTheme().obtainStyledAttributes(attributeSet, A0.a.f26l, 0, 0);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f1917c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        a aVar = new a();
        this.f3404i = aVar;
        k kVar = new k(this);
        this.f3406k = kVar;
        TypedArray typedArrayE = p.e(getContext(), attributeSet, A0.a.g, R.attr.chipGroupStyle, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = typedArrayE.getDimensionPixelOffset(1, 0);
        setChipSpacingHorizontal(typedArrayE.getDimensionPixelOffset(2, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayE.getDimensionPixelOffset(3, dimensionPixelOffset));
        setSingleLine(typedArrayE.getBoolean(5, false));
        setSingleSelection(typedArrayE.getBoolean(6, false));
        setSelectionRequired(typedArrayE.getBoolean(4, false));
        this.f3405j = typedArrayE.getResourceId(0, -1);
        typedArrayE.recycle();
        aVar.f1859c = new g(this);
        super.setOnHierarchyChangeListener(kVar);
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private int getVisibleChipCount() {
        int i3 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if ((getChildAt(i4) instanceof Chip) && getChildAt(i4).getVisibility() == 0) {
                i3++;
            }
        }
        return i3;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof h);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new h(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new h(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        return this.f3404i.c();
    }

    public List<Integer> getCheckedChipIds() {
        return this.f3404i.b(this);
    }

    public int getChipSpacingHorizontal() {
        return this.f;
    }

    public int getChipSpacingVertical() {
        return this.g;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i3 = this.f3405j;
        if (i3 != -1) {
            a aVar = this.f3404i;
            R0.h hVar = (R0.h) aVar.f1858a.get(Integer.valueOf(i3));
            if (hVar != null && aVar.a(hVar)) {
                aVar.d();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), this.f1918d ? getVisibleChipCount() : -1, false, this.f3404i.f1860d ? 1 : 2));
    }

    public void setChipSpacing(int i3) {
        setChipSpacingHorizontal(i3);
        setChipSpacingVertical(i3);
    }

    public void setChipSpacingHorizontal(int i3) {
        if (this.f != i3) {
            this.f = i3;
            setItemSpacing(i3);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i3) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i3));
    }

    public void setChipSpacingResource(int i3) {
        setChipSpacing(getResources().getDimensionPixelOffset(i3));
    }

    public void setChipSpacingVertical(int i3) {
        if (this.g != i3) {
            this.g = i3;
            setLineSpacing(i3);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i3) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i3));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i3) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(i iVar) {
        if (iVar == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new g(this));
        }
    }

    public void setOnCheckedStateChangeListener(j jVar) {
        this.f3403h = jVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f3406k.b = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z2) {
        this.f3404i.f1861e = z2;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i3) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i3) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // R0.e
    public void setSingleLine(boolean z2) {
        super.setSingleLine(z2);
    }

    public void setSingleSelection(boolean z2) {
        a aVar = this.f3404i;
        if (aVar.f1860d != z2) {
            aVar.f1860d = z2;
            boolean zIsEmpty = aVar.b.isEmpty();
            Iterator it = aVar.f1858a.values().iterator();
            while (it.hasNext()) {
                aVar.e((R0.h) it.next(), false);
            }
            if (zIsEmpty) {
                return;
            }
            aVar.d();
        }
    }

    public void setSingleLine(int i3) {
        setSingleLine(getResources().getBoolean(i3));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new h(layoutParams);
    }

    public void setSingleSelection(int i3) {
        setSingleSelection(getResources().getBoolean(i3));
    }
}
