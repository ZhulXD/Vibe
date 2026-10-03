package p033m0;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import p009d0.c;
import p016g0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends FilterInputStream {
    public volatile byte[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5148e;
    public int f;
    public final g g;

    public x(InputStream inputStream, g gVar) {
        super(inputStream);
        this.f5148e = -1;
        this.g = gVar;
        this.b = (byte[]) gVar.c(65536, byte[].class);
    }

    public static void c() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i3 = this.f5148e;
        if (i3 != -1) {
            int i4 = this.f - i3;
            int i5 = this.f5147d;
            if (i4 < i5) {
                if (i3 == 0 && i5 > bArr.length && this.f5146c == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i5) {
                        i5 = length;
                    }
                    byte[] bArr2 = (byte[]) this.g.c(i5, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.b = bArr2;
                    this.g.g(bArr);
                    bArr = bArr2;
                } else if (i3 > 0) {
                    System.arraycopy(bArr, i3, bArr, 0, bArr.length - i3);
                }
                int i6 = this.f - this.f5148e;
                this.f = i6;
                this.f5148e = 0;
                this.f5146c = 0;
                int i7 = inputStream.read(bArr, i6, bArr.length - i6);
                int i8 = this.f;
                if (i7 > 0) {
                    i8 += i7;
                }
                this.f5146c = i8;
                return i7;
            }
        }
        int i9 = inputStream.read(bArr);
        if (i9 > 0) {
            this.f5148e = -1;
            this.f = 0;
            this.f5146c = i9;
        }
        return i9;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.b == null || inputStream == null) {
            c();
            throw null;
        }
        return (this.f5146c - this.f) + inputStream.available();
    }

    public final synchronized void b() {
        if (this.b != null) {
            this.g.g(this.b);
            this.b = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.b != null) {
            this.g.g(this.b);
            this.b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i3) {
        this.f5147d = Math.max(this.f5147d, i3);
        this.f5148e = this.f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.b;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            c();
            throw null;
        }
        if (this.f >= this.f5146c && a(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.b && (bArr = this.b) == null) {
            c();
            throw null;
        }
        int i3 = this.f5146c;
        int i4 = this.f;
        if (i3 - i4 <= 0) {
            return -1;
        }
        this.f = i4 + 1;
        return bArr[i4] & UByte.MAX_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.b == null) {
            throw new IOException("Stream is closed");
        }
        int i3 = this.f5148e;
        if (-1 == i3) {
            throw new c("Mark has been invalidated, pos: " + this.f + " markLimit: " + this.f5147d);
        }
        this.f = i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j2) {
        if (j2 < 1) {
            return 0L;
        }
        byte[] bArr = this.b;
        if (bArr == null) {
            c();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            c();
            throw null;
        }
        int i3 = this.f5146c;
        int i4 = this.f;
        if (i3 - i4 >= j2) {
            this.f = (int) (((long) i4) + j2);
            return j2;
        }
        long j3 = ((long) i3) - ((long) i4);
        this.f = i3;
        if (this.f5148e == -1 || j2 > this.f5147d) {
            long jSkip = inputStream.skip(j2 - j3);
            if (jSkip > 0) {
                this.f5148e = -1;
            }
            return j3 + jSkip;
        }
        if (a(inputStream, bArr) == -1) {
            return j3;
        }
        int i5 = this.f5146c;
        int i6 = this.f;
        if (i5 - i6 >= j2 - j3) {
            this.f = (int) ((((long) i6) + j2) - j3);
            return j2;
        }
        long j4 = (j3 + ((long) i5)) - ((long) i6);
        this.f = i5;
        return j4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i3, int i4) {
        int i5;
        int i6;
        byte[] bArr2 = this.b;
        if (bArr2 == null) {
            c();
            throw null;
        }
        if (i4 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i7 = this.f;
            int i8 = this.f5146c;
            if (i7 < i8) {
                int i9 = i8 - i7;
                if (i9 >= i4) {
                    i9 = i4;
                }
                System.arraycopy(bArr2, i7, bArr, i3, i9);
                this.f += i9;
                if (i9 == i4 || inputStream.available() == 0) {
                    return i9;
                }
                i3 += i9;
                i5 = i4 - i9;
            } else {
                i5 = i4;
            }
            while (true) {
                if (this.f5148e == -1 && i5 >= bArr2.length) {
                    i6 = inputStream.read(bArr, i3, i5);
                    if (i6 == -1) {
                        return i5 != i4 ? i4 - i5 : -1;
                    }
                } else {
                    if (a(inputStream, bArr2) == -1) {
                        return i5 != i4 ? i4 - i5 : -1;
                    }
                    if (bArr2 != this.b && (bArr2 = this.b) == null) {
                        c();
                        throw null;
                    }
                    int i10 = this.f5146c;
                    int i11 = this.f;
                    i6 = i10 - i11;
                    if (i6 >= i5) {
                        i6 = i5;
                    }
                    System.arraycopy(bArr2, i11, bArr, i3, i6);
                    this.f += i6;
                }
                i5 -= i6;
                if (i5 == 0) {
                    return i4;
                }
                if (inputStream.available() == 0) {
                    return i4 - i5;
                }
                i3 += i6;
            }
        } else {
            c();
            throw null;
        }
    }
}
