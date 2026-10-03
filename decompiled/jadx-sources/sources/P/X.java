package P;

import android.database.Observable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class X extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((Y) ((Observable) this).mObservers.get(size)).a();
        }
    }

    public final void c(int i3, int i4) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((Y) ((Observable) this).mObservers.get(size)).d(i3, i4);
        }
    }

    public final void d(int i3, int i4) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((Y) ((Observable) this).mObservers.get(size)).b(i3, i4);
        }
    }

    public final void e(int i3, int i4) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((Y) ((Observable) this).mObservers.get(size)).c(i3, i4);
        }
    }

    public final void f(int i3, int i4) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((Y) ((Observable) this).mObservers.get(size)).e(i3, i4);
        }
    }
}
