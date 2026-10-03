package org.godotengine.godot.io.file;

import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.io.StorageScope;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0002J\u0010\u0010\u0016\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0018\u0010\u0019\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001b\u001a\u00020\u0010J-\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00182\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000¢\u0006\u0002\b J\u000e\u0010!\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u0010J\u0016\u0010#\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\"J\u0016\u0010&\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\"J\u0018\u0010'\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00102\b\u0010(\u001a\u0004\u0018\u00010)J\u0018\u0010*\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\b\u0010(\u001a\u0004\u0018\u00010)J\u000e\u0010+\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u0010J\u0012\u0010,\u001a\u0004\u0018\u00010-2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u0016\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\u00182\u0006\u00100\u001a\u00020\u0018J\u0010\u00101\u001a\u00020\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u0010\u00102\u001a\u00020\"2\b\u00103\u001a\u0004\u0018\u00010\u0018J\u0010\u00104\u001a\u00020\"2\b\u00103\u001a\u0004\u0018\u00010\u0018J\u0016\u00105\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u00106\u001a\u00020\"J\u0010\u00107\u001a\u00020\"2\b\u00103\u001a\u0004\u0018\u00010\u0018J\u000e\u00108\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u00109\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010J\u0016\u0010:\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u0014J\u000e\u0010<\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessHandler;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "storageScopeIdentifier", "Lorg/godotengine/godot/io/StorageScope$Identifier;", "getStorageScopeIdentifier$lib_templateRelease", "()Lorg/godotengine/godot/io/StorageScope$Identifier;", "files", "Landroid/util/SparseArray;", "Lorg/godotengine/godot/io/file/DataAccess;", "lastFileId", "", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "hasFileId", "", "fileId", "canAccess", "filePath", "", "fileOpen", "path", "modeFlags", "Lkotlin/Pair;", "Lorg/godotengine/godot/error/Error;", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "fileOpen$lib_templateRelease", "fileGetSize", "", "fileSeek", "", "position", "fileSeekFromEnd", "fileRead", "byteBuffer", "Ljava/nio/ByteBuffer;", "fileWrite", "fileFlush", "getInputStream", "Ljava/io/InputStream;", "renameFile", "from", "to", "fileExists", "fileLastModified", "filepath", "fileLastAccessed", "fileResize", "length", "fileSize", "fileGetPosition", "isFileEof", "setFileEof", "eof", "fileClose", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileAccessHandler {
    private static final int INVALID_FILE_ID = 0;
    private static final int STARTING_FILE_ID = 1;
    private final Context context;
    private final SparseArray<DataAccess> files;
    private int lastFileId;
    private final ReentrantLock lock;
    private final StorageScope.Identifier storageScopeIdentifier;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "FileAccessHandler";
    private static final Pair<Error, Integer> FILE_OPEN_FAILED = new Pair<>(Error.FAILED, 0);

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0002\b\u0014J'\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0002\b\u0017J'\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0002\b\u0019J-\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u001dR\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "INVALID_FILE_ID", "", "STARTING_FILE_ID", "FILE_OPEN_FAILED", "Lkotlin/Pair;", "Lorg/godotengine/godot/error/Error;", "getInputStream", "Ljava/io/InputStream;", "context", "Landroid/content/Context;", "storageScopeIdentifier", "Lorg/godotengine/godot/io/StorageScope$Identifier;", "path", "getInputStream$lib_templateRelease", "fileExists", "", "fileExists$lib_templateRelease", "removeFile", "removeFile$lib_templateRelease", "renameFile", "from", "to", "renameFile$lib_templateRelease", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean fileExists$lib_templateRelease(Context context, StorageScope.Identifier storageScopeIdentifier, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            StorageScope storageScopeIdentifyStorageScope = storageScopeIdentifier.identifyStorageScope(path);
            if (storageScopeIdentifyStorageScope != StorageScope.UNKNOWN && path != null) {
                try {
                    return DataAccess.INSTANCE.fileExists(storageScopeIdentifyStorageScope, context, path);
                } catch (SecurityException unused) {
                }
            }
            return false;
        }

        public final InputStream getInputStream$lib_templateRelease(Context context, StorageScope.Identifier storageScopeIdentifier, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            StorageScope storageScopeIdentifyStorageScope = storageScopeIdentifier.identifyStorageScope(path);
            if (path != null) {
                try {
                    return DataAccess.INSTANCE.getInputStream(storageScopeIdentifyStorageScope, context, path);
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public final boolean removeFile$lib_templateRelease(Context context, StorageScope.Identifier storageScopeIdentifier, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            StorageScope storageScopeIdentifyStorageScope = storageScopeIdentifier.identifyStorageScope(path);
            if (storageScopeIdentifyStorageScope != StorageScope.UNKNOWN && path != null) {
                try {
                    return DataAccess.INSTANCE.removeFile(storageScopeIdentifyStorageScope, context, path);
                } catch (Exception unused) {
                }
            }
            return false;
        }

        public final boolean renameFile$lib_templateRelease(Context context, StorageScope.Identifier storageScopeIdentifier, String from, String to) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            StorageScope storageScopeIdentifyStorageScope = storageScopeIdentifier.identifyStorageScope(from);
            if (storageScopeIdentifyStorageScope == StorageScope.UNKNOWN) {
                return false;
            }
            try {
                return DataAccess.INSTANCE.renameFile(storageScopeIdentifyStorageScope, context, from, to);
            } catch (Exception unused) {
                return false;
            }
        }

        private Companion() {
        }
    }

    public FileAccessHandler(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.storageScopeIdentifier = new StorageScope.Identifier(context);
        this.files = new SparseArray<>();
        this.lastFileId = 1;
        this.lock = new ReentrantLock();
    }

    private final boolean hasFileId(int fileId) {
        return this.files.indexOfKey(fileId) >= 0;
    }

    public final boolean canAccess(String filePath) {
        return this.storageScopeIdentifier.canAccess(filePath);
    }

    public final void fileClose(int fileId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId)) {
                this.files.get(fileId).close();
                this.files.remove(fileId);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean fileExists(String path) {
        return INSTANCE.fileExists$lib_templateRelease(this.context, this.storageScopeIdentifier, path);
    }

    public final void fileFlush(int fileId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId)) {
                this.files.get(fileId).flush();
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long fileGetPosition(int fileId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId)) {
                return this.files.get(fileId).getPosition();
            }
            return 0L;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long fileGetSize(int fileId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId)) {
                return this.files.get(fileId).getLength();
            }
            return 0L;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long fileLastAccessed(String filepath) {
        StorageScope storageScopeIdentifyStorageScope = this.storageScopeIdentifier.identifyStorageScope(filepath);
        if (storageScopeIdentifyStorageScope != StorageScope.UNKNOWN && filepath != null) {
            try {
                return DataAccess.INSTANCE.fileLastAccessed(storageScopeIdentifyStorageScope, this.context, filepath);
            } catch (SecurityException unused) {
            }
        }
        return 0L;
    }

    public final long fileLastModified(String filepath) {
        StorageScope storageScopeIdentifyStorageScope = this.storageScopeIdentifier.identifyStorageScope(filepath);
        if (storageScopeIdentifyStorageScope != StorageScope.UNKNOWN && filepath != null) {
            try {
                return DataAccess.INSTANCE.fileLastModified(storageScopeIdentifyStorageScope, this.context, filepath);
            } catch (SecurityException unused) {
            }
        }
        return 0L;
    }

    public final int fileOpen(String path, int modeFlags) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Pair<Error, Integer> pairFileOpen$lib_templateRelease = fileOpen$lib_templateRelease(path, FileAccessFlags.INSTANCE.fromNativeModeFlags(modeFlags));
            Error errorComponent1 = pairFileOpen$lib_templateRelease.component1();
            int iIntValue = pairFileOpen$lib_templateRelease.component2().intValue();
            if (errorComponent1 != Error.OK) {
                iIntValue = -errorComponent1.toNativeValue();
            }
            return iIntValue;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Pair<Error, Integer> fileOpen$lib_templateRelease(String path, FileAccessFlags accessFlag) {
        if (accessFlag == null) {
            return FILE_OPEN_FAILED;
        }
        StorageScope storageScopeIdentifyStorageScope = this.storageScopeIdentifier.identifyStorageScope(path);
        if (storageScopeIdentifyStorageScope == StorageScope.UNKNOWN) {
            return FILE_OPEN_FAILED;
        }
        try {
            if (path == null) {
                return FILE_OPEN_FAILED;
            }
            DataAccess dataAccessGenerateDataAccess = DataAccess.INSTANCE.generateDataAccess(storageScopeIdentifyStorageScope, this.context, path, accessFlag);
            if (dataAccessGenerateDataAccess == null) {
                return FILE_OPEN_FAILED;
            }
            SparseArray<DataAccess> sparseArray = this.files;
            int i3 = this.lastFileId + 1;
            this.lastFileId = i3;
            sparseArray.put(i3, dataAccessGenerateDataAccess);
            return new Pair<>(Error.OK, Integer.valueOf(this.lastFileId));
        } catch (FileNotFoundException unused) {
            return new Pair<>(Error.ERR_FILE_NOT_FOUND, 0);
        } catch (UnsupportedOperationException unused2) {
            return new Pair<>(Error.ERR_UNAVAILABLE, 0);
        } catch (Exception e2) {
            Log.w(TAG, "Error while opening " + path, e2);
            return FILE_OPEN_FAILED;
        }
    }

    public final int fileRead(int fileId, ByteBuffer byteBuffer) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId) && byteBuffer != null) {
                return this.files.get(fileId).read(byteBuffer);
            }
            return 0;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int fileResize(int fileId, long length) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return !hasFileId(fileId) ? Error.FAILED.toNativeValue() : this.files.get(fileId).resize(length).toNativeValue();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void fileSeek(int fileId, long position) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId)) {
                this.files.get(fileId).seek(position);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void fileSeekFromEnd(int fileId, long position) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId)) {
                this.files.get(fileId).seekFromEnd(position);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long fileSize(String filepath) {
        StorageScope storageScopeIdentifyStorageScope = this.storageScopeIdentifier.identifyStorageScope(filepath);
        if (storageScopeIdentifyStorageScope != StorageScope.UNKNOWN && filepath != null) {
            try {
                return DataAccess.INSTANCE.fileSize(storageScopeIdentifyStorageScope, this.context, filepath);
            } catch (SecurityException unused) {
            }
        }
        return -1L;
    }

    public final boolean fileWrite(int fileId, ByteBuffer byteBuffer) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId) && byteBuffer != null) {
                return this.files.get(fileId).write(byteBuffer);
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final InputStream getInputStream(String path) {
        return INSTANCE.getInputStream$lib_templateRelease(this.context, this.storageScopeIdentifier, path);
    }

    /* JADX INFO: renamed from: getStorageScopeIdentifier$lib_templateRelease, reason: from getter */
    public final StorageScope.Identifier getStorageScopeIdentifier() {
        return this.storageScopeIdentifier;
    }

    public final boolean isFileEof(int fileId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (hasFileId(fileId)) {
                return this.files.get(fileId).getEndOfFile();
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean renameFile(String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        return INSTANCE.renameFile$lib_templateRelease(this.context, this.storageScopeIdentifier, from, to);
    }

    public final void setFileEof(int fileId, boolean eof) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            DataAccess dataAccess = this.files.get(fileId);
            if (dataAccess == null) {
                return;
            }
            dataAccess.setEndOfFile$lib_templateRelease(eof);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}
