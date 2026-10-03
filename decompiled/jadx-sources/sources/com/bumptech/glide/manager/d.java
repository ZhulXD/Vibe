package com.bumptech.glide.manager;

import android.view.View;
import p033m0.w;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {
    public final /* synthetic */ e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f3258c;

    public d(e eVar, e eVar2) {
        this.f3258c = eVar;
        this.b = eVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVarA = w.a();
        wVarA.getClass();
        p063y0.n.a();
        wVarA.f5145d.set(true);
        this.f3258c.f3259c.f3260c = true;
        View view = this.f3258c.b;
        view.getViewTreeObserver().removeOnDrawListener(this.b);
        this.f3258c.f3259c.b.clear();
    }
}
