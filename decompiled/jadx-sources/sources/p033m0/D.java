package p033m0;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class D extends MediaDataSource {
    public final /* synthetic */ ByteBuffer b;

    public D(ByteBuffer byteBuffer) {
        this.b = byteBuffer;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.b.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j2, byte[] bArr, int i3, int i4) {
        ByteBuffer byteBuffer = this.b;
        if (j2 >= byteBuffer.limit()) {
            return -1;
        }
        byteBuffer.position((int) j2);
        int iMin = Math.min(i4, byteBuffer.remaining());
        byteBuffer.get(bArr, i3, iMin);
        return iMin;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
