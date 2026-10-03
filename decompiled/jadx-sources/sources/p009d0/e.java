package p009d0;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p016g0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface e {
    ImageHeaderParser$ImageType a(ByteBuffer byteBuffer);

    int b(InputStream inputStream, g gVar);

    int c(ByteBuffer byteBuffer, g gVar);

    ImageHeaderParser$ImageType d(InputStream inputStream);
}
