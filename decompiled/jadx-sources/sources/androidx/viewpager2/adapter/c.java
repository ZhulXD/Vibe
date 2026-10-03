package androidx.viewpager2.adapter;

import E1.x;
import P.q0;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p041q.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public X.b f3047a;
    public q0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LifecycleEventObserver f3048c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ViewPager2 f3049d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3050e = -1;
    public final /* synthetic */ d f;

    public c(d dVar) {
        this.f = dVar;
    }

    public static ViewPager2 a(RecyclerView recyclerView) {
        ViewParent parent = recyclerView.getParent();
        if (parent instanceof ViewPager2) {
            return (ViewPager2) parent;
        }
        throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
    }

    public final void b(boolean z2) {
        int currentItem;
        Fragment fragment;
        d dVar = this.f;
        b bVar = dVar.f3055j;
        g gVar = dVar.f;
        FragmentManager fragmentManager = dVar.f3052e;
        if (fragmentManager.isStateSaved() || this.f3049d.getScrollState() != 0 || gVar.g() == 0) {
            return;
        }
        List list = ((x) dVar).f937n;
        if (list.size() != 0 && (currentItem = this.f3049d.getCurrentItem()) < list.size()) {
            long j2 = currentItem;
            if ((j2 != this.f3050e || z2) && (fragment = (Fragment) gVar.b(j2)) != null && fragment.isAdded()) {
                this.f3050e = j2;
                FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
                ArrayList arrayList = new ArrayList();
                int i3 = 0;
                Fragment fragment2 = null;
                for (int i4 = 0; i4 < gVar.g(); i4++) {
                    long jD = gVar.d(i4);
                    Fragment fragment3 = (Fragment) gVar.h(i4);
                    if (fragment3.isAdded()) {
                        if (jD != this.f3050e) {
                            fragmentTransactionBeginTransaction.setMaxLifecycle(fragment3, Lifecycle.State.STARTED);
                            bVar.getClass();
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = bVar.f3046a.iterator();
                            if (it.hasNext()) {
                                throw E.b.g(it);
                            }
                            arrayList.add(arrayList2);
                        } else {
                            fragment2 = fragment3;
                        }
                        fragment3.setMenuVisibility(jD == this.f3050e);
                    }
                }
                if (fragment2 != null) {
                    fragmentTransactionBeginTransaction.setMaxLifecycle(fragment2, Lifecycle.State.RESUMED);
                    bVar.getClass();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it2 = bVar.f3046a.iterator();
                    if (it2.hasNext()) {
                        throw E.b.g(it2);
                    }
                    arrayList.add(arrayList3);
                }
                if (fragmentTransactionBeginTransaction.isEmpty()) {
                    return;
                }
                fragmentTransactionBeginTransaction.commitNow();
                Collections.reverse(arrayList);
                int size = arrayList.size();
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    bVar.getClass();
                    b.a((List) obj);
                }
            }
        }
    }
}
