package p011e;

import S0.c;
import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class v {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, B b) {
        Objects.requireNonNull(b);
        c cVar = new c(1, b);
        N1.v.h(obj).registerOnBackInvokedCallback(DurationKt.NANOS_IN_MILLIS, cVar);
        return cVar;
    }

    public static void c(Object obj, Object obj2) {
        N1.v.h(obj).unregisterOnBackInvokedCallback(N1.v.d(obj2));
    }
}
