package p063y0;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends FilterInputStream {
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6015c;

    public d(InputStream inputStream, long j2) {
        super(inputStream);
        this.b = j2;
    }

    public final void a(int i3) throws IOException {
        if (i3 >= 0) {
            this.f6015c += i3;
            return;
        }
        long j2 = this.f6015c;
        long j3 = this.b;
        if (j3 - j2 <= 0) {
            return;
        }
        throw new IOException("Failed to read all expected data, expected: " + j3 + ", but read: " + this.f6015c);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.b - ((long) this.f6015c), ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i3;
        i3 = super.read();
        a(i3 >= 0 ? 1 : -1);
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i3, int i4) {
        int i5;
        i5 = super.read(bArr, i3, i4);
        a(i5);
        return i5;
    }
}
