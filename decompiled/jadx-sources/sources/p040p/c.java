package p040p;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f5219a = Math.cos(Math.toRadians(45.0d));

    public static float a(float f, float f3, boolean z2) {
        if (!z2) {
            return f;
        }
        return (float) (((1.0d - f5219a) * ((double) f3)) + ((double) f));
    }

    public static float b(float f, float f3, boolean z2) {
        if (!z2) {
            return f * 1.5f;
        }
        return (float) (((1.0d - f5219a) * ((double) f3)) + ((double) (f * 1.5f)));
    }
}
