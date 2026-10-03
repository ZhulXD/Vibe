package androidx.core.view;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface NestedScrollingChild2 extends NestedScrollingChild {
    boolean dispatchNestedPreScroll(int i3, int i4, int[] iArr, int[] iArr2, int i5);

    boolean dispatchNestedScroll(int i3, int i4, int i5, int i6, int[] iArr, int i7);

    boolean hasNestedScrollingParent(int i3);

    boolean startNestedScroll(int i3, int i4);

    void stopNestedScroll(int i3);
}
