package com.bumptech.glide.manager;

import androidx.lifecycle.Lifecycle;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements i {
    public final /* synthetic */ Lifecycle b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f3261c;

    public j(k kVar, Lifecycle lifecycle) {
        this.f3261c = kVar;
        this.b = lifecycle;
    }

    @Override // com.bumptech.glide.manager.i
    public final void onDestroy() {
        this.f3261c.f3262a.remove(this.b);
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
    }
}
