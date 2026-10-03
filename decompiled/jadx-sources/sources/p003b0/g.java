package p003b0;

import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Closeable {
    public final FileInputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Charset f3095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f3096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3097e;
    public int f;

    public g(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(h.f3098a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.b = fileInputStream;
        this.f3095c = charset;
        this.f3096d = new byte[8192];
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0040  */
    public final String a() {
        int i3;
        synchronized (this.b) {
            try {
                byte[] bArr = this.f3096d;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f3097e >= this.f) {
                    int i4 = this.b.read(bArr, 0, bArr.length);
                    if (i4 == -1) {
                        throw new EOFException();
                    }
                    this.f3097e = 0;
                    this.f = i4;
                }
                for (int i5 = this.f3097e; i5 != this.f; i5++) {
                    byte[] bArr2 = this.f3096d;
                    if (bArr2[i5] == 10) {
                        int i6 = this.f3097e;
                        if (i5 != i6) {
                            i3 = i5 - 1;
                            if (bArr2[i3] != 13) {
                                i3 = i5;
                            }
                        } else {
                            i3 = i5;
                        }
                        String str = new String(bArr2, i6, i3 - i6, this.f3095c.name());
                        this.f3097e = i5 + 1;
                        return str;
                    }
                }
                f fVar = new f(this, (this.f - this.f3097e) + 80);
                while (true) {
                    byte[] bArr3 = this.f3096d;
                    int i7 = this.f3097e;
                    fVar.write(bArr3, i7, this.f - i7);
                    this.f = -1;
                    FileInputStream fileInputStream = this.b;
                    byte[] bArr4 = this.f3096d;
                    int i8 = fileInputStream.read(bArr4, 0, bArr4.length);
                    if (i8 == -1) {
                        throw new EOFException();
                    }
                    this.f3097e = 0;
                    this.f = i8;
                    for (int i9 = 0; i9 != this.f; i9++) {
                        byte[] bArr5 = this.f3096d;
                        if (bArr5[i9] == 10) {
                            int i10 = this.f3097e;
                            if (i9 != i10) {
                                fVar.write(bArr5, i10, i9 - i10);
                            }
                            this.f3097e = i9 + 1;
                            return fVar.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.b) {
            try {
                if (this.f3096d != null) {
                    this.f3096d = null;
                    this.b.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
