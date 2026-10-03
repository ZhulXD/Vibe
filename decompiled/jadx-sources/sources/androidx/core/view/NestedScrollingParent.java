package androidx.core.view;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface NestedScrollingParent {
    int getNestedScrollAxes();

    boolean onNestedFling(View view, float f, float f3, boolean z2);

    boolean onNestedPreFling(View view, float f, float f3);

    void onNestedPreScroll(View view, int i3, int i4, int[] iArr);

    void onNestedScroll(View view, int i3, int i4, int i5, int i6);

    void onNestedScrollAccepted(View view, View view2, int i3);

    boolean onStartNestedScroll(View view, View view2, int i3);

    void onStopNestedScroll(View view);
}
