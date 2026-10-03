package p029l;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.c;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5031c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ExecutorService f5032d = Executors.newFixedThreadPool(4, new b());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Handler f5033e;

    public static Handler b0(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return c.a(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }
}
