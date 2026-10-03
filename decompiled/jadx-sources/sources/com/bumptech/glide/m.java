package com.bumptech.glide;

import com.bumptech.glide.manager.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements com.bumptech.glide.manager.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f3255a;
    public final /* synthetic */ n b;

    public m(n nVar, q qVar) {
        this.b = nVar;
        this.f3255a = qVar;
    }

    @Override // com.bumptech.glide.manager.a
    public final void a(boolean z2) {
        if (z2) {
            synchronized (this.b) {
                q qVar = this.f3255a;
                ArrayList arrayListE = p063y0.n.e((Set) qVar.f3271d);
                int size = arrayListE.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayListE.get(i3);
                    i3++;
                    p052u0.c cVar = (p052u0.c) obj;
                    if (!cVar.i() && !cVar.e()) {
                        cVar.clear();
                        if (qVar.f3270c) {
                            ((HashSet) qVar.f3272e).add(cVar);
                        } else {
                            cVar.g();
                        }
                    }
                }
            }
        }
    }
}
