package p033m0;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import p014f0.C;
import p014f0.F;
import p016g0.b;
import p063y0.f;
import p063y0.n;

/* JADX INFO: renamed from: m0.d, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0354d implements F, C {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f5121d;

    public C0354d(Bitmap bitmap, b bVar) {
        f.c(bitmap, "Bitmap must not be null");
        this.f5120c = bitmap;
        f.c(bVar, "BitmapPool must not be null");
        this.f5121d = bVar;
    }

    public static C0354d b(Bitmap bitmap, b bVar) {
        if (bitmap == null) {
            return null;
        }
        return new C0354d(bitmap, bVar);
    }

    @Override // p014f0.C
    public final void a() {
        switch (this.b) {
            case 0:
                ((Bitmap) this.f5120c).prepareToDraw();
                break;
            default:
                F f = (F) this.f5121d;
                if (f instanceof C) {
                    ((C) f).a();
                }
                break;
        }
    }

    @Override // p014f0.F
    public final int c() {
        switch (this.b) {
            case 0:
                return n.c((Bitmap) this.f5120c);
            default:
                return ((F) this.f5121d).c();
        }
    }

    @Override // p014f0.F
    public final Class d() {
        switch (this.b) {
            case 0:
                return Bitmap.class;
            default:
                return BitmapDrawable.class;
        }
    }

    @Override // p014f0.F
    public final void e() {
        switch (this.b) {
            case 0:
                ((b) this.f5121d).f((Bitmap) this.f5120c);
                break;
            default:
                ((F) this.f5121d).e();
                break;
        }
    }

    @Override // p014f0.F
    public final Object get() {
        switch (this.b) {
            case 0:
                return (Bitmap) this.f5120c;
            default:
                return new BitmapDrawable((Resources) this.f5120c, (Bitmap) ((F) this.f5121d).get());
        }
    }

    public C0354d(Resources resources, F f) {
        f.c(resources, "Argument must not be null");
        this.f5120c = resources;
        f.c(f, "Argument must not be null");
        this.f5121d = f;
    }
}
