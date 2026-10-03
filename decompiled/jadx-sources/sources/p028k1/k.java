package p028k1;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p041q.c;
import p041q.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends AbstractSet {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f4975c;

    public /* synthetic */ k(int i3, Map map) {
        this.b = i3;
        this.f4975c = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.b) {
            case 0:
                ((m) this.f4975c).clear();
                break;
            case 1:
                ((m) this.f4975c).clear();
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        l lVarA;
        switch (this.b) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                m mVar = (m) this.f4975c;
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                l lVar = null;
                if (key != null) {
                    try {
                        lVarA = mVar.a(key, false);
                    } catch (ClassCastException unused) {
                        lVarA = null;
                    }
                    break;
                } else {
                    lVarA = null;
                }
                if (lVarA != null && Objects.equals(lVarA.f4980i, entry.getValue())) {
                    lVar = lVarA;
                }
                return lVar != null;
            case 1:
                return ((m) this.f4975c).containsKey(obj);
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.b) {
            case 0:
                return new j((m) this.f4975c, 0);
            case 1:
                return new j((m) this.f4975c, 1);
            default:
                return new c((e) this.f4975c);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        l lVarA;
        switch (this.b) {
            case 0:
                m mVar = (m) this.f4975c;
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                l lVar = null;
                if (key != null) {
                    try {
                        lVarA = mVar.a(key, false);
                    } catch (ClassCastException unused) {
                        lVarA = null;
                    }
                    break;
                } else {
                    lVarA = null;
                }
                if (lVarA != null && Objects.equals(lVarA.f4980i, entry.getValue())) {
                    lVar = lVarA;
                }
                if (lVar == null) {
                    return false;
                }
                mVar.c(lVar, true);
                return true;
            case 1:
                m mVar2 = (m) this.f4975c;
                l lVarA2 = null;
                if (obj != null) {
                    try {
                        lVarA2 = mVar2.a(obj, false);
                        break;
                    } catch (ClassCastException unused2) {
                    }
                }
                if (lVarA2 != null) {
                    mVar2.c(lVarA2, true);
                }
                return lVarA2 != null;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.b) {
            case 0:
                return ((m) this.f4975c).f4985e;
            case 1:
                return ((m) this.f4975c).f4985e;
            default:
                return ((e) this.f4975c).f5258d;
        }
    }
}
