package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends FragmentManager.FragmentLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f3045a;
    public final /* synthetic */ FrameLayout b;

    public a(d dVar, Fragment fragment, FrameLayout frameLayout) {
        this.f3045a = fragment;
        this.b = frameLayout;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public final void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view, Bundle bundle) {
        if (fragment == this.f3045a) {
            fragmentManager.unregisterFragmentLifecycleCallbacks(this);
            d.k(view, this.b);
        }
    }
}
