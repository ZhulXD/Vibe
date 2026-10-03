package p033m0;

import A1.C0013d;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.InputStream;
import java.util.ArrayDeque;
import p009d0.i;
import p009d0.k;
import p014f0.F;
import p016g0.b;
import p016g0.g;
import p038o0.c;
import p038o0.d;
import p063y0.e;

/* JADX INFO: renamed from: m0.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0351a implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5115a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5116c;

    public /* synthetic */ C0351a(int i3, Object obj, Object obj2) {
        this.f5115a = i3;
        this.b = obj;
        this.f5116c = obj2;
    }

    @Override // p009d0.k
    public final boolean a(Object obj, i iVar) {
        switch (this.f5115a) {
            case 0:
                return ((k) this.b).a(obj, iVar);
            case 1:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                ((q) this.b).getClass();
                return true;
        }
    }

    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) {
        boolean z2;
        x xVar;
        e eVar;
        switch (this.f5115a) {
            case 0:
                F fB = ((k) this.b).b(obj, i3, i4, iVar);
                Resources resources = (Resources) this.f5116c;
                if (fB == null) {
                    return null;
                }
                return new C0354d(resources, fB);
            case 1:
                F fC = ((d) this.b).c((Uri) obj, iVar);
                if (fC == null) {
                    return null;
                }
                return s.a((b) this.f5116c, (Drawable) ((c) fC).get(), i3, i4);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof x) {
                    xVar = (x) inputStream;
                    z2 = false;
                } else {
                    z2 = true;
                    xVar = new x(inputStream, (g) this.f5116c);
                }
                ArrayDeque arrayDeque = e.f6016d;
                synchronized (arrayDeque) {
                    eVar = (e) arrayDeque.poll();
                    break;
                }
                if (eVar == null) {
                    eVar = new e();
                }
                e eVar2 = eVar;
                eVar2.b = xVar;
                p063y0.k kVar = new p063y0.k(eVar2);
                C0013d c0013d = new C0013d(17, xVar, eVar2);
                try {
                    q qVar = (q) this.b;
                    C0354d c0354dA = qVar.a(new F.b(kVar, qVar.f5137d, qVar.f5136c), i3, i4, iVar, c0013d);
                    eVar2.f6017c = null;
                    eVar2.b = null;
                    synchronized (arrayDeque) {
                        arrayDeque.offer(eVar2);
                        break;
                    }
                    return c0354dA;
                } finally {
                    eVar2.f6017c = null;
                    eVar2.b = null;
                    ArrayDeque arrayDeque2 = e.f6016d;
                    synchronized (arrayDeque2) {
                        arrayDeque2.offer(eVar2);
                        if (z2) {
                            xVar.b();
                        }
                    }
                }
        }
    }

    public C0351a(Resources resources, k kVar) {
        this.f5115a = 0;
        this.f5116c = resources;
        this.b = kVar;
    }
}
