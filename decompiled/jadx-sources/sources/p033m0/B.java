package p033m0;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.io.File;
import p009d0.i;
import p009d0.k;
import p014f0.F;
import p038o0.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5110a;

    public /* synthetic */ B(int i3) {
        this.f5110a = i3;
    }

    @Override // p009d0.k
    public final /* bridge */ /* synthetic */ boolean a(Object obj, i iVar) {
        switch (this.f5110a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return true;
    }

    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) {
        switch (this.f5110a) {
            case 0:
                return new A(0, (Bitmap) obj);
            case 1:
                Drawable drawable = (Drawable) obj;
                if (drawable != null) {
                    return new c(drawable, 0);
                }
                return null;
            default:
                return new A((File) obj);
        }
    }
}
