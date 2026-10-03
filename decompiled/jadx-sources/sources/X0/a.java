package X0;

import android.graphics.Paint;
import android.graphics.Path;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f2332i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f2333j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f2334k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f2335l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f2336a;
    public final Paint b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f2337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2339e;
    public int f;
    public final Path g = new Path();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f2340h;

    public a() {
        Paint paint = new Paint();
        this.f2340h = paint;
        this.f2336a = new Paint();
        a(ViewCompat.MEASURED_STATE_MASK);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f2337c = new Paint(paint2);
    }

    public final void a(int i3) {
        this.f2338d = ColorUtils.setAlphaComponent(i3, 68);
        this.f2339e = ColorUtils.setAlphaComponent(i3, 20);
        this.f = ColorUtils.setAlphaComponent(i3, 0);
        this.f2336a.setColor(this.f2338d);
    }
}
