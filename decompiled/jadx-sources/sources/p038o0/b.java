package p038o0;

import A1.C0013d;
import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p000a.a;
import p009d0.i;
import p009d0.k;
import p014f0.F;
import p016g0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5156a;
    public final C0013d b;

    public /* synthetic */ b(C0013d c0013d, int i3) {
        this.f5156a = i3;
        this.b = c0013d;
    }

    @Override // p009d0.k
    public final boolean a(Object obj, i iVar) throws IOException {
        switch (this.f5156a) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeN = a.n((ArrayList) this.b.f177c, (ByteBuffer) obj);
                return imageHeaderParser$ImageTypeN == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeN == ImageHeaderParser$ImageType.ANIMATED_AVIF);
            default:
                C0013d c0013d = this.b;
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeM = a.m((ArrayList) c0013d.f177c, (InputStream) obj, (g) c0013d.f178d);
                return imageHeaderParser$ImageTypeM == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeM == ImageHeaderParser$ImageType.ANIMATED_AVIF);
        }
    }

    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) {
        switch (this.f5156a) {
            case 0:
                return C0013d.i(ImageDecoder.createSource((ByteBuffer) obj), i3, i4, iVar);
            default:
                return C0013d.i(ImageDecoder.createSource(p063y0.b.b((InputStream) obj)), i3, i4, iVar);
        }
    }
}
