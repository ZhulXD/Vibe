package org.godotengine.godot.io;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotLib;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lorg/godotengine/godot/io/StorageScope;", "", "<init>", "(Ljava/lang/String;I)V", "ASSETS", "APP", "SHARED", "SAF", "UNKNOWN", "Identifier", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum StorageScope {
    ASSETS,
    APP,
    SHARED,
    SAF,
    UNKNOWN;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lorg/godotengine/godot/io/StorageScope$Identifier;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "internalAppDir", "", "internalCacheDir", "externalAppDir", "obbDir", "sharedDir", "downloadsSharedDir", "documentsSharedDir", "canAccess", "", "path", "identifyStorageScope", "Lorg/godotengine/godot/io/StorageScope;", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Identifier {
        public static final String ACCESS_RESOURCES_PREFIX = "res://";
        public static final String ASSETS_PREFIX = "assets://";
        public static final String CONTENT_PREFIX = "content://";
        private final String documentsSharedDir;
        private final String downloadsSharedDir;
        private final String externalAppDir;
        private final String internalAppDir;
        private final String internalCacheDir;
        private final String obbDir;
        private final String sharedDir;

        public Identifier(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.internalAppDir = context.getFilesDir().getCanonicalPath();
            this.internalCacheDir = context.getCacheDir().getCanonicalPath();
            File externalFilesDir = context.getExternalFilesDir(null);
            this.externalAppDir = externalFilesDir != null ? externalFilesDir.getCanonicalPath() : null;
            File obbDir = context.getObbDir();
            this.obbDir = obbDir != null ? obbDir.getCanonicalPath() : null;
            this.sharedDir = Environment.getExternalStorageDirectory().getCanonicalPath();
            this.downloadsSharedDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getCanonicalPath();
            this.documentsSharedDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).getCanonicalPath();
        }

        public final boolean canAccess(String path) {
            StorageScope storageScopeIdentifyStorageScope = identifyStorageScope(path);
            return storageScopeIdentifyStorageScope == StorageScope.APP || storageScopeIdentifyStorageScope == StorageScope.SHARED;
        }

        public final StorageScope identifyStorageScope(String path) {
            String str;
            if (path == null) {
                return StorageScope.UNKNOWN;
            }
            if (StringsKt.N(path, ASSETS_PREFIX)) {
                return StorageScope.ASSETS;
            }
            if (Godot.INSTANCE.isTemplateBuild$lib_templateRelease() && StringsKt.N(path, ACCESS_RESOURCES_PREFIX)) {
                return StorageScope.ASSETS;
            }
            if (StringsKt.N(path, CONTENT_PREFIX)) {
                return StorageScope.SAF;
            }
            File file = new File(path);
            if (!file.isAbsolute()) {
                file = new File(GodotLib.getProjectResourceDir(), path);
                if (!file.isAbsolute()) {
                    return StorageScope.UNKNOWN;
                }
            }
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 30 && Environment.isExternalStorageManager()) {
                return StorageScope.APP;
            }
            String canonicalPath = file.getCanonicalPath();
            if (this.internalAppDir != null) {
                Intrinsics.checkNotNull(canonicalPath);
                if (StringsKt.N(canonicalPath, this.internalAppDir)) {
                    return StorageScope.APP;
                }
            }
            if (this.internalCacheDir != null) {
                Intrinsics.checkNotNull(canonicalPath);
                if (StringsKt.N(canonicalPath, this.internalCacheDir)) {
                    return StorageScope.APP;
                }
            }
            if (this.externalAppDir != null) {
                Intrinsics.checkNotNull(canonicalPath);
                if (StringsKt.N(canonicalPath, this.externalAppDir)) {
                    return StorageScope.APP;
                }
            }
            String str2 = System.getenv("ANDROID_ROOT");
            if (str2 != null) {
                Intrinsics.checkNotNull(canonicalPath);
                if (StringsKt.N(canonicalPath, str2)) {
                    return StorageScope.APP;
                }
            }
            if (this.obbDir != null) {
                Intrinsics.checkNotNull(canonicalPath);
                if (StringsKt.N(canonicalPath, this.obbDir)) {
                    return StorageScope.APP;
                }
            }
            if (this.sharedDir != null) {
                Intrinsics.checkNotNull(canonicalPath);
                if (StringsKt.N(canonicalPath, this.sharedDir)) {
                    if (i3 < 30) {
                        return StorageScope.APP;
                    }
                    String str3 = this.downloadsSharedDir;
                    return ((str3 == null || !StringsKt.N(canonicalPath, str3)) && ((str = this.documentsSharedDir) == null || !StringsKt.N(canonicalPath, str))) ? StorageScope.SHARED : StorageScope.APP;
                }
            }
            return StorageScope.UNKNOWN;
        }
    }

    public static EnumEntries<StorageScope> getEntries() {
        return $ENTRIES;
    }
}
