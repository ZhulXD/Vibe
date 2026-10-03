package M;

import androidx.lifecycle.ViewModel;
import p041q.k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class c extends ViewModel {
    public static final b b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f1288a = new k();

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        super.onCleared();
        k kVar = this.f1288a;
        int i3 = kVar.f5260d;
        if (i3 > 0) {
            kVar.f5259c[0].getClass();
            throw new ClassCastException();
        }
        Object[] objArr = kVar.f5259c;
        for (int i4 = 0; i4 < i3; i4++) {
            objArr[i4] = null;
        }
        kVar.f5260d = 0;
    }
}
