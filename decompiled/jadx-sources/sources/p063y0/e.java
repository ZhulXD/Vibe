package p063y0;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import p033m0.x;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends InputStream {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ArrayDeque f6016d;
    public x b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IOException f6017c;

    static {
        char[] cArr = n.f6026a;
        f6016d = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i3) {
        this.b.mark(i3);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        this.b.getClass();
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.b.read();
        } catch (IOException e2) {
            this.f6017c = e2;
            throw e2;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.b.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j2) throws IOException {
        try {
            return this.b.skip(j2);
        } catch (IOException e2) {
            this.f6017c = e2;
            throw e2;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.b.read(bArr);
        } catch (IOException e2) {
            this.f6017c = e2;
            throw e2;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i3, int i4) throws IOException {
        try {
            return this.b.read(bArr, i3, i4);
        } catch (IOException e2) {
            this.f6017c = e2;
            throw e2;
        }
    }
}
