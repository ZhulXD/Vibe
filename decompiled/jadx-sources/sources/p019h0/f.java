package p019h0;

import A1.C0009b;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f4366e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4367a;
    public final ActivityManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0009b f4368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f4369d;

    static {
        f4366e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
    }

    public f(Context context) {
        this.f4369d = f4366e;
        this.f4367a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.b = activityManager;
        this.f4368c = new C0009b(context.getResources().getDisplayMetrics());
        if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
            return;
        }
        this.f4369d = 0.0f;
    }
}
