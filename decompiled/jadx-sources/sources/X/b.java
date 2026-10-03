package X;

import java.util.ArrayList;
import java.util.ConcurrentModificationException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2308a;
    public final Object b;

    public b() {
        this.f2308a = 0;
        this.b = new ArrayList(3);
    }

    @Override // X.j
    public final void a(int i3) {
        switch (this.f2308a) {
            case 0:
                try {
                    ArrayList arrayList = (ArrayList) this.b;
                    int size = arrayList.size();
                    int i4 = 0;
                    while (i4 < size) {
                        Object obj = arrayList.get(i4);
                        i4++;
                        ((j) obj).a(i3);
                    }
                    return;
                } catch (ConcurrentModificationException e2) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e2);
                }
            default:
                ((androidx.viewpager2.adapter.c) this.b).b(false);
                return;
        }
    }

    @Override // X.j
    public void b(int i3, float f, int i4) {
        switch (this.f2308a) {
            case 0:
                try {
                    ArrayList arrayList = (ArrayList) this.b;
                    int size = arrayList.size();
                    int i5 = 0;
                    while (i5 < size) {
                        Object obj = arrayList.get(i5);
                        i5++;
                        ((j) obj).b(i3, f, i4);
                    }
                    return;
                } catch (ConcurrentModificationException e2) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e2);
                }
            default:
                return;
        }
    }

    @Override // X.j
    public final void c(int i3) {
        switch (this.f2308a) {
            case 0:
                try {
                    ArrayList arrayList = (ArrayList) this.b;
                    int size = arrayList.size();
                    int i4 = 0;
                    while (i4 < size) {
                        Object obj = arrayList.get(i4);
                        i4++;
                        ((j) obj).c(i3);
                    }
                    return;
                } catch (ConcurrentModificationException e2) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e2);
                }
            default:
                ((androidx.viewpager2.adapter.c) this.b).b(false);
                return;
        }
    }

    public b(androidx.viewpager2.adapter.c cVar) {
        this.f2308a = 1;
        this.b = cVar;
    }
}
