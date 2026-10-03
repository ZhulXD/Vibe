package p030l0;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import p009d0.a;
import p009d0.h;
import p009d0.i;
import p009d0.j;
import p033m0.n;
import p033m0.q;
import p033m0.w;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ImageDecoder$OnHeaderDecodedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f5034a = w.a();
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5035c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f5036d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final n f5037e;
    public final boolean f;
    public final j g;

    public b(int i3, int i4, i iVar) {
        this.b = i3;
        this.f5035c = i4;
        this.f5036d = (a) iVar.c(q.f);
        this.f5037e = (n) iVar.c(n.g);
        h hVar = q.f5132i;
        this.f = iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue();
        this.g = (j) iVar.c(q.g);
    }

    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        if (this.f5034a.c(this.b, this.f5035c, this.f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f5036d == a.f3864c) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new a());
        Size size = imageInfo.getSize();
        int width = this.b;
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        int height = this.f5035c;
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fB = this.f5037e.b(size.getWidth(), size.getHeight(), width, height);
        int iRound = Math.round(size.getWidth() * fB);
        int iRound2 = Math.round(size.getHeight() * fB);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + iRound + "x" + iRound2 + "] scaleFactor: " + fB);
        }
        imageDecoder.setTargetSize(iRound, iRound2);
        j jVar = this.g;
        if (jVar != null) {
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get((jVar == j.b && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i3 >= 26) {
                ColorSpace.Named unused = ColorSpace.Named.SRGB;
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }
}
