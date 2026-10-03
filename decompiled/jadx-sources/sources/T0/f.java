package T0;

import R0.n;
import S.C0168a;
import Y0.m;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.HashSet;
import p024j.E;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f extends ViewGroup implements E {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final int[] f2169G = {R.attr.state_checked};

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final int[] f2170H = {-16842910};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2171A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public m f2172B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f2173C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ColorStateList f2174D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public h f2175E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public p f2176F;
    public final C0168a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H0.j f2177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Pools.SynchronizedPool f2178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseArray f2179e;
    public int f;
    public d[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2180h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2181i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f2182j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2183k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f2184l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ColorStateList f2185m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2186n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2187o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2188p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f2189q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ColorStateList f2190r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2191s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final SparseArray f2192t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2193u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2194v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2195w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2196x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2197y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2198z;

    public f(Context context) {
        super(context);
        this.f2178d = new Pools.SynchronizedPool(5);
        this.f2179e = new SparseArray(5);
        this.f2180h = 0;
        this.f2181i = 0;
        this.f2192t = new SparseArray(5);
        this.f2193u = -1;
        this.f2194v = -1;
        this.f2195w = -1;
        this.f2173C = false;
        this.f2185m = c();
        if (isInEditMode()) {
            this.b = null;
        } else {
            C0168a c0168a = new C0168a();
            this.b = c0168a;
            c0168a.S(0);
            c0168a.G(com.bumptech.glide.c.N(getContext(), com.minhub.gamehub.R.attr.motionDurationMedium4, getResources().getInteger(com.minhub.gamehub.R.integer.material_motion_duration_long_1)));
            c0168a.I(com.bumptech.glide.c.O(getContext(), com.minhub.gamehub.R.attr.motionEasingStandard, B0.a.b));
            c0168a.O(new n());
        }
        this.f2177c = new H0.j(1, (G0.b) this);
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d getNewItem() {
        d dVar = (d) this.f2178d.acquire();
        return dVar == null ? new G0.a(getContext()) : dVar;
    }

    private void setBadgeIfNeeded(d dVar) {
        D0.a aVar;
        int id = dVar.getId();
        if (id == -1 || (aVar = (D0.a) this.f2192t.get(id)) == null) {
            return;
        }
        dVar.setBadge(aVar);
    }

    @Override // p024j.E
    public final void a(p pVar) {
        this.f2176F = pVar;
    }

    public final void b() {
        removeAllViews();
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                if (dVar != null) {
                    this.f2178d.release(dVar);
                    ImageView imageView = dVar.f2155o;
                    if (dVar.f2144G != null) {
                        if (imageView != null) {
                            dVar.setClipChildren(true);
                            dVar.setClipToPadding(true);
                            D0.a aVar = dVar.f2144G;
                            if (aVar != null) {
                                if (aVar.d() != null) {
                                    aVar.d().setForeground(null);
                                } else {
                                    imageView.getOverlay().remove(aVar);
                                }
                            }
                        }
                        dVar.f2144G = null;
                    }
                    dVar.f2161u = null;
                    dVar.f2138A = 0.0f;
                    dVar.b = false;
                }
            }
        }
        if (this.f2176F.f.size() == 0) {
            this.f2180h = 0;
            this.f2181i = 0;
            this.g = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i3 = 0; i3 < this.f2176F.f.size(); i3++) {
            hashSet.add(Integer.valueOf(this.f2176F.getItem(i3).getItemId()));
        }
        int i4 = 0;
        while (true) {
            SparseArray sparseArray = this.f2192t;
            if (i4 >= sparseArray.size()) {
                break;
            }
            int iKeyAt = sparseArray.keyAt(i4);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                sparseArray.delete(iKeyAt);
            }
            i4++;
        }
        this.g = new d[this.f2176F.f.size()];
        int i5 = this.f;
        boolean z2 = i5 != -1 ? i5 == 0 : this.f2176F.l().size() > 3;
        for (int i6 = 0; i6 < this.f2176F.f.size(); i6++) {
            this.f2175E.f2200c = true;
            this.f2176F.getItem(i6).setCheckable(true);
            this.f2175E.f2200c = false;
            d newItem = getNewItem();
            this.g[i6] = newItem;
            newItem.setIconTintList(this.f2182j);
            newItem.setIconSize(this.f2183k);
            newItem.setTextColor(this.f2185m);
            newItem.setTextAppearanceInactive(this.f2186n);
            newItem.setTextAppearanceActive(this.f2187o);
            newItem.setTextAppearanceActiveBoldEnabled(this.f2188p);
            newItem.setTextColor(this.f2184l);
            int i7 = this.f2193u;
            if (i7 != -1) {
                newItem.setItemPaddingTop(i7);
            }
            int i8 = this.f2194v;
            if (i8 != -1) {
                newItem.setItemPaddingBottom(i8);
            }
            int i9 = this.f2195w;
            if (i9 != -1) {
                newItem.setActiveIndicatorLabelPadding(i9);
            }
            newItem.setActiveIndicatorWidth(this.f2197y);
            newItem.setActiveIndicatorHeight(this.f2198z);
            newItem.setActiveIndicatorMarginHorizontal(this.f2171A);
            newItem.setActiveIndicatorDrawable(d());
            newItem.setActiveIndicatorResizeable(this.f2173C);
            newItem.setActiveIndicatorEnabled(this.f2196x);
            Drawable drawable = this.f2189q;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f2191s);
            }
            newItem.setItemRippleColor(this.f2190r);
            newItem.setShifting(z2);
            newItem.setLabelVisibilityMode(this.f);
            s sVar = (s) this.f2176F.getItem(i6);
            newItem.b(sVar);
            newItem.setItemPosition(i6);
            int i10 = sVar.f4580a;
            newItem.setOnTouchListener((View.OnTouchListener) this.f2179e.get(i10));
            newItem.setOnClickListener(this.f2177c);
            int i11 = this.f2180h;
            if (i11 != 0 && i10 == i11) {
                this.f2181i = i6;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.f2176F.f.size() - 1, this.f2181i);
        this.f2181i = iMin;
        this.f2176F.getItem(iMin).setChecked(true);
    }

    public final ColorStateList c() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R.attr.textColorSecondary, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = ContextCompat.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(com.minhub.gamehub.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f2169G;
        int[] iArr2 = ViewGroup.EMPTY_STATE_SET;
        int[] iArr3 = f2170H;
        return new ColorStateList(new int[][]{iArr3, iArr, iArr2}, new int[]{colorStateList.getColorForState(iArr3, defaultColor), i3, defaultColor});
    }

    public final Y0.h d() {
        if (this.f2172B == null || this.f2174D == null) {
            return null;
        }
        Y0.h hVar = new Y0.h(this.f2172B);
        hVar.l(this.f2174D);
        return hVar;
    }

    public int getActiveIndicatorLabelPadding() {
        return this.f2195w;
    }

    public SparseArray<D0.a> getBadgeDrawables() {
        return this.f2192t;
    }

    public ColorStateList getIconTintList() {
        return this.f2182j;
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.f2174D;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f2196x;
    }

    public int getItemActiveIndicatorHeight() {
        return this.f2198z;
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f2171A;
    }

    public m getItemActiveIndicatorShapeAppearance() {
        return this.f2172B;
    }

    public int getItemActiveIndicatorWidth() {
        return this.f2197y;
    }

    public Drawable getItemBackground() {
        d[] dVarArr = this.g;
        return (dVarArr == null || dVarArr.length <= 0) ? this.f2189q : dVarArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f2191s;
    }

    public int getItemIconSize() {
        return this.f2183k;
    }

    public int getItemPaddingBottom() {
        return this.f2194v;
    }

    public int getItemPaddingTop() {
        return this.f2193u;
    }

    public ColorStateList getItemRippleColor() {
        return this.f2190r;
    }

    public int getItemTextAppearanceActive() {
        return this.f2187o;
    }

    public int getItemTextAppearanceInactive() {
        return this.f2186n;
    }

    public ColorStateList getItemTextColor() {
        return this.f2184l;
    }

    public int getLabelVisibilityMode() {
        return this.f;
    }

    public p getMenu() {
        return this.f2176F;
    }

    public int getSelectedItemId() {
        return this.f2180h;
    }

    public int getSelectedItemPosition() {
        return this.f2181i;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f2176F.l().size(), false, 1));
    }

    public void setActiveIndicatorLabelPadding(int i3) {
        this.f2195w = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorLabelPadding(i3);
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f2182j = colorStateList;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.f2174D = colorStateList;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorDrawable(d());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z2) {
        this.f2196x = z2;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorEnabled(z2);
            }
        }
    }

    public void setItemActiveIndicatorHeight(int i3) {
        this.f2198z = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorHeight(i3);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(int i3) {
        this.f2171A = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorMarginHorizontal(i3);
            }
        }
    }

    public void setItemActiveIndicatorResizeable(boolean z2) {
        this.f2173C = z2;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorResizeable(z2);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(m mVar) {
        this.f2172B = mVar;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorDrawable(d());
            }
        }
    }

    public void setItemActiveIndicatorWidth(int i3) {
        this.f2197y = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setActiveIndicatorWidth(i3);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.f2189q = drawable;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i3) {
        this.f2191s = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemBackground(i3);
            }
        }
    }

    public void setItemIconSize(int i3) {
        this.f2183k = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setIconSize(i3);
            }
        }
    }

    public void setItemPaddingBottom(int i3) {
        this.f2194v = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemPaddingBottom(i3);
            }
        }
    }

    public void setItemPaddingTop(int i3) {
        this.f2193u = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemPaddingTop(i3);
            }
        }
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.f2190r = colorStateList;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setItemRippleColor(colorStateList);
            }
        }
    }

    public void setItemTextAppearanceActive(int i3) {
        this.f2187o = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setTextAppearanceActive(i3);
                ColorStateList colorStateList = this.f2184l;
                if (colorStateList != null) {
                    dVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z2) {
        this.f2188p = z2;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setTextAppearanceActiveBoldEnabled(z2);
            }
        }
    }

    public void setItemTextAppearanceInactive(int i3) {
        this.f2186n = i3;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setTextAppearanceInactive(i3);
                ColorStateList colorStateList = this.f2184l;
                if (colorStateList != null) {
                    dVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f2184l = colorStateList;
        d[] dVarArr = this.g;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                dVar.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i3) {
        this.f = i3;
    }

    public void setPresenter(h hVar) {
        this.f2175E = hVar;
    }
}
