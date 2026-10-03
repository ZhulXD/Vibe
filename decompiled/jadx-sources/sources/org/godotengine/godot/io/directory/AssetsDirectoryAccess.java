package org.godotengine.godot.io.directory;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.unsigned.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.godotengine.godot.io.StorageScope;
import org.godotengine.godot.io.file.AssetData;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\b\b\u0000\u0018\u0000 '2\u00020\u0001:\u0002'(B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\b\u0010\u001b\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0013H\u0016J\b\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013H\u0016J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "assetManager", "Landroid/content/res/AssetManager;", "kotlin.jvm.PlatformType", "lastDirId", "", "dirs", "Landroid/util/SparseArray;", "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;", "hasDirId", "", "dirId", "dirOpen", "path", "", "dirExists", "fileExists", "dirIsDir", "isCurrentHidden", "dirNext", "dirClose", "", "getDriveCount", "getDrive", "drive", "makeDir", "dir", "getSpaceLeft", "", "rename", "from", "to", "remove", "filename", "Companion", "AssetDir", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AssetsDirectoryAccess implements DirectoryAccessHandler.DirectoryAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "AssetsDirectoryAccess";
    private final AssetManager assetManager;
    private final Context context;
    private final SparseArray<AssetDir> dirs;
    private int lastDirId;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J2\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;", "", "path", "", "files", "", "current", "", "<init>", "(Ljava/lang/String;[Ljava/lang/String;I)V", "getPath", "()Ljava/lang/String;", "getFiles", "()[Ljava/lang/String;", "[Ljava/lang/String;", "getCurrent", "()I", "setCurrent", "(I)V", "component1", "component2", "component3", "copy", "(Ljava/lang/String;[Ljava/lang/String;I)Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;", "equals", "", "other", "hashCode", "toString", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class AssetDir {
        private int current;
        private final String[] files;
        private final String path;

        public AssetDir(String path, String[] files, int i3) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(files, "files");
            this.path = path;
            this.files = files;
            this.current = i3;
        }

        public static /* synthetic */ AssetDir copy$default(AssetDir assetDir, String str, String[] strArr, int i3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = assetDir.path;
            }
            if ((i4 & 2) != 0) {
                strArr = assetDir.files;
            }
            if ((i4 & 4) != 0) {
                i3 = assetDir.current;
            }
            return assetDir.copy(str, strArr, i3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPath() {
            return this.path;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String[] getFiles() {
            return this.files;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getCurrent() {
            return this.current;
        }

        public final AssetDir copy(String path, String[] files, int current) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(files, "files");
            return new AssetDir(path, files, current);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AssetDir)) {
                return false;
            }
            AssetDir assetDir = (AssetDir) other;
            return Intrinsics.areEqual(this.path, assetDir.path) && Intrinsics.areEqual(this.files, assetDir.files) && this.current == assetDir.current;
        }

        public final int getCurrent() {
            return this.current;
        }

        public final String[] getFiles() {
            return this.files;
        }

        public final String getPath() {
            return this.path;
        }

        public int hashCode() {
            return Integer.hashCode(this.current) + (((this.path.hashCode() * 31) + Arrays.hashCode(this.files)) * 31);
        }

        public final void setCurrent(int i3) {
            this.current = i3;
        }

        public String toString() {
            String str = this.path;
            String string = Arrays.toString(this.files);
            int i3 = this.current;
            StringBuilder sbJ = a.j("AssetDir(path=", str, ", files=", string, ", current=");
            sbJ.append(i3);
            sbJ.append(")");
            return sbJ.toString();
        }

        public /* synthetic */ AssetDir(String str, String[] strArr, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, strArr, (i4 & 4) != 0 ? 0 : i3);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\tR\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "getAssetsPath", "originalPath", "getAssetsPath$lib_templateRelease", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getAssetsPath$lib_templateRelease(String originalPath) {
            Intrinsics.checkNotNullParameter(originalPath, "originalPath");
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            if (StringsKt.N(originalPath, separator)) {
                String strSubstring = originalPath.substring(separator.length());
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                return strSubstring;
            }
            if (!StringsKt.N(originalPath, StorageScope.Identifier.ASSETS_PREFIX)) {
                return originalPath;
            }
            String strSubstring2 = originalPath.substring(9);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            return strSubstring2;
        }

        private Companion() {
        }
    }

    public AssetsDirectoryAccess(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.assetManager = context.getAssets();
        this.lastDirId = 1;
        this.dirs = new SparseArray<>();
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public void dirClose(int dirId) {
        this.dirs.remove(dirId);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean dirExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            String[] list = this.assetManager.list(INSTANCE.getAssetsPath$lib_templateRelease(path));
            if (list == null) {
                return false;
            }
            return !(list.length == 0);
        } catch (IOException e2) {
            Log.e(TAG, "Exception on dirExists", e2);
            return false;
        }
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean dirIsDir(int dirId) throws IOException {
        AssetDir assetDir = this.dirs.get(dirId);
        Intrinsics.checkNotNullExpressionValue(assetDir, "get(...)");
        AssetDir assetDir2 = assetDir;
        int current = assetDir2.getCurrent();
        if (current > 0) {
            current--;
        }
        if (current >= assetDir2.getFiles().length) {
            return false;
        }
        String strH = assetDir2.getFiles()[current];
        if (!Intrinsics.areEqual(assetDir2.getPath(), "")) {
            strH = a.h(assetDir2.getPath(), "/", strH);
        }
        String[] list = this.assetManager.list(strH);
        return (list != null ? list.length : 0) > 0;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public String dirNext(int dirId) {
        AssetDir assetDir = this.dirs.get(dirId);
        Intrinsics.checkNotNullExpressionValue(assetDir, "get(...)");
        AssetDir assetDir2 = assetDir;
        if (assetDir2.getCurrent() >= assetDir2.getFiles().length) {
            assetDir2.setCurrent(assetDir2.getCurrent() + 1);
            return "";
        }
        String[] files = assetDir2.getFiles();
        int current = assetDir2.getCurrent();
        assetDir2.setCurrent(current + 1);
        return files[current];
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public int dirOpen(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        String assetsPath$lib_templateRelease = INSTANCE.getAssetsPath$lib_templateRelease(path);
        try {
            String[] list = this.assetManager.list(assetsPath$lib_templateRelease);
            if (list == null || list.length == 0) {
                return -1;
            }
            AssetDir assetDir = new AssetDir(assetsPath$lib_templateRelease, list, 0, 4, null);
            SparseArray<AssetDir> sparseArray = this.dirs;
            int i3 = this.lastDirId + 1;
            this.lastDirId = i3;
            sparseArray.put(i3, assetDir);
            return this.lastDirId;
        } catch (IOException e2) {
            Log.e(TAG, "Exception on dirOpen", e2);
            return -1;
        }
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean fileExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return AssetData.INSTANCE.fileExists(this.context, path);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public String getDrive(int drive) {
        return "";
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public int getDriveCount() {
        return 0;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public long getSpaceLeft() {
        return 0L;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean hasDirId(int dirId) {
        return this.dirs.indexOfKey(dirId) >= 0;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean isCurrentHidden(int dirId) {
        AssetDir assetDir = this.dirs.get(dirId);
        int current = assetDir.getCurrent();
        if (current > 0) {
            current--;
        }
        if (current >= assetDir.getFiles().length) {
            return false;
        }
        return StringsKt__StringsKt.startsWith$default((CharSequence) assetDir.getFiles()[current], '.', false, 2, (Object) null);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean makeDir(String dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return false;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean remove(String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        return AssetData.INSTANCE.delete(filename);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean rename(String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        return AssetData.INSTANCE.rename(from, to);
    }
}
