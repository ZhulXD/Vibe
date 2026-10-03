package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f3267a;

    public n(q qVar) {
        this.f3267a = qVar;
    }

    @Override // com.bumptech.glide.manager.a
    public final void a(boolean z2) {
        ArrayList arrayList;
        p063y0.n.a();
        synchronized (this.f3267a) {
            arrayList = new ArrayList((HashSet) this.f3267a.f3272e);
        }
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((a) obj).a(z2);
        }
    }
}
