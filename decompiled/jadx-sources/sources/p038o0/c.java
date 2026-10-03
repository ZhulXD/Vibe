package p038o0;

import A1.C0013d;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.n;
import p006c0.d;
import p014f0.C;
import p014f0.F;
import p016g0.g;
import p042q0.b;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements F, C {
    public final Drawable b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5157c;

    public c(Drawable drawable, int i3) {
        this.f5157c = i3;
        f.c(drawable, "Argument must not be null");
        this.b = drawable;
    }

    @Override // p014f0.C
    public void a() {
        switch (this.f5157c) {
            case 1:
                ((p042q0.f) ((b) this.b).b.b).f5284l.prepareToDraw();
                break;
            default:
                Drawable drawable = this.b;
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
                } else if (drawable instanceof b) {
                    ((p042q0.f) ((b) drawable).b.b).f5284l.prepareToDraw();
                }
                break;
        }
    }

    @Override // p014f0.F
    public final int c() {
        switch (this.f5157c) {
            case 0:
                Drawable drawable = this.b;
                return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
            default:
                p042q0.f fVar = (p042q0.f) ((b) this.b).b.b;
                d dVar = fVar.f5276a;
                return (dVar.f3133j.length * 4) + dVar.f3129d.limit() + dVar.f3132i.length + fVar.f5286n;
        }
    }

    @Override // p014f0.F
    public final Class d() {
        switch (this.f5157c) {
            case 0:
                return this.b.getClass();
            default:
                return b.class;
        }
    }

    @Override // p014f0.F
    public final void e() {
        g gVar;
        g gVar2;
        g gVar3;
        switch (this.f5157c) {
            case 0:
                break;
            default:
                b bVar = (b) this.b;
                bVar.stop();
                bVar.f5267e = true;
                p042q0.f fVar = (p042q0.f) bVar.b.b;
                n nVar = fVar.f5278d;
                fVar.f5277c.clear();
                Bitmap bitmap = fVar.f5284l;
                if (bitmap != null) {
                    fVar.f5279e.f(bitmap);
                    fVar.f5284l = null;
                }
                fVar.f = false;
                p042q0.d dVar = fVar.f5281i;
                if (dVar != null) {
                    nVar.j(dVar);
                    fVar.f5281i = null;
                }
                p042q0.d dVar2 = fVar.f5283k;
                if (dVar2 != null) {
                    nVar.j(dVar2);
                    fVar.f5283k = null;
                }
                p042q0.d dVar3 = fVar.f5285m;
                if (dVar3 != null) {
                    nVar.j(dVar3);
                    fVar.f5285m = null;
                }
                d dVar4 = fVar.f5276a;
                C0013d c0013d = dVar4.f3128c;
                dVar4.f3135l = null;
                byte[] bArr = dVar4.f3132i;
                if (bArr != null && (gVar3 = (g) c0013d.f178d) != null) {
                    gVar3.g(bArr);
                }
                int[] iArr = dVar4.f3133j;
                if (iArr != null && (gVar2 = (g) c0013d.f178d) != null) {
                    gVar2.g(iArr);
                }
                Bitmap bitmap2 = dVar4.f3136m;
                if (bitmap2 != null) {
                    ((p016g0.b) c0013d.f177c).f(bitmap2);
                }
                dVar4.f3136m = null;
                dVar4.f3129d = null;
                dVar4.f3142s = null;
                byte[] bArr2 = dVar4.f3130e;
                if (bArr2 != null && (gVar = (g) c0013d.f178d) != null) {
                    gVar.g(bArr2);
                }
                fVar.f5282j = true;
                break;
        }
    }

    @Override // p014f0.F
    public final Object get() {
        Drawable drawable = this.b;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }

    private final void b() {
    }
}
