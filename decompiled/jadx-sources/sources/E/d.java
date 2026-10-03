package E;

import android.util.Log;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d extends a {
    public static boolean m(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zM = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zM &= m(file2);
                }
                if (!file2.delete()) {
                    Log.w("DocumentFile", "Failed to delete " + file2);
                    zM = false;
                }
            }
        }
        return zM;
    }
}
