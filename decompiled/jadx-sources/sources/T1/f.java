package T1;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends InputStream {
    public final InputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2215c;

    public f(InputStream input, long j2) {
        Intrinsics.checkNotNullParameter(input, "input");
        this.b = input;
        this.f2215c = j2;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (this.f2215c == 0) {
            return -1;
        }
        int i3 = this.b.read();
        if (i3 >= 0) {
            this.f2215c--;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final int read(byte[] b, int i3, int i4) throws IOException {
        Intrinsics.checkNotNullParameter(b, "b");
        long j2 = this.f2215c;
        if (j2 == 0) {
            return -1;
        }
        int i5 = this.b.read(b, i3, (int) Math.min(i4, j2));
        if (i5 > 0) {
            this.f2215c -= (long) i5;
        }
        return i5;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
