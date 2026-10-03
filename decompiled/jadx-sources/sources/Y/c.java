package Y;

import java.util.ArrayList;
import p009d0.l;
import p049t0.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2378a;

    public c(int i3) {
        switch (i3) {
            case 2:
                this.f2378a = new ArrayList();
                break;
            case 3:
                this.f2378a = new ArrayList();
                break;
            case 4:
                this.f2378a = new ArrayList();
                break;
            default:
                this.f2378a = new ArrayList();
                break;
        }
    }

    public synchronized l a(Class cls) {
        int size = this.f2378a.size();
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = (d) this.f2378a.get(i3);
            if (dVar.f5323a.isAssignableFrom(cls)) {
                return dVar.b;
            }
        }
        return null;
    }

    public synchronized ArrayList b(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        ArrayList arrayList2 = this.f2378a;
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            p044r0.b bVar = (p044r0.b) obj;
            if ((bVar.f5294a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.b)) && !arrayList.contains(bVar.b)) {
                arrayList.add(bVar.b);
            }
        }
        return arrayList;
    }

    public c(ArrayList arrayList) {
        this.f2378a = arrayList;
    }
}
