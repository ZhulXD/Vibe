package p027k0;

import com.bumptech.glide.load.data.l;
import java.util.ArrayDeque;
import p009d0.h;
import p009d0.i;
import p024j.C0269h;
import p025j0.g;
import p025j0.n;
import p025j0.o;
import p025j0.p;
import p025j0.q;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements q {
    public static final h b = h.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0269h f4948a;

    public a(C0269h c0269h) {
        this.f4948a = c0269h;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        g gVar = (g) obj;
        C0269h c0269h = this.f4948a;
        if (c0269h != null) {
            n nVar = (n) c0269h.f4518c;
            o oVarA = o.a(gVar);
            Object objA = nVar.a(oVarA);
            ArrayDeque arrayDeque = o.b;
            synchronized (arrayDeque) {
                arrayDeque.offer(oVarA);
            }
            g gVar2 = (g) objA;
            if (gVar2 == null) {
                nVar.d(o.a(gVar), gVar);
            } else {
                gVar = gVar2;
            }
        }
        return new p(gVar, new l(gVar, ((Integer) iVar.c(b)).intValue()));
    }

    @Override // p025j0.q
    public final /* bridge */ /* synthetic */ boolean b(Object obj) {
        return true;
    }
}
