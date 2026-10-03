package androidx.core.view;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface NestedScrollingParent2 extends NestedScrollingParent {
    void onNestedPreScroll(View view, int i3, int i4, int[] iArr, int i5);

    void onNestedScroll(View view, int i3, int i4, int i5, int i6, int i7);

    void onNestedScrollAccepted(View view, View view2, int i3, int i4);

    boolean onStartNestedScroll(View view, View view2, int i3, int i4);

    void onStopNestedScroll(View view, int i3);
}
