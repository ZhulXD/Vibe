package p063y0;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f6021a = new LinkedHashMap(100, 0.75f, true);
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f6022c;

    public j(long j2) {
        this.b = j2;
    }

    public final synchronized Object a(Object obj) {
        i iVar;
        iVar = (i) this.f6021a.get(obj);
        return iVar != null ? iVar.f6020a : null;
    }

    public int b(Object obj) {
        return 1;
    }

    public final synchronized Object d(Object obj, Object obj2) {
        int iB = b(obj2);
        long j2 = iB;
        if (j2 >= this.b) {
            c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f6022c += j2;
        }
        i iVar = (i) this.f6021a.put(obj, obj2 == null ? null : new i(iB, obj2));
        if (iVar != null) {
            this.f6022c -= (long) iVar.b;
            if (!iVar.f6020a.equals(obj2)) {
                c(obj, iVar.f6020a);
            }
        }
        e(this.b);
        return iVar != null ? iVar.f6020a : null;
    }

    public final synchronized void e(long j2) {
        while (this.f6022c > j2) {
            Iterator it = this.f6021a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            i iVar = (i) entry.getValue();
            this.f6022c -= (long) iVar.b;
            Object key = entry.getKey();
            it.remove();
            c(key, iVar.f6020a);
        }
    }

    public void c(Object obj, Object obj2) {
    }
}
