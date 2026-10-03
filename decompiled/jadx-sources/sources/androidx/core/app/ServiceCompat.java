package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceCompat {
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_Q = 255;
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U = 1073745919;
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api24Impl {
        private Api24Impl() {
        }

        public static void stopForeground(Service service, int i3) {
            service.stopForeground(i3);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static void startForeground(Service service, int i3, Notification notification, int i4) {
            if (i4 == 0 || i4 == -1) {
                service.startForeground(i3, notification, i4);
            } else {
                service.startForeground(i3, notification, i4 & 255);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static void startForeground(Service service, int i3, Notification notification, int i4) {
            if (i4 == 0 || i4 == -1) {
                service.startForeground(i3, notification, i4);
            } else {
                service.startForeground(i3, notification, i4 & ServiceCompat.FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface StopForegroundFlags {
    }

    private ServiceCompat() {
    }

    public static void startForeground(Service service, int i3, Notification notification, int i4) {
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 34) {
            Api34Impl.startForeground(service, i3, notification, i4);
        } else if (i5 >= 29) {
            Api29Impl.startForeground(service, i3, notification, i4);
        } else {
            service.startForeground(i3, notification);
        }
    }

    public static void stopForeground(Service service, int i3) {
        Api24Impl.stopForeground(service, i3);
    }
}
