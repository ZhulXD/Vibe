package S;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E {
    public final View b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1955a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1956c = new ArrayList();

    public E(View view) {
        this.b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof E)) {
            return false;
        }
        E e2 = (E) obj;
        return this.b == e2.b && this.f1955a.equals(e2.f1955a);
    }

    public final int hashCode() {
        return this.f1955a.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        String strG = kotlin.collections.unsigned.a.g(("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.b + "\n", "    values:");
        HashMap map = this.f1955a;
        for (String str : map.keySet()) {
            strG = strG + "    " + str + ": " + map.get(str) + "\n";
        }
        return strG;
    }
}
