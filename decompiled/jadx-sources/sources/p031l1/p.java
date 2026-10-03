package p031l1;

import com.google.gson.reflect.TypeToken;
import p023i1.l;
import p023i1.y;
import p023i1.z;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements z {
    public final /* synthetic */ Class b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Class f5070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f5071d;

    public p(Class cls, Class cls2, y yVar) {
        this.b = cls;
        this.f5070c = cls2;
        this.f5071d = yVar;
    }

    @Override // p023i1.z
    public final y a(l lVar, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        if (rawType == this.b || rawType == this.f5070c) {
            return this.f5071d;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f5070c.getName() + "+" + this.b.getName() + ",adapter=" + this.f5071d + "]";
    }
}
