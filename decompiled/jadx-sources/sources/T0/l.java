package T0;

import A1.C0009b;
import R0.p;
import Y0.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.FrameLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import k.Z0;
import p024j.C;
import p024j.E;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l extends FrameLayout {
    public final e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final G0.b f2203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f2204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p021i.h f2205e;
    public j f;

    public l(Context context, AttributeSet attributeSet) {
        super(p015f1.a.a(context, attributeSet, R.attr.bottomNavigationStyle, R.style.Widget_Design_BottomNavigationView), attributeSet, R.attr.bottomNavigationStyle);
        h hVar = new h();
        hVar.f2200c = false;
        this.f2204d = hVar;
        Context context2 = getContext();
        Z0 z0F = p.f(context2, attributeSet, A0.a.f5B, R.attr.bottomNavigationStyle, R.style.Widget_Design_BottomNavigationView, 12, 10);
        e eVar = new e(context2, getClass(), getMaxItemCount());
        this.b = eVar;
        G0.b bVar = new G0.b(context2);
        this.f2203c = bVar;
        hVar.b = bVar;
        hVar.f2201d = 1;
        bVar.setPresenter(hVar);
        eVar.b(hVar, eVar.f4553a);
        getContext();
        hVar.b.f2176F = eVar;
        TypedArray typedArray = z0F.b;
        if (typedArray.hasValue(6)) {
            bVar.setIconTintList(z0F.a(6));
        } else {
            bVar.setIconTintList(bVar.c());
        }
        setItemIconSize(typedArray.getDimensionPixelSize(5, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (typedArray.hasValue(12)) {
            setItemTextAppearanceInactive(typedArray.getResourceId(12, 0));
        }
        if (typedArray.hasValue(10)) {
            setItemTextAppearanceActive(typedArray.getResourceId(10, 0));
        }
        setItemTextAppearanceActiveBoldEnabled(typedArray.getBoolean(11, true));
        if (typedArray.hasValue(13)) {
            setItemTextColor(z0F.a(13));
        }
        Drawable background = getBackground();
        ColorStateList colorStateListT = com.bumptech.glide.d.t(background);
        if (background == null || colorStateListT != null) {
            Y0.h hVar2 = new Y0.h(m.b(context2, attributeSet, R.attr.bottomNavigationStyle, R.style.Widget_Design_BottomNavigationView).a());
            if (colorStateListT != null) {
                hVar2.l(colorStateListT);
            }
            hVar2.j(context2);
            ViewCompat.setBackground(this, hVar2);
        }
        if (typedArray.hasValue(8)) {
            setItemPaddingTop(typedArray.getDimensionPixelSize(8, 0));
        }
        if (typedArray.hasValue(7)) {
            setItemPaddingBottom(typedArray.getDimensionPixelSize(7, 0));
        }
        if (typedArray.hasValue(0)) {
            setActiveIndicatorLabelPadding(typedArray.getDimensionPixelSize(0, 0));
        }
        if (typedArray.hasValue(2)) {
            setElevation(typedArray.getDimensionPixelSize(2, 0));
        }
        DrawableCompat.setTintList(getBackground().mutate(), com.bumptech.glide.d.s(context2, z0F, 1));
        setLabelVisibilityMode(typedArray.getInteger(14, -1));
        int resourceId = typedArray.getResourceId(4, 0);
        if (resourceId != 0) {
            bVar.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(com.bumptech.glide.d.s(context2, z0F, 9));
        }
        int resourceId2 = typedArray.getResourceId(3, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, A0.a.f4A);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
            setItemActiveIndicatorColor(com.bumptech.glide.d.r(context2, typedArrayObtainStyledAttributes, 2));
            setItemActiveIndicatorShapeAppearance(m.a(context2, typedArrayObtainStyledAttributes.getResourceId(4, 0), 0, new Y0.a(0)).a());
            typedArrayObtainStyledAttributes.recycle();
        }
        if (typedArray.hasValue(15)) {
            int resourceId3 = typedArray.getResourceId(15, 0);
            hVar.f2200c = true;
            getMenuInflater().inflate(resourceId3, eVar);
            hVar.f2200c = false;
            hVar.g(true);
        }
        z0F.f();
        addView(bVar);
        eVar.f4556e = new C0009b(this);
    }

    private MenuInflater getMenuInflater() {
        if (this.f2205e == null) {
            this.f2205e = new p021i.h(getContext());
        }
        return this.f2205e;
    }

    public int getActiveIndicatorLabelPadding() {
        return this.f2203c.getActiveIndicatorLabelPadding();
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.f2203c.getItemActiveIndicatorColor();
    }

    public int getItemActiveIndicatorHeight() {
        return this.f2203c.getItemActiveIndicatorHeight();
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f2203c.getItemActiveIndicatorMarginHorizontal();
    }

    public m getItemActiveIndicatorShapeAppearance() {
        return this.f2203c.getItemActiveIndicatorShapeAppearance();
    }

    public int getItemActiveIndicatorWidth() {
        return this.f2203c.getItemActiveIndicatorWidth();
    }

    public Drawable getItemBackground() {
        return this.f2203c.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f2203c.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f2203c.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.f2203c.getIconTintList();
    }

    public int getItemPaddingBottom() {
        return this.f2203c.getItemPaddingBottom();
    }

    public int getItemPaddingTop() {
        return this.f2203c.getItemPaddingTop();
    }

    public ColorStateList getItemRippleColor() {
        return this.f2203c.getItemRippleColor();
    }

    public int getItemTextAppearanceActive() {
        return this.f2203c.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f2203c.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.f2203c.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f2203c.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    public Menu getMenu() {
        return this.b;
    }

    public E getMenuView() {
        return this.f2203c;
    }

    public h getPresenter() {
        return this.f2204d;
    }

    public int getSelectedItemId() {
        return this.f2203c.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof Y0.h) {
            com.bumptech.glide.c.T(this, (Y0.h) background);
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof k)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        k kVar = (k) parcelable;
        super.onRestoreInstanceState(kVar.b);
        Bundle bundle = kVar.f2202d;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.b.f4570u;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        for (WeakReference weakReference : copyOnWriteArrayList) {
            C c3 = (C) weakReference.get();
            if (c3 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = c3.getId();
                if (id > 0 && (parcelable2 = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    c3.e(parcelable2);
                }
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableJ;
        k kVar = new k(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        kVar.f2202d = bundle;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.b.f4570u;
        if (copyOnWriteArrayList.isEmpty()) {
            return kVar;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            C c3 = (C) weakReference.get();
            if (c3 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = c3.getId();
                if (id > 0 && (parcelableJ = c3.j()) != null) {
                    sparseArray.put(id, parcelableJ);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        return kVar;
    }

    public void setActiveIndicatorLabelPadding(int i3) {
        this.f2203c.setActiveIndicatorLabelPadding(i3);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof Y0.h) {
            ((Y0.h) background).k(f);
        }
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.f2203c.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z2) {
        this.f2203c.setItemActiveIndicatorEnabled(z2);
    }

    public void setItemActiveIndicatorHeight(int i3) {
        this.f2203c.setItemActiveIndicatorHeight(i3);
    }

    public void setItemActiveIndicatorMarginHorizontal(int i3) {
        this.f2203c.setItemActiveIndicatorMarginHorizontal(i3);
    }

    public void setItemActiveIndicatorShapeAppearance(m mVar) {
        this.f2203c.setItemActiveIndicatorShapeAppearance(mVar);
    }

    public void setItemActiveIndicatorWidth(int i3) {
        this.f2203c.setItemActiveIndicatorWidth(i3);
    }

    public void setItemBackground(Drawable drawable) {
        this.f2203c.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i3) {
        this.f2203c.setItemBackgroundRes(i3);
    }

    public void setItemIconSize(int i3) {
        this.f2203c.setItemIconSize(i3);
    }

    public void setItemIconSizeRes(int i3) {
        setItemIconSize(getResources().getDimensionPixelSize(i3));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f2203c.setIconTintList(colorStateList);
    }

    public void setItemPaddingBottom(int i3) {
        this.f2203c.setItemPaddingBottom(i3);
    }

    public void setItemPaddingTop(int i3) {
        this.f2203c.setItemPaddingTop(i3);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.f2203c.setItemRippleColor(colorStateList);
    }

    public void setItemTextAppearanceActive(int i3) {
        this.f2203c.setItemTextAppearanceActive(i3);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z2) {
        this.f2203c.setItemTextAppearanceActiveBoldEnabled(z2);
    }

    public void setItemTextAppearanceInactive(int i3) {
        this.f2203c.setItemTextAppearanceInactive(i3);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f2203c.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i3) {
        G0.b bVar = this.f2203c;
        if (bVar.getLabelVisibilityMode() != i3) {
            bVar.setLabelVisibilityMode(i3);
            this.f2204d.g(false);
        }
    }

    public void setOnItemSelectedListener(j jVar) {
        this.f = jVar;
    }

    public void setSelectedItemId(int i3) {
        e eVar = this.b;
        MenuItem menuItemFindItem = eVar.findItem(i3);
        if (menuItemFindItem == null || eVar.q(menuItemFindItem, this.f2204d, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }

    public void setOnItemReselectedListener(i iVar) {
    }
}
