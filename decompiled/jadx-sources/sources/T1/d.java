package T1;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends OutputStream {
    public final BufferedOutputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2212d;

    public d(BufferedOutputStream out, long j2) {
        Intrinsics.checkNotNullParameter(out, "out");
        this.b = out;
        this.f2211c = j2;
    }

    @Override // java.io.OutputStream
    public final void write(int i3) throws IOException {
        if (this.f2212d > this.f2211c - ((long) 1)) {
            Intrinsics.checkNotNullParameter("Decoded output exceeds size limit", "message");
            throw new m("Decoded output exceeds size limit");
        }
        this.b.write(i3);
        this.f2212d++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] b, int i3, int i4) throws IOException {
        Intrinsics.checkNotNullParameter(b, "b");
        long j2 = i4;
        if (this.f2212d <= this.f2211c - j2) {
            this.b.write(b, i3, i4);
            this.f2212d += j2;
        } else {
            Intrinsics.checkNotNullParameter("Decoded output exceeds size limit", "message");
            throw new m("Decoded output exceeds size limit");
        }
    }
}
