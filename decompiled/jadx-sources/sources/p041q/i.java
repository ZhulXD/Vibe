package p041q;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import p024j.C0269h;
import p043r.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5253a;
    public final C0269h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f5254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5256e;
    public int f;

    public i(int i3) {
        this.f5253a = i3;
        if (i3 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.b = new C0269h(11);
        this.f5254c = new b();
    }

    public final Object a(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.f5254c) {
            C0269h c0269h = this.b;
            c0269h.getClass();
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = ((LinkedHashMap) c0269h.f4518c).get(key);
            if (obj != null) {
                this.f5256e++;
                return obj;
            }
            this.f++;
            Intrinsics.checkNotNullParameter(key, "key");
            return null;
        }
    }

    public final Object b(Object key, Object value) {
        Object oldValue;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.f5254c) {
            try {
                int i3 = this.f5255d;
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value, "value");
                this.f5255d = i3 + 1;
                C0269h c0269h = this.b;
                c0269h.getClass();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value, "value");
                oldValue = ((LinkedHashMap) c0269h.f4518c).put(key, value);
                if (oldValue != null) {
                    int i4 = this.f5255d;
                    Intrinsics.checkNotNullParameter(key, "key");
                    Intrinsics.checkNotNullParameter(oldValue, "value");
                    this.f5255d = i4 - 1;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (oldValue != null) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        }
        c(this.f5253a);
        return oldValue;
    }

    public final void c(int i3) {
        Object key;
        Object oldValue;
        while (true) {
            synchronized (this.f5254c) {
                try {
                    if (this.f5255d < 0 || (((LinkedHashMap) this.b.f4518c).isEmpty() && this.f5255d != 0)) {
                        break;
                    }
                    if (this.f5255d > i3 && !((LinkedHashMap) this.b.f4518c).isEmpty()) {
                        Set setEntrySet = ((LinkedHashMap) this.b.f4518c).entrySet();
                        Intrinsics.checkNotNullExpressionValue(setEntrySet, "map.entries");
                        Map.Entry entry = (Map.Entry) CollectionsKt___CollectionsKt.firstOrNull(setEntrySet);
                        if (entry == null) {
                            return;
                        }
                        key = entry.getKey();
                        oldValue = entry.getValue();
                        C0269h c0269h = this.b;
                        c0269h.getClass();
                        Intrinsics.checkNotNullParameter(key, "key");
                        ((LinkedHashMap) c0269h.f4518c).remove(key);
                        int i4 = this.f5255d;
                        Intrinsics.checkNotNullParameter(key, "key");
                        Intrinsics.checkNotNullParameter(oldValue, "value");
                        this.f5255d = i4 - 1;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        }
        throw new IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
    }

    public final String toString() {
        String str;
        synchronized (this.f5254c) {
            try {
                int i3 = this.f5256e;
                int i4 = this.f + i3;
                str = "LruCache[maxSize=" + this.f5253a + ",hits=" + this.f5256e + ",misses=" + this.f + ",hitRate=" + (i4 != 0 ? (i3 * 100) / i4 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
