package p033m0;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;
import p014f0.F;
import p063y0.f;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A implements F {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5109c;

    public /* synthetic */ A(int i3, Object obj) {
        this.b = i3;
        this.f5109c = obj;
    }

    @Override // p014f0.F
    public final int c() {
        switch (this.b) {
            case 0:
                return n.c((Bitmap) this.f5109c);
            case 1:
                return ((byte[]) this.f5109c).length;
            case 2:
                return n.d(Bitmap.Config.ARGB_8888) * ((AnimatedImageDrawable) this.f5109c).getIntrinsicHeight() * ((AnimatedImageDrawable) this.f5109c).getIntrinsicWidth() * 2;
            default:
                return 1;
        }
    }

    @Override // p014f0.F
    public final Class d() {
        switch (this.b) {
            case 0:
                return Bitmap.class;
            case 1:
                return byte[].class;
            case 2:
                return Drawable.class;
            default:
                return ((File) this.f5109c).getClass();
        }
    }

    @Override // p014f0.F
    public final void e() {
        switch (this.b) {
            case 2:
                ((AnimatedImageDrawable) this.f5109c).stop();
                ((AnimatedImageDrawable) this.f5109c).clearAnimationCallbacks();
                break;
        }
    }

    @Override // p014f0.F
    public final Object get() {
        switch (this.b) {
            case 0:
                return (Bitmap) this.f5109c;
            case 1:
                return (byte[]) this.f5109c;
            case 2:
                return (AnimatedImageDrawable) this.f5109c;
            default:
                return (File) this.f5109c;
        }
    }

    public A(byte[] bArr) {
        this.b = 1;
        f.c(bArr, "Argument must not be null");
        this.f5109c = bArr;
    }

    public A(File file) {
        this.b = 3;
        f.c(file, "Argument must not be null");
        this.f5109c = file;
    }

    private final void a() {
    }

    private final void b() {
    }

    private final void f() {
    }
}
