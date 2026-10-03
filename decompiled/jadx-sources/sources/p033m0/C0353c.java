package p033m0;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import androidx.core.view.n;
import com.google.android.material.datepicker.c;
import java.io.IOException;
import p006c0.d;
import p009d0.i;
import p009d0.k;
import p014f0.F;
import p016g0.b;

/* JADX INFO: renamed from: m0.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0353c implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5119a;
    public final b b;

    public C0353c() {
        this.f5119a = 0;
        this.b = new c(6);
    }

    @Override // p009d0.k
    public final /* bridge */ /* synthetic */ boolean a(Object obj, i iVar) {
        switch (this.f5119a) {
            case 0:
                n.s(obj);
                break;
            default:
                break;
        }
        return true;
    }

    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) {
        switch (this.f5119a) {
            case 0:
                return c(n.d(obj), i3, i4, iVar);
            default:
                return C0354d.b(((d) obj).b(), this.b);
        }
    }

    public C0354d c(ImageDecoder.Source source, int i3, int i4, i iVar) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new p030l0.b(i3, i4, iVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i3 + "x" + i4 + "]");
        }
        return new C0354d(bitmapDecodeBitmap, (c) this.b);
    }

    public C0353c(b bVar) {
        this.f5119a = 1;
        this.b = bVar;
    }
}
