package com.bumptech.glide.load.data;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends OutputStream {
    public final FileOutputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f3242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p016g0.g f3243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3244e;

    public c(FileOutputStream fileOutputStream, p016g0.g gVar) {
        this.b = fileOutputStream;
        this.f3243d = gVar;
        this.f3242c = (byte[]) gVar.c(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileOutputStream fileOutputStream = this.b;
        try {
            flush();
            fileOutputStream.close();
            byte[] bArr = this.f3242c;
            if (bArr != null) {
                this.f3243d.g(bArr);
                this.f3242c = null;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i3 = this.f3244e;
        FileOutputStream fileOutputStream = this.b;
        if (i3 > 0) {
            fileOutputStream.write(this.f3242c, 0, i3);
            this.f3244e = 0;
        }
        fileOutputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i3) throws IOException {
        byte[] bArr = this.f3242c;
        int i4 = this.f3244e;
        int i5 = i4 + 1;
        this.f3244e = i5;
        bArr[i4] = (byte) i3;
        if (i5 != bArr.length || i5 <= 0) {
            return;
        }
        this.b.write(bArr, 0, i5);
        this.f3244e = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i3, int i4) throws IOException {
        int i5 = 0;
        do {
            int i6 = i4 - i5;
            int i7 = i3 + i5;
            int i8 = this.f3244e;
            FileOutputStream fileOutputStream = this.b;
            if (i8 == 0 && i6 >= this.f3242c.length) {
                fileOutputStream.write(bArr, i7, i6);
                return;
            }
            int iMin = Math.min(i6, this.f3242c.length - i8);
            System.arraycopy(bArr, i7, this.f3242c, this.f3244e, iMin);
            int i9 = this.f3244e + iMin;
            this.f3244e = i9;
            i5 += iMin;
            byte[] bArr2 = this.f3242c;
            if (i9 == bArr2.length && i9 > 0) {
                fileOutputStream.write(bArr2, 0, i9);
                this.f3244e = 0;
            }
        } while (i5 < i4);
    }
}
