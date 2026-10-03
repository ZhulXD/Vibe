package p063y0;

import java.io.FilterInputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends FilterInputStream {
    public int b;

    public k(e eVar) {
        super(eVar);
        this.b = Integer.MIN_VALUE;
    }

    public final long a(long j2) {
        int i3 = this.b;
        if (i3 == 0) {
            return -1L;
        }
        return (i3 == Integer.MIN_VALUE || j2 <= ((long) i3)) ? j2 : i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i3 = this.b;
        return i3 == Integer.MIN_VALUE ? super.available() : Math.min(i3, super.available());
    }

    public final void b(long j2) {
        int i3 = this.b;
        if (i3 == Integer.MIN_VALUE || j2 == -1) {
            return;
        }
        this.b = (int) (((long) i3) - j2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i3) {
        super.mark(i3);
        this.b = i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int i3 = super.read();
        b(1L);
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long jA = a(j2);
        if (jA == -1) {
            return 0L;
        }
        long jSkip = super.skip(jA);
        b(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i3, int i4) throws IOException {
        int iA = (int) a(i4);
        if (iA == -1) {
            return -1;
        }
        int i5 = super.read(bArr, i3, iA);
        b(i5);
        return i5;
    }
}
