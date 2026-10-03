package com.bumptech.glide.manager;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
final class LifecycleLifecycle implements h, LifecycleObserver {
    public final HashSet b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lifecycle f3256c;

    public LifecycleLifecycle(Lifecycle lifecycle) {
        this.f3256c = lifecycle;
        lifecycle.addObserver(this);
    }

    @Override // com.bumptech.glide.manager.h
    public final void b(i iVar) {
        this.b.add(iVar);
        Lifecycle lifecycle = this.f3256c;
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            iVar.onDestroy();
        } else if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            iVar.onStart();
        } else {
            iVar.c();
        }
    }

    @Override // com.bumptech.glide.manager.h
    public final void f(i iVar) {
        this.b.remove(iVar);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        ArrayList arrayListE = p063y0.n.e(this.b);
        int size = arrayListE.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            ((i) obj).onDestroy();
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(LifecycleOwner lifecycleOwner) {
        ArrayList arrayListE = p063y0.n.e(this.b);
        int size = arrayListE.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            ((i) obj).onStart();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(LifecycleOwner lifecycleOwner) {
        ArrayList arrayListE = p063y0.n.e(this.b);
        int size = arrayListE.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListE.get(i3);
            i3++;
            ((i) obj).c();
        }
    }
}
