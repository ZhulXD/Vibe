package com.bumptech.glide.manager;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f3262a = new HashMap();
    public final Y0.e b;

    public k(Y0.e eVar) {
        this.b = eVar;
    }

    public final com.bumptech.glide.n a(Context context, com.bumptech.glide.b bVar, Lifecycle lifecycle, FragmentManager fragmentManager, boolean z2) {
        p063y0.n.a();
        p063y0.n.a();
        HashMap map = this.f3262a;
        com.bumptech.glide.n nVar = (com.bumptech.glide.n) map.get(lifecycle);
        if (nVar != null) {
            return nVar;
        }
        LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
        Y0.e eVar = new Y0.e(this, fragmentManager);
        this.b.getClass();
        com.bumptech.glide.n nVar2 = new com.bumptech.glide.n(bVar, lifecycleLifecycle, eVar, context);
        map.put(lifecycle, nVar2);
        lifecycleLifecycle.b(new j(this, lifecycle));
        if (z2) {
            nVar2.onStart();
        }
        return nVar2;
    }
}
