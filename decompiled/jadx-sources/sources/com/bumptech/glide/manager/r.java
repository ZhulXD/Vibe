package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements i {
    public final Set b = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.i
    public final void c() {
        ArrayList arrayListE = p063y0.n.e(this.b);
        int size = arrayListE.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            ((p054v0.f) obj).c();
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final void onDestroy() {
        ArrayList arrayListE = p063y0.n.e(this.b);
        int size = arrayListE.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            ((p054v0.f) obj).onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
        ArrayList arrayListE = p063y0.n.e(this.b);
        int size = arrayListE.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            ((p054v0.f) obj).onStart();
        }
    }
}
