package p011e;

import S1.c;
import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;

/* JADX INFO: renamed from: e.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0247i implements OnContextAvailableListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f4148a;

    public C0247i(c cVar) {
        this.f4148a = cVar;
    }

    @Override // androidx.activity.contextaware.OnContextAvailableListener
    public final void onContextAvailable(Context context) {
        c cVar = this.f4148a;
        p pVarK = cVar.k();
        pVarK.a();
        cVar.getSavedStateRegistry().consumeRestoredStateForKey("androidx:appcompat");
        pVarK.e();
    }
}
