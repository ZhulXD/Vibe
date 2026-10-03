package org.godotengine.godot.io.file;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.nio.channels.NonWritableChannelException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.io.StorageScope;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u000bH&J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH&J\b\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0013\u001a\u00020\u000fH&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H&J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u001d"}, d2 = {"Lorg/godotengine/godot/io/file/DataAccess;", "", "<init>", "()V", "endOfFile", "", "getEndOfFile$lib_templateRelease", "()Z", "setEndOfFile$lib_templateRelease", "(Z)V", "close", "", "flush", "seek", "position", "", "resize", "Lorg/godotengine/godot/error/Error;", "length", "size", "read", "", "buffer", "Ljava/nio/ByteBuffer;", "write", "seekFromEnd", "positionFromEnd", "Companion", "FileChannelDataAccess", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class DataAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "DataAccess";
    private boolean endOfFile;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005J(\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0005J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0005J\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0005J\u001e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0005J\u001e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0005J&\u0010\u001a\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lorg/godotengine/godot/io/file/DataAccess$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "getInputStream", "Ljava/io/InputStream;", "storageScope", "Lorg/godotengine/godot/io/StorageScope;", "context", "Landroid/content/Context;", "filePath", "generateDataAccess", "Lorg/godotengine/godot/io/file/DataAccess;", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "fileExists", "", "path", "fileLastModified", "", "fileLastAccessed", "fileSize", "removeFile", "renameFile", "from", "to", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[StorageScope.values().length];
                try {
                    iArr[StorageScope.ASSETS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[StorageScope.APP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[StorageScope.SHARED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[StorageScope.SAF.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[StorageScope.UNKNOWN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean fileExists(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return AssetData.INSTANCE.fileExists(context, path);
            }
            if (i3 == 2) {
                return FileData.INSTANCE.fileExists(path);
            }
            if (i3 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return MediaStoreData.INSTANCE.fileExists(context, path);
                }
                return false;
            }
            if (i3 == 4) {
                return SAFData.INSTANCE.fileExists(context, path);
            }
            if (i3 == 5) {
                return false;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final long fileLastAccessed(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return AssetData.INSTANCE.fileLastAccessed(path);
            }
            if (i3 == 2) {
                return FileData.INSTANCE.fileLastAccessed(path);
            }
            if (i3 == 3 || i3 == 4 || i3 == 5) {
                return 0L;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final long fileLastModified(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return AssetData.INSTANCE.fileLastModified(path);
            }
            if (i3 == 2) {
                return FileData.INSTANCE.fileLastModified(path);
            }
            if (i3 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return MediaStoreData.INSTANCE.fileLastModified(context, path);
                }
                return 0L;
            }
            if (i3 == 4) {
                return SAFData.INSTANCE.fileLastModified(context, path);
            }
            if (i3 == 5) {
                return 0L;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final long fileSize(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return AssetData.INSTANCE.fileSize(path);
            }
            if (i3 == 2) {
                return FileData.INSTANCE.fileSize(path);
            }
            if (i3 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return MediaStoreData.INSTANCE.fileSize(context, path);
                }
                return -1L;
            }
            if (i3 == 4) {
                return SAFData.INSTANCE.fileSize(context, path);
            }
            if (i3 == 5) {
                return -1L;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final DataAccess generateDataAccess(StorageScope storageScope, Context context, String filePath, FileAccessFlags accessFlag) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return new AssetData(context, filePath, accessFlag);
            }
            if (i3 == 2) {
                return new FileData(filePath, accessFlag);
            }
            if (i3 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return new MediaStoreData(context, filePath, accessFlag);
                }
                return null;
            }
            if (i3 == 4) {
                return new SAFData(context, filePath, accessFlag);
            }
            if (i3 == 5) {
                return null;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final InputStream getInputStream(StorageScope storageScope, Context context, String filePath) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return Channels.newInputStream(new AssetData(context, filePath, FileAccessFlags.READ).getReadChannel());
            }
            if (i3 == 2) {
                return Channels.newInputStream(new FileData(filePath, FileAccessFlags.READ).getFileChannel());
            }
            if (i3 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return Channels.newInputStream(new MediaStoreData(context, filePath, FileAccessFlags.READ).getFileChannel());
                }
                return null;
            }
            if (i3 == 4) {
                return Channels.newInputStream(new SAFData(context, filePath, FileAccessFlags.READ).getFileChannel());
            }
            if (i3 == 5) {
                return null;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final boolean removeFile(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return AssetData.INSTANCE.delete(path);
            }
            if (i3 == 2) {
                return FileData.INSTANCE.delete(path);
            }
            if (i3 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return MediaStoreData.INSTANCE.delete(context, path);
                }
                return false;
            }
            if (i3 == 4) {
                return SAFData.INSTANCE.delete(context, path);
            }
            if (i3 == 5) {
                return false;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final boolean renameFile(StorageScope storageScope, Context context, String from, String to) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
            if (i3 == 1) {
                return AssetData.INSTANCE.rename(from, to);
            }
            if (i3 == 2) {
                return FileData.INSTANCE.rename(from, to);
            }
            if (i3 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return MediaStoreData.INSTANCE.rename(context, from, to);
                }
                return false;
            }
            if (i3 == 4) {
                return SAFData.INSTANCE.rename(context, from, to);
            }
            if (i3 == 5) {
                return false;
            }
            throw new NoWhenBranchMatchedException();
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u0007X \u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001a"}, d2 = {"Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;", "Lorg/godotengine/godot/io/file/DataAccess;", "filePath", "", "<init>", "(Ljava/lang/String;)V", "fileChannel", "Ljava/nio/channels/FileChannel;", "getFileChannel$lib_templateRelease", "()Ljava/nio/channels/FileChannel;", "close", "", "flush", "seek", "position", "", "resize", "Lorg/godotengine/godot/error/Error;", "length", "size", "read", "", "buffer", "Ljava/nio/ByteBuffer;", "write", "", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class FileChannelDataAccess extends DataAccess {
        private final String filePath;

        public FileChannelDataAccess(String filePath) {
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            this.filePath = filePath;
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public void close() {
            try {
                getFileChannel().close();
            } catch (IOException e2) {
                Log.w(DataAccess.TAG, "Exception when closing file " + this.filePath + ".", e2);
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public void flush() {
            try {
                getFileChannel().force(false);
            } catch (IOException e2) {
                Log.w(DataAccess.TAG, "Exception when flushing file " + this.filePath + ".", e2);
            }
        }

        /* JADX INFO: renamed from: getFileChannel$lib_templateRelease */
        public abstract FileChannel getFileChannel();

        @Override // org.godotengine.godot.io.file.DataAccess
        /* JADX INFO: renamed from: position */
        public long getPosition() {
            try {
                return getFileChannel().position();
            } catch (IOException e2) {
                Log.w(DataAccess.TAG, "Exception when retrieving position for file " + this.filePath + ".", e2);
                return 0L;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public int read(ByteBuffer buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            try {
                int i3 = getFileChannel().read(buffer);
                if (i3 != -1) {
                    return i3;
                }
                setEndOfFile$lib_templateRelease(true);
                return 0;
            } catch (IOException e2) {
                Log.w(DataAccess.TAG, "Exception while reading from file " + this.filePath + ".", e2);
                return 0;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public Error resize(long length) {
            try {
                getFileChannel().truncate(length);
                return Error.OK;
            } catch (IOException unused) {
                return Error.FAILED;
            } catch (IllegalArgumentException unused2) {
                return Error.ERR_INVALID_PARAMETER;
            } catch (ClosedChannelException unused3) {
                return Error.ERR_FILE_CANT_OPEN;
            } catch (NonWritableChannelException unused4) {
                return Error.ERR_FILE_CANT_OPEN;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public void seek(long position) {
            try {
                getFileChannel().position(position);
            } catch (Exception e2) {
                Log.w(DataAccess.TAG, "Exception when seeking file " + this.filePath + ".", e2);
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        /* JADX INFO: renamed from: size */
        public long getLength() {
            try {
                return getFileChannel().size();
            } catch (IOException e2) {
                Log.w(DataAccess.TAG, "Exception when retrieving size for file " + this.filePath + ".", e2);
                return 0L;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public boolean write(ByteBuffer buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            try {
                if (getFileChannel().write(buffer) <= 0) {
                    return true;
                }
                setEndOfFile$lib_templateRelease(false);
                return true;
            } catch (IOException e2) {
                Log.w(DataAccess.TAG, "Exception while writing to file " + this.filePath + ".", e2);
                return false;
            }
        }
    }

    public abstract void close();

    public abstract void flush();

    /* JADX INFO: renamed from: getEndOfFile$lib_templateRelease, reason: from getter */
    public final boolean getEndOfFile() {
        return this.endOfFile;
    }

    /* JADX INFO: renamed from: position */
    public abstract long getPosition();

    public abstract int read(ByteBuffer buffer);

    public abstract Error resize(long length);

    public abstract void seek(long position);

    public final void seekFromEnd(long positionFromEnd) {
        long length = getLength() + positionFromEnd;
        if (length >= 0) {
            seek(length);
        }
    }

    public final void setEndOfFile$lib_templateRelease(boolean z2) {
        this.endOfFile = z2;
    }

    /* JADX INFO: renamed from: size */
    public abstract long getLength();

    public abstract boolean write(ByteBuffer buffer);
}
