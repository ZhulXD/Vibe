package E;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static void a(Cursor cursor) {
        if (cursor != null) {
            try {
                b.v(cursor);
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static String b(Context context, Uri uri, String str) {
        Cursor cursorQuery;
        Throwable th;
        Exception exc;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        a(cursorQuery);
                        return null;
                    }
                    String string = cursorQuery.getString(0);
                    a(cursorQuery);
                    return string;
                } catch (Exception e2) {
                    exc = e2;
                    Log.w("DocumentFile", "Failed query: " + exc);
                    a(cursorQuery);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            exc = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            cursorQuery = null;
            th = th3;
        }
        th = th2;
        a(cursorQuery);
        throw th;
    }
}
