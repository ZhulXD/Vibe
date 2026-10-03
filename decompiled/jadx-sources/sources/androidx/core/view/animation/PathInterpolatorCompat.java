package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class PathInterpolatorCompat {

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static Interpolator createPathInterpolator(Path path) {
            return new PathInterpolator(path);
        }

        public static Interpolator createPathInterpolator(float f, float f3) {
            return new PathInterpolator(f, f3);
        }

        public static Interpolator createPathInterpolator(float f, float f3, float f4, float f5) {
            return new PathInterpolator(f, f3, f4, f5);
        }
    }

    private PathInterpolatorCompat() {
    }

    public static Interpolator create(Path path) {
        return Api21Impl.createPathInterpolator(path);
    }

    public static Interpolator create(float f, float f3) {
        return Api21Impl.createPathInterpolator(f, f3);
    }

    public static Interpolator create(float f, float f3, float f4, float f5) {
        return Api21Impl.createPathInterpolator(f, f3, f4, f5);
    }
}
