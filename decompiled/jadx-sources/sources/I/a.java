package I;

import android.media.MediaDataSource;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends MediaDataSource {
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f1098c;

    public a(f fVar) {
        this.f1098c = fVar;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return -1L;
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j2, byte[] bArr, int i3, int i4) {
        if (i4 == 0) {
            return 0;
        }
        if (j2 < 0) {
            return -1;
        }
        try {
            long j3 = this.b;
            f fVar = this.f1098c;
            if (j3 != j2) {
                if (j3 >= 0 && j2 >= j3 + ((long) fVar.b.available())) {
                    return -1;
                }
                fVar.b(j2);
                this.b = j2;
            }
            if (i4 > fVar.b.available()) {
                i4 = fVar.b.available();
            }
            int i5 = fVar.read(bArr, i3, i4);
            if (i5 >= 0) {
                this.b += (long) i5;
                return i5;
            }
        } catch (IOException unused) {
        }
        this.b = -1L;
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
