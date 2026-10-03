package T1;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends InputStream {
    public final BufferedInputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f2216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function0 f2218e;

    public g(BufferedInputStream input, byte[] bArr, Function0 cancel) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(cancel, "cancel");
        this.b = input;
        this.f2216c = bArr;
        this.f2217d = 21L;
        this.f2218e = cancel;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr) < 0) {
            return -1;
        }
        return bArr[0] & UByte.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public final int read(byte[] b, int i3, int i4) throws IOException {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(b, "b");
        if (((Boolean) this.f2218e.invoke()).booleanValue()) {
            throw new b();
        }
        int i5 = this.b.read(b, i3, i4);
        if (i5 > 0 && (bArr = this.f2216c) != null) {
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = i3 + i6;
                b[i7] = (byte) (b[i7] ^ bArr[(int) ((this.f2217d + ((long) i6)) % ((long) bArr.length))]);
            }
        }
        if (i5 > 0) {
            this.f2217d += (long) i5;
        }
        return i5;
    }
}
