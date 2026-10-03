package org.godotengine.godot.io.file;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.io.directory.AssetsDirectoryAccess;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lorg/godotengine/godot/io/file/AssetData;", "Lorg/godotengine/godot/io/file/DataAccess;", "context", "Landroid/content/Context;", "filePath", "", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V", "inputStream", "Ljava/io/InputStream;", "readChannel", "Ljava/nio/channels/ReadableByteChannel;", "getReadChannel$lib_templateRelease", "()Ljava/nio/channels/ReadableByteChannel;", "position", "", "length", "close", "", "flush", "seek", "resize", "Lorg/godotengine/godot/error/Error;", "size", "read", "", "buffer", "Ljava/nio/ByteBuffer;", "write", "", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AssetData extends DataAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "AssetData";
    private final String filePath;
    private final InputStream inputStream;
    private final long length;
    private long position;
    private final ReadableByteChannel readChannel;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0005J\u0016\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lorg/godotengine/godot/io/file/AssetData$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "fileExists", "", "context", "Landroid/content/Context;", "path", "fileLastModified", "", "fileLastAccessed", "fileSize", "delete", "rename", "from", "to", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean delete(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return false;
        }

        public final boolean fileExists(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                String[] list = context.getAssets().list(AssetsDirectoryAccess.INSTANCE.getAssetsPath$lib_templateRelease(path));
                return list != null && list.length == 0;
            } catch (IOException e2) {
                Log.e(AssetData.TAG, "Exception on fileExists", e2);
                return false;
            }
        }

        public final long fileLastAccessed(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return 0L;
        }

        public final long fileLastModified(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return 0L;
        }

        public final long fileSize(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return -1L;
        }

        public final boolean rename(String from, String to) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            return false;
        }

        private Companion() {
        }
    }

    public AssetData(Context context, String filePath, FileAccessFlags accessFlag) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
        this.filePath = filePath;
        if (accessFlag == FileAccessFlags.WRITE) {
            throw new UnsupportedOperationException("Writing to the 'assets' directory is not supported");
        }
        InputStream inputStreamOpen = context.getAssets().open(AssetsDirectoryAccess.INSTANCE.getAssetsPath$lib_templateRelease(filePath), 3);
        Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
        this.inputStream = inputStreamOpen;
        ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(inputStreamOpen);
        Intrinsics.checkNotNullExpressionValue(readableByteChannelNewChannel, "newChannel(...)");
        this.readChannel = readableByteChannelNewChannel;
        this.length = inputStreamOpen.available();
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public void close() {
        try {
            this.inputStream.close();
        } catch (IOException e2) {
            Log.w(TAG, "Exception when closing file " + this.filePath + ".", e2);
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public void flush() {
        Log.w(TAG, "flush() is not supported.");
    }

    /* JADX INFO: renamed from: getReadChannel$lib_templateRelease, reason: from getter */
    public final ReadableByteChannel getReadChannel() {
        return this.readChannel;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    /* JADX INFO: renamed from: position, reason: from getter */
    public long getPosition() {
        return this.position;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public int read(ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        try {
            int i3 = this.readChannel.read(buffer);
            if (i3 == -1) {
                setEndOfFile$lib_templateRelease(true);
                return 0;
            }
            this.position += (long) i3;
            return i3;
        } catch (IOException e2) {
            Log.w(TAG, "Exception while reading from " + this.filePath + ".", e2);
            return 0;
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public Error resize(long length) {
        Log.w(TAG, "resize() is not supported.");
        return Error.ERR_UNAVAILABLE;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public void seek(long position) {
        try {
            this.inputStream.reset();
            this.inputStream.skip(position);
            this.position = position;
            long j2 = this.length;
            if (position <= j2) {
                setEndOfFile$lib_templateRelease(false);
            } else {
                this.position = j2;
                setEndOfFile$lib_templateRelease(true);
            }
        } catch (IOException e2) {
            Log.w(TAG, "Exception when seeking file " + this.filePath + ".", e2);
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    /* JADX INFO: renamed from: size, reason: from getter */
    public long getLength() {
        return this.length;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public boolean write(ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Log.w(TAG, "write() is not supported.");
        return false;
    }
}
