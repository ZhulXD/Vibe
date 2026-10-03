package com.minhub.gamehub.hub.catalog;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\u0007H\u0016J \u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/ZipEfsPatchingStream;", "Ljava/io/FilterInputStream;", "source", "Ljava/io/InputStream;", "<init>", "(Ljava/io/InputStream;)V", "state", "", "read", "buf", "", "off", "len", "patch", "b", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ZipEfsPatchingStream extends FilterInputStream {
    private int state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZipEfsPatchingStream(InputStream source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    /* JADX WARN: Code duplicated, block: B:13:0x001a A[PHI: r0
      0x001a: PHI (r0v3 int) = (r0v2 int), (r0v4 int) binds: [B:16:0x001e, B:10:0x0014] A[DONT_GENERATE, DONT_INLINE]] */
    private final int patch(int b) {
        int i3;
        int i4 = 1;
        int i5 = 0;
        switch (this.state) {
            case 0:
                if (b != 80) {
                    i4 = 0;
                }
                i5 = i4;
                break;
            case 1:
                if (b == 75) {
                    i4 = 2;
                } else if (b != 80) {
                    i4 = 0;
                }
                i5 = i4;
                break;
            case 2:
                i3 = 3;
                if (b == 3) {
                    i4 = i3;
                } else if (b != 80) {
                    i4 = 0;
                }
                i5 = i4;
                break;
            case 3:
                i3 = 4;
                if (b == 4) {
                    i4 = i3;
                } else if (b != 80) {
                    i4 = 0;
                }
                i5 = i4;
                break;
            case 4:
                i5 = 5;
                break;
            case 5:
                i5 = 6;
                break;
            case 6:
                i5 = 7;
                break;
            case 7:
                b &= 247;
                break;
        }
        this.state = i5;
        return b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i3 = ((FilterInputStream) this).in.read();
        return i3 < 0 ? i3 : patch(i3);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buf, int off, int len) throws IOException {
        Intrinsics.checkNotNullParameter(buf, "buf");
        int i3 = ((FilterInputStream) this).in.read(buf, off, len);
        if (i3 > 0) {
            int i4 = off + i3;
            while (off < i4) {
                buf[off] = (byte) patch(buf[off] & UByte.MAX_VALUE);
                off++;
            }
        }
        return i3;
    }
}
