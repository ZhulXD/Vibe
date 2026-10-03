package p031l1;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p023i1.p;
import p023i1.y;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5072a;

    public /* synthetic */ q(int i3) {
        this.f5072a = i3;
    }

    @Override // p023i1.y
    public final Object a(a aVar) {
        switch (this.f5072a) {
            case 0:
                return new AtomicBoolean(aVar.l());
            default:
                try {
                    return new AtomicInteger(aVar.n());
                } catch (NumberFormatException e2) {
                    throw new p(e2);
                }
        }
    }

    @Override // p023i1.y
    public final void b(b bVar, Object obj) throws IOException {
        switch (this.f5072a) {
            case 0:
                bVar.p(((AtomicBoolean) obj).get());
                break;
            default:
                bVar.m(((AtomicInteger) obj).get());
                break;
        }
    }
}
