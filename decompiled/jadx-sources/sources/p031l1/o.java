package p031l1;

import com.google.gson.reflect.TypeToken;
import p023i1.l;
import p023i1.y;
import p023i1.z;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements z {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Class f5068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f5069d;

    public /* synthetic */ o(Class cls, y yVar, int i3) {
        this.b = i3;
        this.f5068c = cls;
        this.f5069d = yVar;
    }

    @Override // p023i1.z
    public final y a(l lVar, TypeToken typeToken) {
        switch (this.b) {
            case 0:
                if (typeToken.getRawType() == this.f5068c) {
                    return this.f5069d;
                }
                return null;
            default:
                Class<?> rawType = typeToken.getRawType();
                if (this.f5068c.isAssignableFrom(rawType)) {
                    return new b(this, rawType);
                }
                return null;
        }
    }

    public final String toString() {
        switch (this.b) {
            case 0:
                return "Factory[type=" + this.f5068c.getName() + ",adapter=" + this.f5069d + "]";
            default:
                return "Factory[typeHierarchy=" + this.f5068c.getName() + ",adapter=" + this.f5069d + "]";
        }
    }
}
