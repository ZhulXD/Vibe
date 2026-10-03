package org.godotengine.godot.io.file;

import android.os.Build;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.FileTime;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import p033m0.o;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lorg/godotengine/godot/io/file/FileData;", "Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;", "filePath", "", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "<init>", "(Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V", "fileChannel", "Ljava/nio/channels/FileChannel;", "getFileChannel$lib_templateRelease", "()Ljava/nio/channels/FileChannel;", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileData extends DataAccess.FileChannelDataAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "FileData";
    private final FileChannel fileChannel;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0005J\u0016\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lorg/godotengine/godot/io/file/FileData$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "fileExists", "", "path", "fileLastModified", "", "filepath", "fileLastAccessed", "fileSize", "delete", "rename", "from", "to", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean delete(String filepath) {
            Intrinsics.checkNotNullParameter(filepath, "filepath");
            try {
                return new File(filepath).delete();
            } catch (Exception unused) {
                return false;
            }
        }

        public final boolean fileExists(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                return new File(path).isFile();
            } catch (SecurityException unused) {
                return false;
            }
        }

        public final long fileLastAccessed(String filepath) {
            Intrinsics.checkNotNullParameter(filepath, "filepath");
            try {
                if (Build.VERSION.SDK_INT < 26) {
                    return 0L;
                }
                FileTime fileTimeLastAccessTime = Files.readAttributes(FileSystems.getDefault().getPath(filepath, new String[0]), o.k(), new LinkOption[0]).lastAccessTime();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                return fileTimeLastAccessTime.to(TimeUnit.SECONDS);
            } catch (SecurityException unused) {
                return 0L;
            }
        }

        public final long fileLastModified(String filepath) {
            Intrinsics.checkNotNullParameter(filepath, "filepath");
            try {
                return new File(filepath).lastModified() / 1000;
            } catch (SecurityException unused) {
                return 0L;
            }
        }

        public final long fileSize(String filepath) {
            Intrinsics.checkNotNullParameter(filepath, "filepath");
            try {
                if (new File(filepath).isFile()) {
                    return new File(filepath).length();
                }
                return -1L;
            } catch (SecurityException unused) {
                return -1L;
            }
        }

        public final boolean rename(String from, String to) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            try {
                return new File(from).renameTo(new File(to));
            } catch (Exception unused) {
                return false;
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileData(String filePath, FileAccessFlags accessFlag) throws IOException {
        FileChannel channel;
        super(filePath);
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
        if (accessFlag == FileAccessFlags.WRITE) {
            File parentFile = new File(filePath).getParentFile();
            if (parentFile != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            channel = new FileOutputStream(filePath, !accessFlag.shouldTruncate()).getChannel();
        } else {
            channel = new RandomAccessFile(filePath, accessFlag.getMode()).getChannel();
        }
        Intrinsics.checkNotNull(channel);
        this.fileChannel = channel;
        if (accessFlag.shouldTruncate()) {
            getFileChannel().truncate(0L);
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess.FileChannelDataAccess
    /* JADX INFO: renamed from: getFileChannel$lib_templateRelease, reason: from getter */
    public FileChannel getFileChannel() {
        return this.fileChannel;
    }
}
