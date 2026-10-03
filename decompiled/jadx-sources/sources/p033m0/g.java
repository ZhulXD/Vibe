package p033m0;

import android.graphics.ImageDecoder;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p009d0.i;
import p009d0.k;
import p014f0.F;
import p063y0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5123a;
    public final C0353c b;

    public g(int i3) {
        this.f5123a = i3;
        switch (i3) {
            case 1:
                this.b = new C0353c();
                break;
            default:
                this.b = new C0353c();
                break;
        }
    }

    @Override // p009d0.k
    public final /* bridge */ /* synthetic */ boolean a(Object obj, i iVar) {
        switch (this.f5123a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }

    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) {
        switch (this.f5123a) {
            case 0:
                return this.b.c(ImageDecoder.createSource((ByteBuffer) obj), i3, i4, iVar);
            default:
                return this.b.c(ImageDecoder.createSource(b.b((InputStream) obj)), i3, i4, iVar);
        }
    }
}
