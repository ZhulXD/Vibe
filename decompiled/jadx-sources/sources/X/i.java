package X;

import P.AbstractC0147g0;
import P.o0;
import P.u0;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends LinearLayoutManager {

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f2322E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(ViewPager2 viewPager2) {
        super(1);
        this.f2322E = viewPager2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void G0(u0 u0Var, int[] iArr) {
        ViewPager2 viewPager2 = this.f2322E;
        int offscreenPageLimit = viewPager2.getOffscreenPageLimit();
        if (offscreenPageLimit == -1) {
            super.G0(u0Var, iArr);
            return;
        }
        int pageSize = viewPager2.getPageSize() * offscreenPageLimit;
        iArr[0] = pageSize;
        iArr[1] = pageSize;
    }

    @Override // P.AbstractC0147g0
    public final void Y(o0 o0Var, u0 u0Var, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.Y(o0Var, u0Var, accessibilityNodeInfoCompat);
        this.f2322E.f3075u.getClass();
    }

    @Override // P.AbstractC0147g0
    public final void Z(o0 o0Var, u0 u0Var, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int iK;
        ViewPager2 viewPager2 = this.f2322E.f3075u.f2327e;
        int iK2 = 0;
        if (viewPager2.getOrientation() == 1) {
            viewPager2.f3062h.getClass();
            iK = AbstractC0147g0.K(view);
        } else {
            iK = 0;
        }
        if (viewPager2.getOrientation() == 0) {
            viewPager2.f3062h.getClass();
            iK2 = AbstractC0147g0.K(view);
        }
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(iK, 1, iK2, 1, false, false));
    }

    @Override // P.AbstractC0147g0
    public final boolean l0(o0 o0Var, u0 u0Var, int i3, Bundle bundle) {
        this.f2322E.f3075u.getClass();
        return super.l0(o0Var, u0Var, i3, bundle);
    }

    @Override // P.AbstractC0147g0
    public final boolean q0(RecyclerView recyclerView, View view, Rect rect, boolean z2, boolean z3) {
        return false;
    }
}
