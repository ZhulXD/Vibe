package M;

import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import java.io.PrintWriter;
import p041q.k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1289a;
    public final c b;

    public d(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.f1289a = lifecycleOwner;
        this.b = (c) new ViewModelProvider(viewModelStore, c.b).get(c.class);
    }

    public final void b(String str, PrintWriter printWriter) {
        k kVar = this.b.f1288a;
        if (kVar.f5260d > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (kVar.f5260d <= 0) {
                return;
            }
            if (kVar.f5259c[0] != null) {
                throw new ClassCastException();
            }
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(kVar.b[0]);
            printWriter.print(": ");
            throw null;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.f1289a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
