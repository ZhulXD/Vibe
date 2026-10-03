package p033m0;

import android.os.Build;
import android.util.Log;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f5141e;
    public static final boolean f;
    public static final File g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile w f5142h;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5144c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f5145d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5143a = AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH;

    static {
        int i3 = Build.VERSION.SDK_INT;
        f5141e = i3 < 29;
        f = i3 >= 28;
        g = new File("/proc/self/fd");
    }

    public static w a() {
        if (f5142h == null) {
            synchronized (w.class) {
                try {
                    if (f5142h == null) {
                        f5142h = new w();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5142h;
    }

    public final int b() {
        if (Build.VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f5143a;
    }

    public final boolean c(int i3, int i4, boolean z2, boolean z3) {
        boolean z4;
        if (z2) {
            if (f) {
                if (!f5141e || this.f5145d.get()) {
                    if (z3) {
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
                            return false;
                        }
                    } else if (i3 >= 0 && i4 >= 0) {
                        synchronized (this) {
                            try {
                                int i5 = this.b + 1;
                                this.b = i5;
                                if (i5 >= 50) {
                                    this.b = 0;
                                    int length = g.list().length;
                                    long jB = b();
                                    boolean z5 = ((long) length) < jB;
                                    this.f5144c = z5;
                                    if (!z5 && Log.isLoggable("Downsampler", 5)) {
                                        Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + jB);
                                    }
                                }
                                z4 = this.f5144c;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z4) {
                            return true;
                        }
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
                            return false;
                        }
                    } else if (Log.isLoggable("HardwareConfig", 2)) {
                        Log.v("HardwareConfig", "Hardware config disallowed because of invalid dimensions");
                    }
                } else if (Log.isLoggable("HardwareConfig", 2)) {
                    Log.v("HardwareConfig", "Hardware config disallowed by app state");
                    return false;
                }
            } else if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by sdk");
                return false;
            }
        } else if (Log.isLoggable("HardwareConfig", 2)) {
            Log.v("HardwareConfig", "Hardware config disallowed by caller");
            return false;
        }
        return false;
    }
}
