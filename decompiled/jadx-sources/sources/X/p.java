package X;

import android.content.Context;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends RecyclerView {

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f2329L0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(ViewPager2 viewPager2, Context context) {
        super(context, null);
        this.f2329L0 = viewPager2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        this.f2329L0.f3075u.getClass();
        return super.getAccessibilityClassName();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        ViewPager2 viewPager2 = this.f2329L0;
        accessibilityEvent.setFromIndex(viewPager2.f3061e);
        accessibilityEvent.setToIndex(viewPager2.f3061e);
        accessibilityEvent.setSource(viewPager2.f3075u.f2327e);
        accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f2329L0.f3073s && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f2329L0.f3073s && super.onTouchEvent(motionEvent);
    }
}
