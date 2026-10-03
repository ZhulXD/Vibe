package p028k1;

import E.b;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p023i1.l;
import p023i1.y;
import p023i1.z;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements z, Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g f4969d;
    public List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f4970c;

    static {
        g gVar = new g();
        List list = Collections.EMPTY_LIST;
        gVar.b = list;
        gVar.f4970c = list;
        f4969d = gVar;
    }

    public static boolean c(Class cls) {
        if (Enum.class.isAssignableFrom(cls) || (cls.getModifiers() & 8) != 0) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    @Override // p023i1.z
    public final y a(l lVar, TypeToken typeToken) {
        boolean z2;
        boolean z3;
        boolean zC = c(typeToken.getRawType());
        if (zC) {
            z2 = true;
        } else {
            b(true);
            z2 = false;
        }
        if (zC) {
            z3 = true;
        } else {
            b(false);
            z3 = false;
        }
        if (z2 || z3) {
            return new f(this, z3, z2, lVar, typeToken);
        }
        return null;
    }

    public final void b(boolean z2) {
        Iterator it = (z2 ? this.b : this.f4970c).iterator();
        if (it.hasNext()) {
            throw b.g(it);
        }
    }

    public final Object clone() {
        try {
            return (g) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }
}
