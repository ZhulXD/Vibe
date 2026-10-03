package S;

import android.view.ViewGroup;
import com.minhub.gamehub.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0168a f2040a = new C0168a();
    public static final ThreadLocal b = new ThreadLocal();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList f2041c = new ArrayList();

    public static void a(ViewGroup viewGroup, v vVar) {
        ArrayList arrayList = f2041c;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (vVar == null) {
            vVar = f2040a;
        }
        v vVarClone = vVar.clone();
        c(viewGroup, vVarClone);
        viewGroup.setTag(R.id.transition_current_scene, null);
        y yVar = new y();
        yVar.b = vVarClone;
        yVar.f2039c = viewGroup;
        viewGroup.addOnAttachStateChangeListener(yVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(yVar);
    }

    public static p041q.e b() {
        p041q.e eVar;
        ThreadLocal threadLocal = b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (eVar = (p041q.e) weakReference.get()) != null) {
            return eVar;
        }
        p041q.e eVar2 = new p041q.e(0);
        threadLocal.set(new WeakReference(eVar2));
        return eVar2;
    }

    public static void c(ViewGroup viewGroup, v vVar) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                ((v) obj).z(viewGroup);
            }
        }
        if (vVar != null) {
            vVar.i(viewGroup, true);
        }
        if (viewGroup.getTag(R.id.transition_current_scene) != null) {
            throw new ClassCastException();
        }
    }
}
