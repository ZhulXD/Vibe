package androidx.fragment.app;

import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements SavedStateRegistry.SavedStateProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2913a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e(int i3, Object obj) {
        this.f2913a = i3;
        this.b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        switch (this.f2913a) {
            case 0:
                return ((FragmentActivity) this.b).lambda$init$0();
            default:
                return ((FragmentManager) this.b).lambda$attachController$5();
        }
    }
}
