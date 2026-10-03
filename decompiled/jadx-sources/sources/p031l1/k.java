package p031l1;

import com.bumptech.glide.d;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import p023i1.p;
import p023i1.y;
import p036n1.c;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f5061a;

    public k(LinkedHashMap linkedHashMap) {
        this.f5061a = linkedHashMap;
    }

    @Override // p023i1.y
    public final Object a(a aVar) throws IOException {
        if (aVar.v() == 9) {
            aVar.r();
            return null;
        }
        Object objC = c();
        try {
            aVar.b();
            while (aVar.i()) {
                j jVar = (j) this.f5061a.get(aVar.p());
                if (jVar == null || !jVar.f5055e) {
                    aVar.B();
                } else {
                    e(objC, aVar, jVar);
                }
            }
            aVar.f();
            return d(objC);
        } catch (IllegalAccessException e2) {
            d dVar = c.f5154a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        } catch (IllegalStateException e3) {
            throw new p(e3);
        }
    }

    @Override // p023i1.y
    public final void b(b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.i();
            return;
        }
        bVar.c();
        try {
            Iterator it = this.f5061a.values().iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(bVar, obj);
            }
            bVar.f();
        } catch (IllegalAccessException e2) {
            d dVar = c.f5154a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        }
    }

    public abstract Object c();

    public abstract Object d(Object obj);

    public abstract void e(Object obj, a aVar, j jVar);
}
