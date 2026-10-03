package androidx.core.graphics;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class PathUtils {

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api26Impl {
        private Api26Impl() {
        }

        public static float[] approximate(Path path, float f) {
            return path.approximate(f);
        }
    }

    private PathUtils() {
    }

    public static Collection<PathSegment> flatten(Path path) {
        return flatten(path, 0.5f);
    }

    public static Collection<PathSegment> flatten(Path path, float f) {
        float[] fArrApproximate = Api26Impl.approximate(path, f);
        int length = fArrApproximate.length / 3;
        ArrayList arrayList = new ArrayList(length);
        for (int i3 = 1; i3 < length; i3++) {
            int i4 = i3 * 3;
            int i5 = (i3 - 1) * 3;
            float f3 = fArrApproximate[i4];
            float f4 = fArrApproximate[i4 + 1];
            float f5 = fArrApproximate[i4 + 2];
            float f6 = fArrApproximate[i5];
            float f7 = fArrApproximate[i5 + 1];
            float f8 = fArrApproximate[i5 + 2];
            if (f3 != f6 && (f4 != f7 || f5 != f8)) {
                arrayList.add(new PathSegment(new PointF(f7, f8), f6, new PointF(f4, f5), f3));
            }
        }
        return arrayList;
    }
}
