package p064y1;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0374g extends InputStream {
    public final FileInputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f6228d;

    public C0374g(FileInputStream source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.b = source;
        this.f6227c = Long.MAX_VALUE;
    }

    public final boolean a() throws IOException {
        long j2 = this.f6228d;
        long j3 = this.f6227c;
        if (j2 < j3 || j3 == Long.MAX_VALUE) {
            return true;
        }
        if (this.b.read() < 0) {
            return false;
        }
        throw new IOException("stream exceeds maximum size");
    }

    @Override // java.io.InputStream
    public final int available() {
        long j2 = this.f6227c;
        FileInputStream fileInputStream = this.b;
        return j2 == Long.MAX_VALUE ? fileInputStream.available() : (int) Math.min(fileInputStream.available(), j2 - this.f6228d);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (!a()) {
            return -1;
        }
        int i3 = this.b.read();
        if (i3 >= 0) {
            this.f6228d++;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final long skip(long j2) throws IOException {
        if (j2 <= 0 || !a()) {
            return 0L;
        }
        long j3 = this.f6227c;
        if (j3 != Long.MAX_VALUE) {
            j2 = Math.min(j2, j3 - this.f6228d);
        }
        long jSkip = this.b.skip(j2);
        this.f6228d += jSkip;
        return jSkip;
    }

    @Override // java.io.InputStream
    public final int read(byte[] buffer, int i3, int i4) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (i4 == 0) {
            return 0;
        }
        if (!a()) {
            return -1;
        }
        long j2 = this.f6227c;
        if (j2 != Long.MAX_VALUE) {
            i4 = (int) Math.min(i4, j2 - this.f6228d);
        }
        int i5 = this.b.read(buffer, i3, i4);
        if (i5 > 0) {
            this.f6228d += (long) i5;
        }
        return i5;
    }
}
