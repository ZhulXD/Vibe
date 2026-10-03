package p025j0;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements h {
    public final Map b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Map f4631c;

    public k(Map map) {
        this.b = Collections.unmodifiableMap(map);
    }

    @Override // p025j0.h
    public final Map a() {
        if (this.f4631c == null) {
            synchronized (this) {
                try {
                    if (this.f4631c == null) {
                        this.f4631c = Collections.unmodifiableMap(b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f4631c;
    }

    public final HashMap b() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                String str = ((j) list.get(i3)).f4630a;
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    if (i3 != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            return this.b.equals(((k) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.b + '}';
    }
}
