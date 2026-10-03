package Y0;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2419a;

    public j(float f) {
        this.f2419a = f;
    }

    @Override // Y0.c
    public final float a(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f2419a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && this.f2419a == ((j) obj).f2419a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f2419a)});
    }
}
