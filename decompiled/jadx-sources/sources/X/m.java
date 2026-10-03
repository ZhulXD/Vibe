package X;

import android.R;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends com.bumptech.glide.d {
    public final k b = new k(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f2325c = new l(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f f2326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f2327e;

    public m(ViewPager2 viewPager2) {
        this.f2327e = viewPager2;
    }

    public final void e0() {
        int iA;
        ViewPager2 viewPager2 = this.f2327e;
        int i3 = R.id.accessibilityActionPageLeft;
        ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageLeft);
        ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageRight);
        ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageUp);
        ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageDown);
        if (viewPager2.getAdapter() == null || (iA = viewPager2.getAdapter().a()) == 0 || !viewPager2.f3073s) {
            return;
        }
        int orientation = viewPager2.getOrientation();
        l lVar = this.f2325c;
        k kVar = this.b;
        if (orientation != 0) {
            if (viewPager2.f3061e < iA - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, null), null, kVar);
            }
            if (viewPager2.f3061e > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, null), null, lVar);
                return;
            }
            return;
        }
        boolean z2 = ViewCompat.getLayoutDirection(viewPager2.f3062h.b) == 1;
        int i4 = z2 ? 16908360 : 16908361;
        if (z2) {
            i3 = 16908361;
        }
        if (viewPager2.f3061e < iA - 1) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i4, null), null, kVar);
        }
        if (viewPager2.f3061e > 0) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i3, null), null, lVar);
        }
    }
}
