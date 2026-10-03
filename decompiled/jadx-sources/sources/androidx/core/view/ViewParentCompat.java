package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewParentCompat {
    private static final String TAG = "ViewParentCompat";
    private static int[] sTempNestedScrollConsumed;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f3, boolean z2) {
            return viewParent.onNestedFling(view, f, f3, z2);
        }

        public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f3) {
            return viewParent.onNestedPreFling(view, f, f3);
        }

        public static void onNestedPreScroll(ViewParent viewParent, View view, int i3, int i4, int[] iArr) {
            viewParent.onNestedPreScroll(view, i3, i4, iArr);
        }

        public static void onNestedScroll(ViewParent viewParent, View view, int i3, int i4, int i5, int i6) {
            viewParent.onNestedScroll(view, i3, i4, i5, i6);
        }

        public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i3) {
            viewParent.onNestedScrollAccepted(view, view2, i3);
        }

        public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i3) {
            return viewParent.onStartNestedScroll(view, view2, i3);
        }

        public static void onStopNestedScroll(ViewParent viewParent, View view) {
            viewParent.onStopNestedScroll(view);
        }
    }

    private ViewParentCompat() {
    }

    private static int[] getTempNestedScrollConsumed() {
        int[] iArr = sTempNestedScrollConsumed;
        if (iArr == null) {
            sTempNestedScrollConsumed = new int[2];
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        return sTempNestedScrollConsumed;
    }

    @Deprecated
    public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i3) {
        viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i3);
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f3, boolean z2) {
        try {
            return Api21Impl.onNestedFling(viewParent, view, f, f3, z2);
        } catch (AbstractMethodError e2) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedFling", e2);
            return false;
        }
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f3) {
        try {
            return Api21Impl.onNestedPreFling(viewParent, view, f, f3);
        } catch (AbstractMethodError e2) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e2);
            return false;
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i3, int i4, int[] iArr) {
        onNestedPreScroll(viewParent, view, i3, i4, iArr, 0);
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i3, int i4, int i5, int i6) {
        onNestedScroll(viewParent, view, i3, i4, i5, i6, 0, getTempNestedScrollConsumed());
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i3) {
        onNestedScrollAccepted(viewParent, view, view2, i3, 0);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i3) {
        return onStartNestedScroll(viewParent, view, view2, i3, 0);
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i3, int i4, int[] iArr, int i5) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i3, i4, iArr, i5);
            return;
        }
        if (i5 == 0) {
            try {
                Api21Impl.onNestedPreScroll(viewParent, view, i3, i4, iArr);
            } catch (AbstractMethodError e2) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e2);
            }
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i3, int i4) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i3, i4);
            return;
        }
        if (i4 == 0) {
            try {
                Api21Impl.onNestedScrollAccepted(viewParent, view, view2, i3);
            } catch (AbstractMethodError e2) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e2);
            }
        }
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i3, int i4) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i3, i4);
        }
        if (i4 != 0) {
            return false;
        }
        try {
            return Api21Impl.onStartNestedScroll(viewParent, view, view2, i3);
        } catch (AbstractMethodError e2) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e2);
            return false;
        }
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view, int i3) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i3);
            return;
        }
        if (i3 == 0) {
            try {
                Api21Impl.onStopNestedScroll(viewParent, view);
            } catch (AbstractMethodError e2) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e2);
            }
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i3, int i4, int i5, int i6, int i7) {
        onNestedScroll(viewParent, view, i3, i4, i5, i6, i7, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, i3, i4, i5, i6, i7, iArr);
            return;
        }
        iArr[0] = iArr[0] + i5;
        iArr[1] = iArr[1] + i6;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i3, i4, i5, i6, i7);
            return;
        }
        if (i7 == 0) {
            try {
                Api21Impl.onNestedScroll(viewParent, view, i3, i4, i5, i6);
            } catch (AbstractMethodError e2) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e2);
            }
        }
    }
}
