package p025j0;

import com.bumptech.glide.h;
import java.util.ArrayList;
import java.util.HashSet;
import p065z0.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final x f4648e = new x();
    public static final C f = new C(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f4651d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f4649a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f4650c = new HashSet();
    public final x b = f4648e;

    public y(d dVar) {
        this.f4651d = dVar;
    }

    public final synchronized q a(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = this.f4649a;
            int size = arrayList2.size();
            boolean z2 = false;
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                w wVar = (w) obj;
                if (this.f4650c.contains(wVar)) {
                    z2 = true;
                } else if (wVar.f4646a.isAssignableFrom(cls) && wVar.b.isAssignableFrom(cls2)) {
                    this.f4650c.add(wVar);
                    arrayList.add(wVar.f4647c.l(this));
                    this.f4650c.remove(wVar);
                }
            }
            if (arrayList.size() > 1) {
                x xVar = this.b;
                d dVar = this.f4651d;
                xVar.getClass();
                return new v(arrayList, dVar);
            }
            if (arrayList.size() == 1) {
                return (q) arrayList.get(0);
            }
            if (z2) {
                return f;
            }
            throw new h("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            this.f4650c.clear();
            throw th;
        }
    }

    public final synchronized ArrayList b(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            ArrayList arrayList2 = this.f4649a;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                w wVar = (w) obj;
                if (!this.f4650c.contains(wVar) && wVar.f4646a.isAssignableFrom(cls)) {
                    this.f4650c.add(wVar);
                    arrayList.add(wVar.f4647c.l(this));
                    this.f4650c.remove(wVar);
                }
            }
        } catch (Throwable th) {
            this.f4650c.clear();
            throw th;
        }
        return arrayList;
    }

    public final synchronized ArrayList c(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = this.f4649a;
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            w wVar = (w) obj;
            if (!arrayList.contains(wVar.b) && wVar.f4646a.isAssignableFrom(cls)) {
                arrayList.add(wVar.b);
            }
        }
        return arrayList;
    }
}
