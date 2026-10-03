package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f3248d = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f3249e = 31;
    public final byte b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3250c;

    public j(InputStream inputStream, int i3) {
        super(inputStream);
        if (i3 < -1 || i3 > 8) {
            throw new IllegalArgumentException(E.b.i(i3, "Cannot add invalid orientation: "));
        }
        this.b = (byte) i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i3;
        int i4;
        int i5 = this.f3250c;
        if (i5 < 2 || i5 > (i4 = f3249e)) {
            i3 = super.read();
        } else {
            i3 = i5 == i4 ? this.b : f3248d[i5 - 2] & UByte.MAX_VALUE;
        }
        if (i3 != -1) {
            this.f3250c++;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long jSkip = super.skip(j2);
        if (jSkip > 0) {
            this.f3250c = (int) (((long) this.f3250c) + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i3, int i4) throws IOException {
        int i5;
        int i6 = this.f3250c;
        int i7 = f3249e;
        if (i6 > i7) {
            i5 = super.read(bArr, i3, i4);
        } else if (i6 == i7) {
            bArr[i3] = this.b;
            i5 = 1;
        } else if (i6 < 2) {
            i5 = super.read(bArr, i3, 2 - i6);
        } else {
            int iMin = Math.min(i7 - i6, i4);
            System.arraycopy(f3248d, this.f3250c - 2, bArr, i3, iMin);
            i5 = iMin;
        }
        if (i5 > 0) {
            this.f3250c += i5;
        }
        return i5;
    }
}
