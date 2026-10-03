package I;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends b {
    public f(byte[] bArr) {
        super(bArr);
        this.b.mark(IntCompanionObject.MAX_VALUE);
    }

    public final void b(long j2) throws IOException {
        int i3 = this.f1100d;
        if (i3 > j2) {
            this.f1100d = 0;
            this.b.reset();
        } else {
            j2 -= (long) i3;
        }
        a((int) j2);
    }

    public f(InputStream inputStream) {
        super(inputStream);
        if (inputStream.markSupported()) {
            this.b.mark(IntCompanionObject.MAX_VALUE);
            return;
        }
        throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
    }
}
