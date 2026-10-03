package org.godotengine.godot.io;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.godotengine.godot.GodotLib;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/godotengine/godot/io/FilePicker;", "", "<init>", "()V", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FilePicker {
    private static final int FILE_MODE_OPEN_ANY = 3;
    private static final int FILE_MODE_OPEN_DIR = 2;
    private static final int FILE_MODE_OPEN_FILE = 0;
    private static final int FILE_MODE_OPEN_FILES = 1;
    private static final int FILE_MODE_SAVE_FILE = 4;
    private static final int FILE_PICKER_REQUEST = 1000;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "FilePicker";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015JC\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00052\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00070\u001d¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002J\u001a\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u0007H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lorg/godotengine/godot/io/FilePicker$Companion;", "", "<init>", "()V", "FILE_PICKER_REQUEST", "", "TAG", "", "kotlin.jvm.PlatformType", "FILE_MODE_OPEN_FILE", "FILE_MODE_OPEN_FILES", "FILE_MODE_OPEN_DIR", "FILE_MODE_OPEN_ANY", "FILE_MODE_SAVE_FILE", "handleActivityResult", "", "context", "Landroid/content/Context;", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "showFilePicker", "activity", "Landroid/app/Activity;", "currentDirectory", "filename", "fileMode", "filters", "", "(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V", "resolveMimeType", "ext", "getUriFromDirectoryPath", "Landroid/net/Uri;", "directoryPath", "directoryExists", "", "path", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFilePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePicker.kt\norg/godotengine/godot/io/FilePicker$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,218:1\n37#2:219\n36#2,3:220\n37#2:229\n36#2,3:230\n11228#3:223\n11563#3,3:224\n295#4,2:227\n29#5:233\n*S KotlinDebug\n*F\n+ 1 FilePicker.kt\norg/godotengine/godot/io/FilePicker$Companion\n*L\n98#1:219\n98#1:220,3\n139#1:229\n139#1:230,3\n136#1:223\n136#1:224,3\n137#1:227,2\n187#1:233\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean directoryExists(String path) {
            try {
                File file = new File(path);
                return file.isDirectory() && file.exists();
            } catch (SecurityException e2) {
                Log.d(FilePicker.TAG, "Failed to check directoryExists: " + path, e2);
                return false;
            }
        }

        private final Uri getUriFromDirectoryPath(Context context, String directoryPath) {
            if (StringsKt.N(directoryPath, StorageScope.Identifier.CONTENT_PREFIX)) {
                Uri uri = Uri.parse(directoryPath);
                Intrinsics.checkExpressionValueIsNotNull(uri, "Uri.parse(this)");
                return uri;
            }
            if (!directoryExists(directoryPath)) {
                return null;
            }
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            Intrinsics.checkNotNull(absolutePath);
            if (!StringsKt.N(directoryPath, absolutePath)) {
                return null;
            }
            String strTrim = StringsKt.trim(StringsKt__StringsJVMKt.replaceFirst$default(directoryPath, absolutePath, "", false, 4, (Object) null), '/');
            return new Uri.Builder().scheme("content").authority("com.android.externalstorage.documents").appendPath("document").appendPath("primary:" + strTrim).build();
        }

        private final String resolveMimeType(String ext) {
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            if (StringsKt__StringsKt.contains$default((CharSequence) ext, (CharSequence) ".", false, 2, (Object) null)) {
                ext = ext.substring(StringsKt__StringsKt.indexOf$default(ext, ".", 0, false, 6, (Object) null) + 1);
                Intrinsics.checkNotNullExpressionValue(ext, "substring(...)");
            }
            if (singleton.hasMimeType(ext)) {
                return ext;
            }
            String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(ext);
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
            if (!StringsKt__StringsKt.contains$default((CharSequence) ext, (CharSequence) "/*", false, 2, (Object) null)) {
                return "application/octet-stream";
            }
            String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(ext, "/*", (String) null, 2, (Object) null);
            int iHashCode = strSubstringBefore$default.hashCode();
            if (iHashCode == 93166550) {
                return !strSubstringBefore$default.equals("audio") ? "application/octet-stream" : "audio/*";
            }
            if (iHashCode != 100313435) {
                return (iHashCode == 112202875 && strSubstringBefore$default.equals("video")) ? "video/*" : "application/octet-stream";
            }
            return !strSubstringBefore$default.equals("image") ? "application/octet-stream" : "image/*";
        }

        public final void handleActivityResult(Context context, int requestCode, int resultCode, Intent data) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (requestCode == 1000) {
                if (resultCode == 0) {
                    Log.d(FilePicker.TAG, "File picker canceled");
                    GodotLib.filePickerCallback(false, new String[0]);
                    return;
                }
                if (resultCode == -1) {
                    ArrayList arrayList = new ArrayList();
                    ClipData clipData = data != null ? data.getClipData() : null;
                    if (clipData != null) {
                        int itemCount = clipData.getItemCount();
                        for (int i3 = 0; i3 < itemCount; i3++) {
                            Uri uri = clipData.getItemAt(i3).getUri();
                            if (uri != null) {
                                String string = uri.toString();
                                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                                arrayList.add(string);
                            }
                        }
                    } else {
                        Uri data2 = data != null ? data.getData() : null;
                        if (data2 != null) {
                            String string2 = data2.toString();
                            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                            arrayList.add(string2);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        GodotLib.filePickerCallback(false, new String[0]);
                    } else {
                        GodotLib.filePickerCallback(true, (String[]) arrayList.toArray(new String[0]));
                    }
                }
            }
        }

        public final void showFilePicker(Context context, Activity activity, String currentDirectory, String filename, int fileMode, String[] filters) {
            Object next;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(currentDirectory, "currentDirectory");
            Intrinsics.checkNotNullParameter(filename, "filename");
            Intrinsics.checkNotNullParameter(filters, "filters");
            Intent intent = fileMode != 2 ? fileMode != 4 ? new Intent("android.intent.action.OPEN_DOCUMENT") : new Intent("android.intent.action.CREATE_DOCUMENT") : new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            Uri uriFromDirectoryPath = getUriFromDirectoryPath(context, currentDirectory);
            if (Build.VERSION.SDK_INT < 26 || uriFromDirectoryPath == null) {
                Log.d(FilePicker.TAG, "Error cannot set initial directory");
            } else {
                Intrinsics.checkNotNull(intent.putExtra("android.provider.extra.INITIAL_URI", uriFromDirectoryPath));
            }
            if (fileMode == 1) {
                intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            } else if (fileMode == 4) {
                intent.putExtra("android.intent.extra.TITLE", filename);
            }
            if (fileMode != 2) {
                ArrayList arrayList = new ArrayList(filters.length);
                for (String str : filters) {
                    arrayList.add(FilePicker.INSTANCE.resolveMimeType(str));
                }
                List listDistinct = CollectionsKt.distinct(arrayList);
                Iterator it = listDistinct.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (Intrinsics.areEqual((String) next, "application/octet-stream"));
                String str2 = (String) next;
                if (str2 == null) {
                    str2 = "*/*";
                }
                intent.setType(str2);
                if (listDistinct.size() > 1) {
                    intent.putExtra("android.intent.extra.MIME_TYPES", (String[]) listDistinct.toArray(new String[0]));
                }
                intent.addCategory("android.intent.category.OPENABLE");
            }
            intent.putExtra("android.intent.extra.LOCAL_ONLY", true);
            if (activity != null) {
                activity.startActivityForResult(intent, 1000);
            }
        }

        private Companion() {
        }
    }
}
