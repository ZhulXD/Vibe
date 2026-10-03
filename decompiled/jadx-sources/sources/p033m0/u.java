package p033m0;

import I.c;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p009d0.e;
import p016g0.g;
import p063y0.a;
import p063y0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u implements e {
    @Override // p009d0.e
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // p009d0.e
    public final int b(InputStream inputStream, g gVar) throws Throwable {
        int iE;
        I.g gVar2 = new I.g(inputStream);
        c cVarC = gVar2.c("Orientation");
        if (cVarC == null) {
            iE = 1;
        } else {
            try {
                iE = cVarC.e(gVar2.f);
            } catch (NumberFormatException unused) {
                iE = 1;
            }
        }
        if (iE == 0) {
            return -1;
        }
        return iE;
    }

    @Override // p009d0.e
    public final int c(ByteBuffer byteBuffer, g gVar) {
        AtomicReference atomicReference = b.f6013a;
        return b(new a(byteBuffer), gVar);
    }

    @Override // p009d0.e
    public final ImageHeaderParser$ImageType d(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }
}
