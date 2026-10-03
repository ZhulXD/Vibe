package p023i1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4434a;
    public final /* synthetic */ y b;

    public /* synthetic */ j(y yVar, int i3) {
        this.f4434a = i3;
        this.b = yVar;
    }

    @Override // p023i1.y
    public final Object a(a aVar) {
        switch (this.f4434a) {
            case 0:
                return new AtomicLong(((Number) this.b.a(aVar)).longValue());
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.i()) {
                    arrayList.add(Long.valueOf(((Number) this.b.a(aVar)).longValue()));
                }
                aVar.e();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i3 = 0; i3 < size; i3++) {
                    atomicLongArray.set(i3, ((Long) arrayList.get(i3)).longValue());
                }
                return atomicLongArray;
            default:
                if (aVar.v() != 9) {
                    return this.b.a(aVar);
                }
                aVar.r();
                return null;
        }
    }

    @Override // p023i1.y
    public final void b(b bVar, Object obj) throws IOException {
        switch (this.f4434a) {
            case 0:
                this.b.b(bVar, Long.valueOf(((AtomicLong) obj).get()));
                break;
            case 1:
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                bVar.b();
                int length = atomicLongArray.length();
                for (int i3 = 0; i3 < length; i3++) {
                    this.b.b(bVar, Long.valueOf(atomicLongArray.get(i3)));
                }
                bVar.e();
                break;
            default:
                if (obj == null) {
                    bVar.i();
                } else {
                    this.b.b(bVar, obj);
                }
                break;
        }
    }
}
