package c2;

import a2.AbstractC0210a;
import a2.x;
import java.util.concurrent.TimeUnit;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3189a;
    public static final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f3190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f3191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f3192e;
    public static final f f;
    public static final i g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i f3193h;

    static {
        String property;
        int i3 = x.f2600a;
        try {
            property = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            property = "DefaultDispatcher";
        }
        f3189a = property;
        b = AbstractC0210a.h(100000L, 1L, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.resolution.ns");
        f3190c = AbstractC0210a.i("kotlinx.coroutines.scheduler.core.pool.size", RangesKt.coerceAtLeast(x.f2600a, 2), 8);
        f3191d = AbstractC0210a.i("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 4);
        f3192e = TimeUnit.SECONDS.toNanos(AbstractC0210a.h(60L, 1L, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.keep.alive.sec"));
        f = f.f3185a;
        g = new i(0);
        f3193h = new i(1);
    }
}
