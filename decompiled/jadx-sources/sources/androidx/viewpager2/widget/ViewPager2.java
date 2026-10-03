package androidx.viewpager2.widget;

import A1.C0009b;
import P.AbstractC0139c0;
import P.AbstractC0147g0;
import P.W;
import W.a;
import X.b;
import X.c;
import X.e;
import X.f;
import X.g;
import X.h;
import X.i;
import X.m;
import X.n;
import X.o;
import X.p;
import X.q;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.d;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {
    public final Rect b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f3059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f3060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3061e;
    public boolean f;
    public final f g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f3062h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3063i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Parcelable f3064j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final p f3065k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final o f3066l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final e f3067m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b f3068n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0009b f3069o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final c f3070p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AbstractC0139c0 f3071q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3072r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3073s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3074t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final m f3075u;

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.f3059c = new Rect();
        b bVar = new b();
        this.f3060d = bVar;
        this.f = false;
        this.g = new f(0, this);
        this.f3063i = -1;
        this.f3071q = null;
        this.f3072r = false;
        this.f3073s = true;
        this.f3074t = -1;
        this.f3075u = new m(this);
        p pVar = new p(this, context);
        this.f3065k = pVar;
        pVar.setId(View.generateViewId());
        this.f3065k.setDescendantFocusability(131072);
        i iVar = new i(this);
        this.f3062h = iVar;
        this.f3065k.setLayoutManager(iVar);
        this.f3065k.setScrollingTouchSlop(1);
        int[] iArr = a.f2298a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
            this.f3065k.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            p pVar2 = this.f3065k;
            h hVar = new h();
            if (pVar2.f2958D == null) {
                pVar2.f2958D = new ArrayList();
            }
            pVar2.f2958D.add(hVar);
            e eVar = new e(this);
            this.f3067m = eVar;
            this.f3069o = new C0009b(eVar);
            o oVar = new o(this);
            this.f3066l = oVar;
            oVar.a(this.f3065k);
            this.f3065k.j(this.f3067m);
            b bVar2 = new b();
            this.f3068n = bVar2;
            this.f3067m.f2311a = bVar2;
            g gVar = new g(this, 0);
            g gVar2 = new g(this, 1);
            ((ArrayList) bVar2.b).add(gVar);
            ((ArrayList) this.f3068n.b).add(gVar2);
            m mVar = this.f3075u;
            p pVar3 = this.f3065k;
            mVar.getClass();
            pVar3.setImportantForAccessibility(2);
            mVar.f2326d = new f(1, mVar);
            ViewPager2 viewPager2 = mVar.f2327e;
            if (viewPager2.getImportantForAccessibility() == 0) {
                viewPager2.setImportantForAccessibility(1);
            }
            ((ArrayList) this.f3068n.b).add(bVar);
            c cVar = new c();
            this.f3070p = cVar;
            ((ArrayList) this.f3068n.b).add(cVar);
            p pVar4 = this.f3065k;
            attachViewToParent(pVar4, 0, pVar4.getLayoutParams());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        W adapter;
        if (this.f3063i == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.f3064j;
        if (parcelable != null) {
            if (adapter instanceof androidx.viewpager2.adapter.f) {
                ((d) ((androidx.viewpager2.adapter.f) adapter)).q(parcelable);
            }
            this.f3064j = null;
        }
        int iMax = Math.max(0, Math.min(this.f3063i, adapter.a() - 1));
        this.f3061e = iMax;
        this.f3063i = -1;
        this.f3065k.f0(iMax);
        this.f3075u.e0();
    }

    public final void b(int i3, boolean z2) {
        Object obj = this.f3069o.b;
        c(i3, z2);
    }

    public final void c(int i3, boolean z2) {
        W adapter = getAdapter();
        if (adapter == null) {
            if (this.f3063i != -1) {
                this.f3063i = Math.max(i3, 0);
                return;
            }
            return;
        }
        if (adapter.a() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i3, 0), adapter.a() - 1);
        int i4 = this.f3061e;
        if (iMin == i4 && this.f3067m.f == 0) {
            return;
        }
        if (iMin == i4 && z2) {
            return;
        }
        double d3 = i4;
        this.f3061e = iMin;
        this.f3075u.e0();
        e eVar = this.f3067m;
        if (eVar.f != 0) {
            eVar.f();
            X.d dVar = eVar.g;
            d3 = ((double) dVar.f2309a) + ((double) dVar.b);
        }
        e eVar2 = this.f3067m;
        eVar2.getClass();
        eVar2.f2314e = z2 ? 2 : 3;
        boolean z3 = eVar2.f2316i != iMin;
        eVar2.f2316i = iMin;
        eVar2.d(2);
        if (z3) {
            eVar2.c(iMin);
        }
        if (!z2) {
            this.f3065k.f0(iMin);
            return;
        }
        double d4 = iMin;
        if (Math.abs(d4 - d3) <= 3.0d) {
            this.f3065k.i0(iMin);
            return;
        }
        this.f3065k.f0(d4 > d3 ? iMin - 3 : iMin + 3);
        p pVar = this.f3065k;
        pVar.post(new T0.a(iMin, pVar));
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i3) {
        return this.f3065k.canScrollHorizontally(i3);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i3) {
        return this.f3065k.canScrollVertically(i3);
    }

    public final void d() {
        o oVar = this.f3066l;
        if (oVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewE = oVar.e(this.f3062h);
        if (viewE == null) {
            return;
        }
        this.f3062h.getClass();
        int iK = AbstractC0147g0.K(viewE);
        if (iK != this.f3061e && getScrollState() == 0) {
            this.f3068n.c(iK);
        }
        this.f = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(getId());
        if (parcelable instanceof q) {
            int i3 = ((q) parcelable).b;
            sparseArray.put(this.f3065k.getId(), (Parcelable) sparseArray.get(i3));
            sparseArray.remove(i3);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        this.f3075u.getClass();
        this.f3075u.getClass();
        return "androidx.viewpager.widget.ViewPager";
    }

    public W getAdapter() {
        return this.f3065k.getAdapter();
    }

    public int getCurrentItem() {
        return this.f3061e;
    }

    public int getItemDecorationCount() {
        return this.f3065k.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f3074t;
    }

    public int getOrientation() {
        return this.f3062h.f2933p == 1 ? 1 : 0;
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        int orientation = getOrientation();
        p pVar = this.f3065k;
        if (orientation == 0) {
            height = pVar.getWidth() - pVar.getPaddingLeft();
            paddingBottom = pVar.getPaddingRight();
        } else {
            height = pVar.getHeight() - pVar.getPaddingTop();
            paddingBottom = pVar.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.f3067m.f;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int iA;
        int iA2;
        int iA3;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        m mVar = this.f3075u;
        mVar.getClass();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        ViewPager2 viewPager2 = mVar.f2327e;
        if (viewPager2.getAdapter() == null) {
            iA = 0;
            iA2 = 0;
        } else if (viewPager2.getOrientation() == 1) {
            iA = viewPager2.getAdapter().a();
            iA2 = 1;
        } else {
            iA2 = viewPager2.getAdapter().a();
            iA = 1;
        }
        accessibilityNodeInfoCompatWrap.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(iA, iA2, false, 0));
        W adapter = viewPager2.getAdapter();
        if (adapter == null || (iA3 = adapter.a()) == 0 || !viewPager2.f3073s) {
            return;
        }
        if (viewPager2.f3061e > 0) {
            accessibilityNodeInfoCompatWrap.addAction(8192);
        }
        if (viewPager2.f3061e < iA3 - 1) {
            accessibilityNodeInfoCompatWrap.addAction(4096);
        }
        accessibilityNodeInfoCompatWrap.setScrollable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int measuredWidth = this.f3065k.getMeasuredWidth();
        int measuredHeight = this.f3065k.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.b;
        rect.left = paddingLeft;
        rect.right = (i5 - i3) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i6 - i4) - getPaddingBottom();
        Rect rect2 = this.f3059c;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.f3065k.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.f) {
            d();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        measureChild(this.f3065k, i3, i4);
        int measuredWidth = this.f3065k.getMeasuredWidth();
        int measuredHeight = this.f3065k.getMeasuredHeight();
        int measuredState = this.f3065k.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i3, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i4, measuredState << 16));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof q)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        q qVar = (q) parcelable;
        super.onRestoreInstanceState(qVar.getSuperState());
        this.f3063i = qVar.f2330c;
        this.f3064j = qVar.f2331d;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        q qVar = new q(super.onSaveInstanceState());
        qVar.b = this.f3065k.getId();
        int i3 = this.f3063i;
        if (i3 == -1) {
            i3 = this.f3061e;
        }
        qVar.f2330c = i3;
        Parcelable parcelable = this.f3064j;
        if (parcelable != null) {
            qVar.f2331d = parcelable;
            return qVar;
        }
        Object adapter = this.f3065k.getAdapter();
        if (adapter instanceof androidx.viewpager2.adapter.f) {
            d dVar = (d) ((androidx.viewpager2.adapter.f) adapter);
            dVar.getClass();
            p041q.g gVar = dVar.f;
            int iG = gVar.g();
            p041q.g gVar2 = dVar.g;
            Bundle bundle = new Bundle(gVar2.g() + iG);
            for (int i4 = 0; i4 < gVar.g(); i4++) {
                long jD = gVar.d(i4);
                Fragment fragment = (Fragment) gVar.b(jD);
                if (fragment != null && fragment.isAdded()) {
                    dVar.f3052e.putFragment(bundle, "f#" + jD, fragment);
                }
            }
            for (int i5 = 0; i5 < gVar2.g(); i5++) {
                long jD2 = gVar2.d(i5);
                if (dVar.l(jD2)) {
                    bundle.putParcelable("s#" + jD2, (Parcelable) gVar2.b(jD2));
                }
            }
            qVar.f2331d = bundle;
        }
        return qVar;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i3, Bundle bundle) {
        this.f3075u.getClass();
        if (i3 != 8192 && i3 != 4096) {
            return super.performAccessibilityAction(i3, bundle);
        }
        m mVar = this.f3075u;
        ViewPager2 viewPager2 = mVar.f2327e;
        if (i3 != 8192 && i3 != 4096) {
            throw new IllegalStateException();
        }
        int currentItem = i3 == 8192 ? viewPager2.getCurrentItem() - 1 : viewPager2.getCurrentItem() + 1;
        ViewPager2 viewPager3 = mVar.f2327e;
        if (viewPager3.f3073s) {
            viewPager3.c(currentItem, true);
        }
        return true;
    }

    public void setAdapter(W w2) {
        W adapter = this.f3065k.getAdapter();
        m mVar = this.f3075u;
        if (adapter != null) {
            adapter.f1643a.unregisterObserver(mVar.f2326d);
        } else {
            mVar.getClass();
        }
        f fVar = this.g;
        if (adapter != null) {
            adapter.f1643a.unregisterObserver(fVar);
        }
        this.f3065k.setAdapter(w2);
        this.f3061e = 0;
        a();
        m mVar2 = this.f3075u;
        mVar2.e0();
        if (w2 != null) {
            w2.f1643a.registerObserver(mVar2.f2326d);
        }
        if (w2 != null) {
            w2.f1643a.registerObserver(fVar);
        }
    }

    public void setCurrentItem(int i3) {
        b(i3, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i3) {
        super.setLayoutDirection(i3);
        this.f3075u.e0();
    }

    public void setOffscreenPageLimit(int i3) {
        if (i3 < 1 && i3 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f3074t = i3;
        this.f3065k.requestLayout();
    }

    public void setOrientation(int i3) {
        this.f3062h.h1(i3);
        this.f3075u.e0();
    }

    public void setPageTransformer(n nVar) {
        if (nVar != null) {
            if (!this.f3072r) {
                this.f3071q = this.f3065k.getItemAnimator();
                this.f3072r = true;
            }
            this.f3065k.setItemAnimator(null);
        } else if (this.f3072r) {
            this.f3065k.setItemAnimator(this.f3071q);
            this.f3071q = null;
            this.f3072r = false;
        }
        this.f3070p.getClass();
        if (nVar == null) {
            return;
        }
        this.f3070p.getClass();
        this.f3070p.getClass();
    }

    public void setUserInputEnabled(boolean z2) {
        this.f3073s = z2;
        this.f3075u.e0();
    }
}
