package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class CursorWindowCompat {

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api28Impl {
        private Api28Impl() {
        }

        public static CursorWindow createCursorWindow(String str, long j2) {
            return new CursorWindow(str, j2);
        }
    }

    private CursorWindowCompat() {
    }

    public static CursorWindow create(String str, long j2) {
        return Build.VERSION.SDK_INT >= 28 ? Api28Impl.createCursorWindow(str, j2) : new CursorWindow(str);
    }
}
