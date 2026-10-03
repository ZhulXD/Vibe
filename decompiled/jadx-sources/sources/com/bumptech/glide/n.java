package com.bumptech.glide;

import A1.u0;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.q;
import com.bumptech.glide.manager.r;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n implements ComponentCallbacks2, com.bumptech.glide.manager.i {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final p052u0.e f3273l;
    public final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f3274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.bumptech.glide.manager.h f3275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q f3276e;
    public final Y0.e f;
    public final r g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final u0 f3277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.bumptech.glide.manager.b f3278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f3279j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final p052u0.e f3280k;

    static {
        p052u0.e eVar = (p052u0.e) new p052u0.e().c(Bitmap.class);
        eVar.f5385m = true;
        f3273l = eVar;
        ((p052u0.e) new p052u0.e().c(p042q0.b.class)).f5385m = true;
    }

    public n(b bVar, com.bumptech.glide.manager.h hVar, Y0.e eVar, Context context) {
        p052u0.e eVar2;
        q qVar = new q();
        Y0.e eVar3 = bVar.g;
        this.g = new r();
        u0 u0Var = new u0(8, this);
        this.f3277h = u0Var;
        this.b = bVar;
        this.f3275d = hVar;
        this.f = eVar;
        this.f3276e = qVar;
        this.f3274c = context;
        Context applicationContext = context.getApplicationContext();
        m mVar = new m(this, qVar);
        eVar3.getClass();
        boolean z2 = ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z2 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        com.bumptech.glide.manager.b cVar = z2 ? new com.bumptech.glide.manager.c(applicationContext, mVar) : new com.bumptech.glide.manager.l();
        this.f3278i = cVar;
        synchronized (bVar.f3203h) {
            if (bVar.f3203h.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            bVar.f3203h.add(this);
        }
        char[] cArr = p063y0.n.f6026a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            hVar.b(this);
        } else {
            p063y0.n.f().post(u0Var);
        }
        hVar.b(cVar);
        this.f3279j = new CopyOnWriteArrayList(bVar.f3201d.f3210e);
        e eVar4 = bVar.f3201d;
        synchronized (eVar4) {
            try {
                if (eVar4.f3213j == null) {
                    eVar4.f3209d.getClass();
                    p052u0.e eVar5 = new p052u0.e();
                    eVar5.f5385m = true;
                    eVar4.f3213j = eVar5;
                }
                eVar2 = eVar4.f3213j;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            p052u0.e eVar6 = (p052u0.e) eVar2.clone();
            if (eVar6.f5385m && !eVar6.f5386n) {
                throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
            }
            eVar6.f5386n = true;
            eVar6.f5385m = true;
            this.f3280k = eVar6;
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final synchronized void c() {
        this.g.c();
        k();
    }

    public final void j(p054v0.f fVar) {
        if (fVar == null) {
            return;
        }
        boolean zM = m(fVar);
        p052u0.c cVarF = fVar.f();
        if (zM) {
            return;
        }
        b bVar = this.b;
        synchronized (bVar.f3203h) {
            try {
                ArrayList arrayList = bVar.f3203h;
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    if (((n) obj).m(fVar)) {
                        return;
                    }
                }
                if (cVarF != null) {
                    fVar.i(null);
                    cVarF.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void k() {
        q qVar = this.f3276e;
        qVar.f3270c = true;
        ArrayList arrayListE = p063y0.n.e((Set) qVar.f3271d);
        int size = arrayListE.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            p052u0.c cVar = (p052u0.c) obj;
            if (cVar.isRunning()) {
                cVar.pause();
                ((HashSet) qVar.f3272e).add(cVar);
            }
        }
    }

    public final synchronized void l() {
        q qVar = this.f3276e;
        int i3 = 0;
        qVar.f3270c = false;
        ArrayList arrayListE = p063y0.n.e((Set) qVar.f3271d);
        int size = arrayListE.size();
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            p052u0.c cVar = (p052u0.c) obj;
            if (!cVar.i() && !cVar.isRunning()) {
                cVar.g();
            }
        }
        ((HashSet) qVar.f3272e).clear();
    }

    public final synchronized boolean m(p054v0.f fVar) {
        p052u0.c cVarF = fVar.f();
        if (cVarF == null) {
            return true;
        }
        if (!this.f3276e.b(cVarF)) {
            return false;
        }
        this.g.b.remove(fVar);
        fVar.i(null);
        return true;
    }

    @Override // com.bumptech.glide.manager.i
    public final synchronized void onDestroy() {
        int i3;
        this.g.onDestroy();
        synchronized (this) {
            try {
                ArrayList arrayListE = p063y0.n.e(this.g.b);
                int size = arrayListE.size();
                i3 = 0;
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayListE.get(i4);
                    i4++;
                    j((p054v0.f) obj);
                }
                this.g.b.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        q qVar = this.f3276e;
        ArrayList arrayListE2 = p063y0.n.e((Set) qVar.f3271d);
        int size2 = arrayListE2.size();
        while (i3 < size2) {
            Object obj2 = arrayListE2.get(i3);
            i3++;
            qVar.b((p052u0.c) obj2);
        }
        ((HashSet) qVar.f3272e).clear();
        this.f3275d.f(this);
        this.f3275d.f(this.f3278i);
        p063y0.n.f().removeCallbacks(this.f3277h);
        b bVar = this.b;
        synchronized (bVar.f3203h) {
            if (!bVar.f3203h.contains(this)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            bVar.f3203h.remove(this);
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final synchronized void onStart() {
        l();
        this.g.onStart();
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f3276e + ", treeNode=" + this.f + "}";
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i3) {
    }
}
