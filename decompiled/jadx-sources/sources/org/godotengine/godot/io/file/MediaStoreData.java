package org.godotengine.godot.io.file;

import E.b;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.unsigned.a;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 \u00172\u00020\u0001:\u0002\u0016\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lorg/godotengine/godot/io/file/MediaStoreData;", "Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;", "context", "Landroid/content/Context;", "filePath", "", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V", "id", "", "uri", "Landroid/net/Uri;", "fileChannel", "Ljava/nio/channels/FileChannel;", "getFileChannel$lib_templateRelease", "()Ljava/nio/channels/FileChannel;", "parcelFileDescriptor", "Landroid/os/ParcelFileDescriptor;", "close", "", "DataItem", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaStoreData extends DataAccess.FileChannelDataAccess {
    private static final String SELECTION_BY_ID = "_id = ? ";
    private static final String SELECTION_BY_PATH = "_display_name = ?  AND relative_path = ?";
    private final FileChannel fileChannel;
    private final String filePath;
    private final long id;
    private final ParcelFileDescriptor parcelFileDescriptor;
    private final Uri uri;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "MediaStoreData";
    private static final Uri COLLECTION = MediaStore.Files.getContentUri("external_primary");
    private static final String[] PROJECTION = {"_id", "_display_name", "relative_path", "_size", "date_modified", "media_type"};

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0002\u0010\u000fJ\u001b\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002¢\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0018\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002J\u001a\u0010 \u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0016\u0010!\u001a\u00020\"2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005J\u0016\u0010#\u001a\u00020\"2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005J\u0016\u0010$\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005J\u0016\u0010%\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005J\u001e\u0010&\u001a\u00020\"2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lorg/godotengine/godot/io/file/MediaStoreData$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "COLLECTION", "Landroid/net/Uri;", "PROJECTION", "", "[Ljava/lang/String;", "SELECTION_BY_PATH", "getSelectionByPathArguments", "path", "(Ljava/lang/String;)[Ljava/lang/String;", "SELECTION_BY_ID", "getSelectionByIdArgument", "id", "", "(J)[Ljava/lang/String;", "getMediaStoreDisplayName", "getMediaStoreRelativePath", "queryById", "", "Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;", "context", "Landroid/content/Context;", "queryByPath", "dataItemFromCursor", "query", "Landroid/database/Cursor;", "addFile", "delete", "", "fileExists", "fileLastModified", "fileSize", "rename", "from", "to", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DataItem addFile(Context context, String path) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", (Integer) 0);
            Companion companion = MediaStoreData.INSTANCE;
            contentValues.put("_display_name", companion.getMediaStoreDisplayName(path));
            contentValues.put("relative_path", companion.getMediaStoreRelativePath(path));
            if (context.getContentResolver().insert(MediaStoreData.COLLECTION, contentValues) == null) {
                return null;
            }
            List<DataItem> listQueryByPath = queryByPath(context, path);
            if (listQueryByPath.isEmpty()) {
                return null;
            }
            return listQueryByPath.get(0);
        }

        private final List<DataItem> dataItemFromCursor(Cursor query) {
            if (query == null) {
                return CollectionsKt.emptyList();
            }
            try {
                query.getCount();
                if (query.getCount() == 0) {
                    List<DataItem> listEmptyList = CollectionsKt.emptyList();
                    CloseableKt.closeFinally(query, null);
                    return listEmptyList;
                }
                int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
                int columnIndexOrThrow2 = query.getColumnIndexOrThrow("_display_name");
                int columnIndexOrThrow3 = query.getColumnIndexOrThrow("relative_path");
                int columnIndexOrThrow4 = query.getColumnIndexOrThrow("_size");
                int columnIndexOrThrow5 = query.getColumnIndexOrThrow("date_modified");
                int columnIndexOrThrow6 = query.getColumnIndexOrThrow("media_type");
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    long j2 = query.getLong(columnIndexOrThrow);
                    Uri uriWithAppendedId = ContentUris.withAppendedId(MediaStoreData.COLLECTION, j2);
                    Intrinsics.checkNotNullExpressionValue(uriWithAppendedId, "withAppendedId(...)");
                    String string = query.getString(columnIndexOrThrow2);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    String string2 = query.getString(columnIndexOrThrow3);
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    arrayList.add(new DataItem(j2, uriWithAppendedId, string, string2, query.getInt(columnIndexOrThrow4), query.getInt(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6)));
                }
                CloseableKt.closeFinally(query, null);
                return arrayList;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(query, th);
                    throw th2;
                }
            }
        }

        private final String getMediaStoreDisplayName(String path) {
            return new File(path).getName();
        }

        private final String getMediaStoreRelativePath(String path) {
            File file = new File(path);
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            String parent = file.getParent();
            String str = "";
            if (parent != null) {
                String absolutePath = externalStorageDirectory.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(parent, absolutePath, "", false, 4, (Object) null);
                if (strReplace$default != null) {
                    str = strReplace$default;
                }
            }
            String strTrim = StringsKt.trim(str, '/');
            return !StringsKt.isBlank(strTrim) ? a.g(strTrim, "/") : strTrim;
        }

        private final String[] getSelectionByIdArgument(long id) {
            return new String[]{String.valueOf(id)};
        }

        private final String[] getSelectionByPathArguments(String path) {
            return new String[]{getMediaStoreDisplayName(path), getMediaStoreRelativePath(path)};
        }

        private final List<DataItem> queryById(Context context, long id) {
            return dataItemFromCursor(context.getContentResolver().query(MediaStoreData.COLLECTION, MediaStoreData.PROJECTION, MediaStoreData.SELECTION_BY_ID, getSelectionByIdArgument(id), null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<DataItem> queryByPath(Context context, String path) {
            return dataItemFromCursor(context.getContentResolver().query(MediaStoreData.COLLECTION, MediaStoreData.PROJECTION, MediaStoreData.SELECTION_BY_PATH, getSelectionByPathArguments(path), null));
        }

        public final boolean delete(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            List<DataItem> listQueryByPath = queryByPath(context, path);
            if (listQueryByPath.isEmpty()) {
                return false;
            }
            ContentResolver contentResolver = context.getContentResolver();
            Iterator<DataItem> it = listQueryByPath.iterator();
            int iDelete = 0;
            while (it.hasNext()) {
                iDelete += contentResolver.delete(it.next().getUri(), null, null);
            }
            return iDelete > 0;
        }

        public final boolean fileExists(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            return !queryByPath(context, path).isEmpty();
        }

        public final long fileLastModified(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            List<DataItem> listQueryByPath = queryByPath(context, path);
            if (listQueryByPath.isEmpty()) {
                return 0L;
            }
            return ((long) listQueryByPath.get(0).getDateModified()) / 1000;
        }

        public final long fileSize(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            List<DataItem> listQueryByPath = queryByPath(context, path);
            if (listQueryByPath.isEmpty()) {
                return -1L;
            }
            return listQueryByPath.get(0).getSize();
        }

        public final boolean rename(Context context, String from, String to) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            List<DataItem> listQueryByPath = queryByPath(context, from);
            if (listQueryByPath.isEmpty()) {
                return false;
            }
            DataItem dataItem = listQueryByPath.get(0);
            ContentValues contentValues = new ContentValues();
            Companion companion = MediaStoreData.INSTANCE;
            contentValues.put("_display_name", companion.getMediaStoreDisplayName(to));
            contentValues.put("relative_path", companion.getMediaStoreRelativePath(to));
            return context.getContentResolver().update(dataItem.getUri(), contentValues, MediaStoreData.SELECTION_BY_ID, getSelectionByIdArgument(dataItem.getId())) > 0;
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J\t\u0010\u001f\u001a\u00020\nHÆ\u0003J\t\u0010 \u001a\u00020\nHÆ\u0003JO\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\nHÖ\u0001J\t\u0010&\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017¨\u0006'"}, d2 = {"Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;", "", "id", "", "uri", "Landroid/net/Uri;", "displayName", "", "relativePath", "size", "", "dateModified", "mediaType", "<init>", "(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V", "getId", "()J", "getUri", "()Landroid/net/Uri;", "getDisplayName", "()Ljava/lang/String;", "getRelativePath", "getSize", "()I", "getDateModified", "getMediaType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class DataItem {
        private final int dateModified;
        private final String displayName;
        private final long id;
        private final int mediaType;
        private final String relativePath;
        private final int size;
        private final Uri uri;

        public DataItem(long j2, Uri uri, String displayName, String relativePath, int i3, int i4, int i5) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            this.id = j2;
            this.uri = uri;
            this.displayName = displayName;
            this.relativePath = relativePath;
            this.size = i3;
            this.dateModified = i4;
            this.mediaType = i5;
        }

        public static /* synthetic */ DataItem copy$default(DataItem dataItem, long j2, Uri uri, String str, String str2, int i3, int i4, int i5, int i6, Object obj) {
            if ((i6 & 1) != 0) {
                j2 = dataItem.id;
            }
            long j3 = j2;
            if ((i6 & 2) != 0) {
                uri = dataItem.uri;
            }
            Uri uri2 = uri;
            if ((i6 & 4) != 0) {
                str = dataItem.displayName;
            }
            String str3 = str;
            if ((i6 & 8) != 0) {
                str2 = dataItem.relativePath;
            }
            String str4 = str2;
            if ((i6 & 16) != 0) {
                i3 = dataItem.size;
            }
            return dataItem.copy(j3, uri2, str3, str4, i3, (i6 & 32) != 0 ? dataItem.dateModified : i4, (i6 & 64) != 0 ? dataItem.mediaType : i5);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final long getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Uri getUri() {
            return this.uri;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getDisplayName() {
            return this.displayName;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getRelativePath() {
            return this.relativePath;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getDateModified() {
            return this.dateModified;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final int getMediaType() {
            return this.mediaType;
        }

        public final DataItem copy(long id, Uri uri, String displayName, String relativePath, int size, int dateModified, int mediaType) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            return new DataItem(id, uri, displayName, relativePath, size, dateModified, mediaType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DataItem)) {
                return false;
            }
            DataItem dataItem = (DataItem) other;
            return this.id == dataItem.id && Intrinsics.areEqual(this.uri, dataItem.uri) && Intrinsics.areEqual(this.displayName, dataItem.displayName) && Intrinsics.areEqual(this.relativePath, dataItem.relativePath) && this.size == dataItem.size && this.dateModified == dataItem.dateModified && this.mediaType == dataItem.mediaType;
        }

        public final int getDateModified() {
            return this.dateModified;
        }

        public final String getDisplayName() {
            return this.displayName;
        }

        public final long getId() {
            return this.id;
        }

        public final int getMediaType() {
            return this.mediaType;
        }

        public final String getRelativePath() {
            return this.relativePath;
        }

        public final int getSize() {
            return this.size;
        }

        public final Uri getUri() {
            return this.uri;
        }

        public int hashCode() {
            return Integer.hashCode(this.mediaType) + b.a(this.dateModified, b.a(this.size, b.d(this.relativePath, b.d(this.displayName, (this.uri.hashCode() + (Long.hashCode(this.id) * 31)) * 31, 31), 31), 31), 31);
        }

        public String toString() {
            long j2 = this.id;
            Uri uri = this.uri;
            String str = this.displayName;
            String str2 = this.relativePath;
            int i3 = this.size;
            int i4 = this.dateModified;
            int i5 = this.mediaType;
            StringBuilder sb = new StringBuilder("DataItem(id=");
            sb.append(j2);
            sb.append(", uri=");
            sb.append(uri);
            a.n(sb, ", displayName=", str, ", relativePath=", str2);
            sb.append(", size=");
            sb.append(i3);
            sb.append(", dateModified=");
            sb.append(i4);
            sb.append(", mediaType=");
            sb.append(i5);
            sb.append(")");
            return sb.toString();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FileAccessFlags.values().length];
            try {
                iArr[FileAccessFlags.READ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FileAccessFlags.WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FileAccessFlags.READ_WRITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FileAccessFlags.WRITE_READ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaStoreData(Context context, String filePath, FileAccessFlags accessFlag) throws IOException {
        DataItem dataItemAddFile;
        super(filePath);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
        this.filePath = filePath;
        ContentResolver contentResolver = context.getContentResolver();
        Companion companion = INSTANCE;
        List listQueryByPath = companion.queryByPath(context, filePath);
        int i3 = WhenMappings.$EnumSwitchMapping$0[accessFlag.ordinal()];
        if (i3 != 1) {
            if (i3 != 2 && i3 != 3 && i3 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            dataItemAddFile = listQueryByPath.isEmpty() ? companion.addFile(context, filePath) : (DataItem) listQueryByPath.get(0);
            if (dataItemAddFile == null) {
                throw new FileNotFoundException(a.o("Unable to access file ", filePath));
            }
        } else {
            if (listQueryByPath.isEmpty()) {
                throw new FileNotFoundException(a.o("Unable to access file ", filePath));
            }
            dataItemAddFile = (DataItem) listQueryByPath.get(0);
        }
        this.id = dataItemAddFile.getId();
        Uri uri = dataItemAddFile.getUri();
        this.uri = uri;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, accessFlag.getMode());
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            throw new IllegalStateException("Unable to access file descriptor");
        }
        this.parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
        FileChannel channel = accessFlag == FileAccessFlags.READ ? new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).getChannel() : new FileOutputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).getChannel();
        Intrinsics.checkNotNull(channel);
        this.fileChannel = channel;
        if (accessFlag.shouldTruncate()) {
            getFileChannel().truncate(0L);
        }
    }

    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    @Override // org.godotengine.godot.io.file.DataAccess.FileChannelDataAccess, org.godotengine.godot.io.file.DataAccess
    public void close() {
        String str;
        String str2;
        StringBuilder sb;
        try {
            try {
                getFileChannel().close();
                try {
                    this.parcelFileDescriptor.close();
                } catch (IOException e2) {
                    e = e2;
                    str = TAG;
                    str2 = this.filePath;
                    sb = new StringBuilder("Exception when closing ParcelFileDescriptor for ");
                    sb.append(str2);
                    sb.append(".");
                    Log.w(str, sb.toString(), e);
                }
            } catch (IOException e3) {
                Log.w(TAG, "Exception when closing file " + this.filePath + ".", e3);
                try {
                    this.parcelFileDescriptor.close();
                } catch (IOException e4) {
                    e = e4;
                    str = TAG;
                    str2 = this.filePath;
                    sb = new StringBuilder("Exception when closing ParcelFileDescriptor for ");
                    sb.append(str2);
                    sb.append(".");
                    Log.w(str, sb.toString(), e);
                }
            }
        } catch (Throwable th) {
            try {
                this.parcelFileDescriptor.close();
            } catch (IOException e5) {
                Log.w(TAG, "Exception when closing ParcelFileDescriptor for " + this.filePath + ".", e5);
            }
            throw th;
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess.FileChannelDataAccess
    /* JADX INFO: renamed from: getFileChannel$lib_templateRelease, reason: from getter */
    public FileChannel getFileChannel() {
        return this.fileChannel;
    }
}
