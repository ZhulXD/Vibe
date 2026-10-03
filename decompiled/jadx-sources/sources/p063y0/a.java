package p063y0;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends InputStream {
    public final ByteBuffer b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6012c = -1;

    public a(ByteBuffer byteBuffer) {
        this.b = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.b.remaining();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i3) {
        this.f6012c = this.b.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.b;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & UByte.MAX_VALUE;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        int i3 = this.f6012c;
        if (i3 == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        this.b.position(i3);
    }

    @Override // java.io.InputStream
    public final long skip(long j2) {
        ByteBuffer byteBuffer = this.b;
        if (!byteBuffer.hasRemaining()) {
            return -1L;
        }
        long jMin = Math.min(j2, byteBuffer.remaining());
        byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
        return jMin;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i3, int i4) {
        ByteBuffer byteBuffer = this.b;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int iMin = Math.min(i4, byteBuffer.remaining());
        byteBuffer.get(bArr, i3, iMin);
        return iMin;
    }
}
