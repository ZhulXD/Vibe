package androidx.core.view;

import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class VelocityTrackerCompat {
    private static Map<VelocityTracker, VelocityTrackerFallback> sFallbackTrackers = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static float getAxisVelocity(VelocityTracker velocityTracker, int i3, int i4) {
            return velocityTracker.getAxisVelocity(i3, i4);
        }

        public static boolean isAxisSupported(VelocityTracker velocityTracker, int i3) {
            return velocityTracker.isAxisSupported(i3);
        }

        public static float getAxisVelocity(VelocityTracker velocityTracker, int i3) {
            return velocityTracker.getAxisVelocity(i3);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface VelocityTrackableMotionEventAxis {
    }

    private VelocityTrackerCompat() {
    }

    public static void addMovement(VelocityTracker velocityTracker, MotionEvent motionEvent) {
        velocityTracker.addMovement(motionEvent);
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            if (!sFallbackTrackers.containsKey(velocityTracker)) {
                sFallbackTrackers.put(velocityTracker, new VelocityTrackerFallback());
            }
            sFallbackTrackers.get(velocityTracker).addMovement(motionEvent);
        }
    }

    public static void clear(VelocityTracker velocityTracker) {
        velocityTracker.clear();
        removeFallbackForTracker(velocityTracker);
    }

    public static void computeCurrentVelocity(VelocityTracker velocityTracker, int i3, float f) {
        velocityTracker.computeCurrentVelocity(i3, f);
        VelocityTrackerFallback fallbackTrackerOrNull = getFallbackTrackerOrNull(velocityTracker);
        if (fallbackTrackerOrNull != null) {
            fallbackTrackerOrNull.computeCurrentVelocity(i3, f);
        }
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i3) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getAxisVelocity(velocityTracker, i3);
        }
        if (i3 == 0) {
            return velocityTracker.getXVelocity();
        }
        if (i3 == 1) {
            return velocityTracker.getYVelocity();
        }
        VelocityTrackerFallback fallbackTrackerOrNull = getFallbackTrackerOrNull(velocityTracker);
        if (fallbackTrackerOrNull != null) {
            return fallbackTrackerOrNull.getAxisVelocity(i3);
        }
        return 0.0f;
    }

    private static VelocityTrackerFallback getFallbackTrackerOrNull(VelocityTracker velocityTracker) {
        return sFallbackTrackers.get(velocityTracker);
    }

    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int i3) {
        return velocityTracker.getXVelocity(i3);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int i3) {
        return velocityTracker.getYVelocity(i3);
    }

    public static boolean isAxisSupported(VelocityTracker velocityTracker, int i3) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.isAxisSupported(velocityTracker, i3);
        }
        return i3 == 26 || i3 == 0 || i3 == 1;
    }

    public static void recycle(VelocityTracker velocityTracker) {
        velocityTracker.recycle();
        removeFallbackForTracker(velocityTracker);
    }

    private static void removeFallbackForTracker(VelocityTracker velocityTracker) {
        sFallbackTrackers.remove(velocityTracker);
    }

    public static void computeCurrentVelocity(VelocityTracker velocityTracker, int i3) {
        computeCurrentVelocity(velocityTracker, i3, Float.MAX_VALUE);
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getAxisVelocity(velocityTracker, i3, i4);
        }
        if (i3 == 0) {
            return velocityTracker.getXVelocity(i4);
        }
        if (i3 == 1) {
            return velocityTracker.getYVelocity(i4);
        }
        return 0.0f;
    }
}
