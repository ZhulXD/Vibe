package p011e;

import S1.c;
import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: renamed from: e.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0246h implements SavedStateRegistry.SavedStateProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f4147a;

    public C0246h(c cVar) {
        this.f4147a = cVar;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        Bundle bundle = new Bundle();
        this.f4147a.k().getClass();
        return bundle;
    }
}
