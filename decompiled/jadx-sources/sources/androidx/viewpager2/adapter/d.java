package androidx.viewpager2.adapter;

import A1.u0;
import E1.x;
import P.W;
import P.q0;
import P.y0;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.util.Preconditions;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.minhub.gamehub.hub.SettingsActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p041q.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d extends W implements f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Lifecycle f3051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FragmentManager f3052e;
    public final g f;
    public final g g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g f3053h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f3054i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b f3055j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3056k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3057l;

    public d(SettingsActivity settingsActivity) {
        FragmentManager supportFragmentManager = settingsActivity.getSupportFragmentManager();
        Lifecycle lifecycle = settingsActivity.getLifecycle();
        this.f = new g();
        this.g = new g();
        this.f3053h = new g();
        b bVar = new b();
        bVar.f3046a = new CopyOnWriteArrayList();
        this.f3055j = bVar;
        this.f3056k = false;
        this.f3057l = false;
        this.f3052e = supportFragmentManager;
        this.f3051d = lifecycle;
        if (this.f1643a.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.b = true;
    }

    public static void k(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    @Override // P.W
    public final long b(int i3) {
        return i3;
    }

    @Override // P.W
    public final void d(RecyclerView recyclerView) {
        Preconditions.checkArgument(this.f3054i == null);
        final c cVar = new c(this);
        this.f3054i = cVar;
        ViewPager2 viewPager2A = c.a(recyclerView);
        cVar.f3049d = viewPager2A;
        X.b bVar = new X.b(cVar);
        cVar.f3047a = bVar;
        ((ArrayList) viewPager2A.f3060d.b).add(bVar);
        q0 q0Var = new q0(1, cVar);
        cVar.b = q0Var;
        this.f1643a.registerObserver(q0Var);
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                cVar.b(false);
            }
        };
        cVar.f3048c = lifecycleEventObserver;
        this.f3051d.addObserver(lifecycleEventObserver);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // P.W
    public final void e(y0 y0Var, int i3) {
        e eVar = (e) y0Var;
        long j2 = eVar.f1810e;
        FrameLayout frameLayout = (FrameLayout) eVar.f1807a;
        int id = frameLayout.getId();
        Long lN = n(id);
        g gVar = this.f3053h;
        if (lN != null && lN.longValue() != j2) {
            p(lN.longValue());
            gVar.f(lN.longValue());
        }
        gVar.e(j2, Integer.valueOf(id));
        long j3 = i3;
        g gVar2 = this.f;
        if (gVar2.c(j3) < 0) {
            Fragment fragment = (Fragment) ((x) this).f937n.get(i3);
            fragment.setInitialSavedState((Fragment.SavedState) this.g.b(j3));
            gVar2.e(j3, fragment);
        }
        if (frameLayout.isAttachedToWindow()) {
            o(eVar);
        }
        m();
    }

    @Override // P.W
    public final y0 f(ViewGroup viewGroup) {
        int i3 = e.f3058u;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setId(View.generateViewId());
        frameLayout.setSaveEnabled(false);
        return new e(frameLayout);
    }

    @Override // P.W
    public final void g(RecyclerView recyclerView) {
        c cVar = this.f3054i;
        cVar.getClass();
        ViewPager2 viewPager2A = c.a(recyclerView);
        ((ArrayList) viewPager2A.f3060d.b).remove(cVar.f3047a);
        d dVar = cVar.f;
        dVar.f1643a.unregisterObserver(cVar.b);
        dVar.f3051d.removeObserver(cVar.f3048c);
        cVar.f3049d = null;
        this.f3054i = null;
    }

    @Override // P.W
    public final /* bridge */ /* synthetic */ boolean h(y0 y0Var) {
        return true;
    }

    @Override // P.W
    public final void i(y0 y0Var) {
        o((e) y0Var);
        m();
    }

    @Override // P.W
    public final void j(y0 y0Var) {
        Long lN = n(((FrameLayout) ((e) y0Var).f1807a).getId());
        if (lN != null) {
            p(lN.longValue());
            this.f3053h.f(lN.longValue());
        }
    }

    public final boolean l(long j2) {
        return j2 >= 0 && j2 < ((long) ((x) this).f937n.size());
    }

    public final void m() {
        g gVar;
        g gVar2;
        Fragment fragment;
        View view;
        if (!this.f3057l || this.f3052e.isStateSaved()) {
            return;
        }
        p041q.f fVar = new p041q.f(0);
        int i3 = 0;
        while (true) {
            gVar = this.f;
            int iG = gVar.g();
            gVar2 = this.f3053h;
            if (i3 >= iG) {
                break;
            }
            long jD = gVar.d(i3);
            if (!l(jD)) {
                fVar.add(Long.valueOf(jD));
                gVar2.f(jD);
            }
            i3++;
        }
        if (!this.f3056k) {
            this.f3057l = false;
            for (int i4 = 0; i4 < gVar.g(); i4++) {
                long jD2 = gVar.d(i4);
                if (gVar2.c(jD2) < 0 && ((fragment = (Fragment) gVar.b(jD2)) == null || (view = fragment.getView()) == null || view.getParent() == null)) {
                    fVar.add(Long.valueOf(jD2));
                }
            }
        }
        p041q.a aVar = new p041q.a(fVar);
        while (aVar.hasNext()) {
            p(((Long) aVar.next()).longValue());
        }
    }

    public final Long n(int i3) {
        Long lValueOf = null;
        int i4 = 0;
        while (true) {
            g gVar = this.f3053h;
            if (i4 >= gVar.g()) {
                return lValueOf;
            }
            if (((Integer) gVar.h(i4)).intValue() == i3) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(gVar.d(i4));
            }
            i4++;
        }
    }

    public final void o(final e eVar) {
        Fragment fragment = (Fragment) this.f.b(eVar.f1810e);
        if (fragment == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout frameLayout = (FrameLayout) eVar.f1807a;
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        boolean zIsAdded = fragment.isAdded();
        FragmentManager fragmentManager = this.f3052e;
        if (zIsAdded && view == null) {
            fragmentManager.registerFragmentLifecycleCallbacks(new a(this, fragment, frameLayout), false);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != frameLayout) {
                k(view, frameLayout);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            k(view, frameLayout);
            return;
        }
        if (fragmentManager.isStateSaved()) {
            if (fragmentManager.isDestroyed()) {
                return;
            }
            this.f3051d.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    d dVar = this.f3043c;
                    if (dVar.f3052e.isStateSaved()) {
                        return;
                    }
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    e eVar2 = eVar;
                    if (((FrameLayout) eVar2.f1807a).isAttachedToWindow()) {
                        dVar.o(eVar2);
                    }
                }
            });
            return;
        }
        fragmentManager.registerFragmentLifecycleCallbacks(new a(this, fragment, frameLayout), false);
        b bVar = this.f3055j;
        bVar.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = bVar.f3046a.iterator();
        if (it.hasNext()) {
            throw E.b.g(it);
        }
        try {
            fragment.setMenuVisibility(false);
            fragmentManager.beginTransaction().add(fragment, "f" + eVar.f1810e).setMaxLifecycle(fragment, Lifecycle.State.STARTED).commitNow();
            this.f3054i.b(false);
        } finally {
            b.a(arrayList);
        }
    }

    public final void p(long j2) {
        ViewParent parent;
        g gVar = this.f;
        Fragment fragment = (Fragment) gVar.b(j2);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        boolean zL = l(j2);
        g gVar2 = this.g;
        if (!zL) {
            gVar2.f(j2);
        }
        if (!fragment.isAdded()) {
            gVar.f(j2);
            return;
        }
        FragmentManager fragmentManager = this.f3052e;
        if (fragmentManager.isStateSaved()) {
            this.f3057l = true;
            return;
        }
        boolean zIsAdded = fragment.isAdded();
        b bVar = this.f3055j;
        if (zIsAdded && l(j2)) {
            bVar.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator it = bVar.f3046a.iterator();
            if (it.hasNext()) {
                throw E.b.g(it);
            }
            Fragment.SavedState savedStateSaveFragmentInstanceState = fragmentManager.saveFragmentInstanceState(fragment);
            b.a(arrayList);
            gVar2.e(j2, savedStateSaveFragmentInstanceState);
        }
        bVar.getClass();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = bVar.f3046a.iterator();
        if (it2.hasNext()) {
            throw E.b.g(it2);
        }
        try {
            fragmentManager.beginTransaction().remove(fragment).commitNow();
            gVar.f(j2);
        } finally {
            b.a(arrayList2);
        }
    }

    public final void q(Parcelable parcelable) {
        g gVar = this.g;
        if (gVar.g() == 0) {
            g gVar2 = this.f;
            if (gVar2.g() == 0) {
                Bundle bundle = (Bundle) parcelable;
                if (bundle.getClassLoader() == null) {
                    bundle.setClassLoader(getClass().getClassLoader());
                }
                for (String str : bundle.keySet()) {
                    if (str.startsWith("f#") && str.length() > 2) {
                        gVar2.e(Long.parseLong(str.substring(2)), this.f3052e.getFragment(bundle, str));
                    } else {
                        if (!str.startsWith("s#") || str.length() <= 2) {
                            throw new IllegalArgumentException("Unexpected key in savedState: ".concat(str));
                        }
                        long j2 = Long.parseLong(str.substring(2));
                        Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                        if (l(j2)) {
                            gVar.e(j2, savedState);
                        }
                    }
                }
                if (gVar2.g() == 0) {
                    return;
                }
                this.f3057l = true;
                this.f3056k = true;
                m();
                final Handler handler = new Handler(Looper.getMainLooper());
                final u0 u0Var = new u0(7, this);
                this.f3051d.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$4
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        if (event == Lifecycle.Event.ON_DESTROY) {
                            handler.removeCallbacks(u0Var);
                            lifecycleOwner.getLifecycle().removeObserver(this);
                        }
                    }
                });
                handler.postDelayed(u0Var, 10000L);
                return;
            }
        }
        throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
    }
}
