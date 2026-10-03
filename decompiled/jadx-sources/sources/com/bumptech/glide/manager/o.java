package com.bumptech.glide.manager;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Runnable {
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p f3268c;

    public o(p pVar, boolean z2) {
        this.f3268c = pVar;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p063y0.n.a();
        p003b0.c cVar = this.f3268c.f3269a;
        boolean z2 = cVar.f3077a;
        boolean z3 = this.b;
        cVar.f3077a = z3;
        if (z2 != z3) {
            ((n) cVar.b).a(z3);
        }
    }
}
