package org.tvp.kirikiri2;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
abstract class MediaStoreUtil {
    public static void addFileToMediaStore(String str, Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        context.sendBroadcast(intent);
    }

    public static Uri getUriFromFile(String str, Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery = contentResolver.query(MediaStore.Files.getContentUri("external"), new String[]{"_id"}, "_data = ?", new String[]{str}, "date_added desc");
        cursorQuery.moveToFirst();
        if (cursorQuery.isAfterLast()) {
            cursorQuery.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", str);
            return contentResolver.insert(MediaStore.Files.getContentUri("external"), contentValues);
        }
        Uri uriBuild = MediaStore.Files.getContentUri("external").buildUpon().appendPath(Integer.toString(cursorQuery.getInt(cursorQuery.getColumnIndex("_id")))).build();
        cursorQuery.close();
        return uriBuild;
    }
}
