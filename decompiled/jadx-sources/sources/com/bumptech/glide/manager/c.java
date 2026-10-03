package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements b {
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.bumptech.glide.m f3257c;

    public c(Context context, com.bumptech.glide.m mVar) {
        this.b = context.getApplicationContext();
        this.f3257c = mVar;
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
        q qVarC = q.c(this.b);
        com.bumptech.glide.m mVar = this.f3257c;
        synchronized (qVarC) {
            ((HashSet) qVarC.f3272e).remove(mVar);
            if (qVarC.f3270c && ((HashSet) qVarC.f3272e).isEmpty()) {
                p003b0.c cVar = (p003b0.c) qVarC.f3271d;
                ((ConnectivityManager) ((p014f0.q) cVar.f3078c).get()).unregisterNetworkCallback((p) cVar.f3079d);
                qVarC.f3270c = false;
            }
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
        q qVarC = q.c(this.b);
        com.bumptech.glide.m mVar = this.f3257c;
        synchronized (qVarC) {
            ((HashSet) qVarC.f3272e).add(mVar);
            qVarC.e();
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final void onDestroy() {
    }
}
