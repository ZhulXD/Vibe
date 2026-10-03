package org.godotengine.godot.io.directory;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.storage.StorageManager;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.io.StorageScope;
import org.godotengine.godot.io.file.FileAccessHandler;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\b\b\u0000\u0018\u0000 )2\u00020\u0001:\u0002)*B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\b\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u0010\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0012H\u0016J\b\u0010\"\u001a\u00020#H\u0017J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012H\u0016J\u0010\u0010'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;", "context", "Landroid/content/Context;", "storageScopeIdentifier", "Lorg/godotengine/godot/io/StorageScope$Identifier;", "<init>", "(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;)V", "storageManager", "Landroid/os/storage/StorageManager;", "lastDirId", "", "dirs", "Landroid/util/SparseArray;", "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;", "inScope", "", "path", "", "hasDirId", "dirId", "dirOpen", "dirExists", "fileExists", "dirNext", "dirClose", "", "dirIsDir", "isCurrentHidden", "getDriveCount", "getDrive", "drive", "makeDir", "dir", "getSpaceLeft", "", "rename", "from", "to", "remove", "filename", "Companion", "DirData", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FilesystemDirectoryAccess implements DirectoryAccessHandler.DirectoryAccess {
    private static final String TAG = "FilesystemDirectoryAccess";
    private final Context context;
    private final SparseArray<DirData> dirs;
    private int lastDirId;
    private final StorageManager storageManager;
    private final StorageScope.Identifier storageScopeIdentifier;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J2\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;", "", "dirFile", "Ljava/io/File;", "files", "", "current", "", "<init>", "(Ljava/io/File;[Ljava/io/File;I)V", "getDirFile", "()Ljava/io/File;", "getFiles", "()[Ljava/io/File;", "[Ljava/io/File;", "getCurrent", "()I", "setCurrent", "(I)V", "component1", "component2", "component3", "copy", "(Ljava/io/File;[Ljava/io/File;I)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;", "equals", "", "other", "hashCode", "toString", "", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class DirData {
        private int current;
        private final File dirFile;
        private final File[] files;

        public DirData(File dirFile, File[] files, int i3) {
            Intrinsics.checkNotNullParameter(dirFile, "dirFile");
            Intrinsics.checkNotNullParameter(files, "files");
            this.dirFile = dirFile;
            this.files = files;
            this.current = i3;
        }

        public static /* synthetic */ DirData copy$default(DirData dirData, File file, File[] fileArr, int i3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                file = dirData.dirFile;
            }
            if ((i4 & 2) != 0) {
                fileArr = dirData.files;
            }
            if ((i4 & 4) != 0) {
                i3 = dirData.current;
            }
            return dirData.copy(file, fileArr, i3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final File getDirFile() {
            return this.dirFile;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final File[] getFiles() {
            return this.files;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getCurrent() {
            return this.current;
        }

        public final DirData copy(File dirFile, File[] files, int current) {
            Intrinsics.checkNotNullParameter(dirFile, "dirFile");
            Intrinsics.checkNotNullParameter(files, "files");
            return new DirData(dirFile, files, current);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DirData)) {
                return false;
            }
            DirData dirData = (DirData) other;
            return Intrinsics.areEqual(this.dirFile, dirData.dirFile) && Intrinsics.areEqual(this.files, dirData.files) && this.current == dirData.current;
        }

        public final int getCurrent() {
            return this.current;
        }

        public final File getDirFile() {
            return this.dirFile;
        }

        public final File[] getFiles() {
            return this.files;
        }

        public int hashCode() {
            return Integer.hashCode(this.current) + (((this.dirFile.hashCode() * 31) + Arrays.hashCode(this.files)) * 31);
        }

        public final void setCurrent(int i3) {
            this.current = i3;
        }

        public String toString() {
            return "DirData(dirFile=" + this.dirFile + ", files=" + Arrays.toString(this.files) + ", current=" + this.current + ")";
        }

        public /* synthetic */ DirData(File file, File[] fileArr, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(file, fileArr, (i4 & 4) != 0 ? 0 : i3);
        }
    }

    public FilesystemDirectoryAccess(Context context, StorageScope.Identifier storageScopeIdentifier) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
        this.context = context;
        this.storageScopeIdentifier = storageScopeIdentifier;
        Object systemService = context.getSystemService("storage");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.storage.StorageManager");
        this.storageManager = (StorageManager) systemService;
        this.lastDirId = 1;
        this.dirs = new SparseArray<>();
    }

    private final boolean inScope(String path) {
        StorageScope storageScopeIdentifyStorageScope = this.storageScopeIdentifier.identifyStorageScope(path);
        return (storageScopeIdentifyStorageScope == StorageScope.UNKNOWN || storageScopeIdentifyStorageScope == StorageScope.ASSETS) ? false : true;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public void dirClose(int dirId) {
        this.dirs.remove(dirId);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean dirExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (inScope(path)) {
            try {
                return new File(path).isDirectory();
            } catch (SecurityException unused) {
                return false;
            }
        }
        Log.w(TAG, "Path " + path + " is not accessible.");
        return false;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean dirIsDir(int dirId) {
        DirData dirData = this.dirs.get(dirId);
        int current = dirData.getCurrent();
        if (current > 0) {
            current--;
        }
        if (current >= dirData.getFiles().length) {
            return false;
        }
        return dirData.getFiles()[current].isDirectory();
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public String dirNext(int dirId) {
        DirData dirData = this.dirs.get(dirId);
        if (dirData.getCurrent() >= dirData.getFiles().length) {
            dirData.setCurrent(dirData.getCurrent() + 1);
            return "";
        }
        File[] files = dirData.getFiles();
        int current = dirData.getCurrent();
        dirData.setCurrent(current + 1);
        String name = files[current].getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return name;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public int dirOpen(String path) {
        File[] fileArrListFiles;
        Intrinsics.checkNotNullParameter(path, "path");
        if (!inScope(path)) {
            Log.w(TAG, "Path " + path + " is not accessible.");
            return -1;
        }
        File file = new File(path);
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return -1;
        }
        DirData dirData = new DirData(file, fileArrListFiles, 0, 4, null);
        SparseArray<DirData> sparseArray = this.dirs;
        int i3 = this.lastDirId + 1;
        this.lastDirId = i3;
        sparseArray.put(i3, dirData);
        return this.lastDirId;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean fileExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return FileAccessHandler.INSTANCE.fileExists$lib_templateRelease(this.context, this.storageScopeIdentifier, path);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public String getDrive(int drive) {
        File directory;
        String absolutePath;
        if (drive < 0 || drive >= this.storageManager.getStorageVolumes().size()) {
            return "";
        }
        return (Build.VERSION.SDK_INT < 30 || (directory = this.storageManager.getStorageVolumes().get(drive).getDirectory()) == null || (absolutePath = directory.getAbsolutePath()) == null) ? "" : absolutePath;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public int getDriveCount() {
        return this.storageManager.getStorageVolumes().size();
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    @SuppressLint({"UsableSpace"})
    public long getSpaceLeft() {
        File externalFilesDir = this.context.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return externalFilesDir.getUsableSpace();
        }
        return 0L;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean hasDirId(int dirId) {
        return this.dirs.indexOfKey(dirId) >= 0;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean isCurrentHidden(int dirId) {
        DirData dirData = this.dirs.get(dirId);
        int current = dirData.getCurrent();
        if (current > 0) {
            current--;
        }
        if (current >= dirData.getFiles().length) {
            return false;
        }
        return dirData.getFiles()[current].isHidden();
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean makeDir(String dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        if (inScope(dir)) {
            try {
                File file = new File(dir);
                return file.isDirectory() || file.mkdirs();
            } catch (SecurityException unused) {
                return false;
            }
        }
        Log.w(TAG, "Directory " + dir + " is not accessible.");
        return false;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean remove(String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        if (inScope(filename)) {
            try {
                File file = new File(filename);
                if (file.exists()) {
                    return file.isDirectory() ? file.delete() : FileAccessHandler.INSTANCE.removeFile$lib_templateRelease(this.context, this.storageScopeIdentifier, filename);
                }
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        }
        Log.w(TAG, "Filename " + filename + " is not accessible.");
        return false;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean rename(String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        if (inScope(from) && inScope(to)) {
            try {
                File file = new File(from);
                return file.isDirectory() ? file.renameTo(new File(to)) : FileAccessHandler.INSTANCE.renameFile$lib_templateRelease(this.context, this.storageScopeIdentifier, from, to);
            } catch (SecurityException unused) {
                return false;
            }
        }
        Log.w(TAG, "Argument filenames are not accessible:\nfrom: " + from + "\nto: " + to);
        return false;
    }
}
