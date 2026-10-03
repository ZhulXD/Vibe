package S;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransitionImpl;
import com.minhub.gamehub.R;
import java.util.ArrayList;

/* JADX INFO: renamed from: S.n, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C0181n extends FragmentTransitionImpl {
    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void addTarget(Object obj, View view) {
        if (obj != null) {
            ((v) obj).b(view);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void addTargets(Object obj, ArrayList arrayList) {
        v vVar = (v) obj;
        if (vVar == null) {
            return;
        }
        int i3 = 0;
        if (vVar instanceof B) {
            B b = (B) vVar;
            int size = b.f1949F.size();
            while (i3 < size) {
                addTargets(b.P(i3), arrayList);
                i3++;
            }
            return;
        }
        if (FragmentTransitionImpl.isNullOrEmpty(vVar.f) && FragmentTransitionImpl.isNullOrEmpty(null) && FragmentTransitionImpl.isNullOrEmpty(null) && FragmentTransitionImpl.isNullOrEmpty(vVar.g)) {
            int size2 = arrayList.size();
            while (i3 < size2) {
                vVar.b((View) arrayList.get(i3));
                i3++;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void animateToEnd(Object obj) {
        s sVar = (s) obj;
        sVar.g();
        sVar.f2005d.a(sVar.g.f2036y + 1);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void animateToStart(Object obj, Runnable runnable) {
        s sVar = (s) obj;
        sVar.f = runnable;
        sVar.g();
        sVar.f2005d.a(0.0f);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void beginDelayedTransition(ViewGroup viewGroup, Object obj) {
        z.a(viewGroup, (v) obj);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final boolean canHandle(Object obj) {
        return obj instanceof v;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object cloneTransition(Object obj) {
        if (obj != null) {
            return ((v) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object controlDelayedTransition(ViewGroup viewGroup, Object obj) {
        v vVar = (v) obj;
        ArrayList arrayList = z.f2041c;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut() || Build.VERSION.SDK_INT < 34) {
            return null;
        }
        if (!vVar.u()) {
            throw new IllegalArgumentException("The Transition must support seeking.");
        }
        arrayList.add(viewGroup);
        v vVarClone = vVar.clone();
        B b = new B();
        b.O(vVarClone);
        z.c(viewGroup, b);
        viewGroup.setTag(R.id.transition_current_scene, null);
        y yVar = new y();
        yVar.b = b;
        yVar.f2039c = viewGroup;
        viewGroup.addOnAttachStateChangeListener(yVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(yVar);
        viewGroup.invalidate();
        s sVar = new s(b);
        b.f2037z = sVar;
        b.a(sVar);
        return b.f2037z;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final boolean isSeekingSupported() {
        return true;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object mergeTransitionsInSequence(Object obj, Object obj2, Object obj3) {
        v vVar = (v) obj;
        v vVar2 = (v) obj2;
        v vVar3 = (v) obj3;
        if (vVar != null && vVar2 != null) {
            B b = new B();
            b.O(vVar);
            b.O(vVar2);
            b.S(1);
            vVar = b;
        } else if (vVar == null) {
            vVar = vVar2 != null ? vVar2 : null;
        }
        if (vVar3 == null) {
            return vVar;
        }
        B b3 = new B();
        if (vVar != null) {
            b3.O(vVar);
        }
        b3.O(vVar3);
        return b3;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object mergeTransitionsTogether(Object obj, Object obj2, Object obj3) {
        B b = new B();
        if (obj != null) {
            b.O((v) obj);
        }
        if (obj2 != null) {
            b.O((v) obj2);
        }
        if (obj3 != null) {
            b.O((v) obj3);
        }
        return b;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void removeTarget(Object obj, View view) {
        if (obj != null) {
            ((v) obj).C(view);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void replaceTargets(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        v vVar = (v) obj;
        int i3 = 0;
        if (vVar instanceof B) {
            B b = (B) vVar;
            int size = b.f1949F.size();
            while (i3 < size) {
                replaceTargets(b.P(i3), arrayList, arrayList2);
                i3++;
            }
            return;
        }
        if (FragmentTransitionImpl.isNullOrEmpty(vVar.f) && FragmentTransitionImpl.isNullOrEmpty(null) && FragmentTransitionImpl.isNullOrEmpty(null)) {
            ArrayList arrayList3 = vVar.g;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size2 = arrayList2 == null ? 0 : arrayList2.size();
                while (i3 < size2) {
                    vVar.b((View) arrayList2.get(i3));
                    i3++;
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    vVar.C((View) arrayList.get(size3));
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void scheduleHideFragmentView(Object obj, View view, ArrayList arrayList) {
        ((v) obj).a(new C0178k(view, arrayList));
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void scheduleRemoveTargets(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((v) obj).a(new C0179l(this, obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void setCurrentPlayTime(Object obj, float f) {
        s sVar = (s) obj;
        boolean z2 = sVar.b;
        if (z2) {
            B b = sVar.g;
            long j2 = b.f2036y;
            long j3 = (long) (f * j2);
            if (j3 == 0) {
                j3 = 1;
            }
            if (j3 == j2) {
                j3 = j2 - 1;
            }
            if (sVar.f2005d != null) {
                throw new IllegalStateException("setCurrentPlayTimeMillis() called after animation has been started");
            }
            long j4 = sVar.f2003a;
            if (j3 == j4 || !z2) {
                return;
            }
            if (!sVar.f2004c) {
                if (j3 == 0 && j4 > 0) {
                    j3 = -1;
                } else if (j3 == j2 && j4 < j2) {
                    j3 = j2 + 1;
                }
                if (j3 != j4) {
                    b.F(j3, j4);
                    sVar.f2003a = j3;
                }
            }
            F f3 = sVar.f2006e;
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            int i3 = (f3.f1957a + 1) % 20;
            f3.f1957a = i3;
            ((long[]) f3.b)[i3] = jCurrentAnimationTimeMillis;
            ((float[]) f3.f1958c)[i3] = j3;
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void setEpicenter(Object obj, View view) {
        if (view != null) {
            getBoundsOnScreen(view, new Rect());
            ((v) obj).H(new C0177j());
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void setListenerForTransitionEnd(Fragment fragment, Object obj, CancellationSignal cancellationSignal, Runnable runnable) {
        setListenerForTransitionEnd(fragment, obj, cancellationSignal, null, runnable);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void setSharedElementTargets(Object obj, View view, ArrayList arrayList) {
        B b = (B) obj;
        ArrayList arrayList2 = b.g;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            FragmentTransitionImpl.bfsAddViewChildren(arrayList2, (View) arrayList.get(i3));
        }
        arrayList2.add(view);
        arrayList.add(view);
        addTargets(b, arrayList);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void swapSharedElementTargets(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        B b = (B) obj;
        if (b != null) {
            ArrayList arrayList3 = b.g;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            replaceTargets(b, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object wrapTransitionInSet(Object obj) {
        if (obj == null) {
            return null;
        }
        B b = new B();
        b.O((v) obj);
        return b;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final boolean isSeekingSupported(Object obj) {
        boolean zU = ((v) obj).u();
        if (!zU) {
            Log.v(FragmentManager.TAG, "Predictive back not available for AndroidX Transition " + obj + ". Please enable seeking support for the designated transition by overriding isSeekingSupported().");
        }
        return zU;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void setListenerForTransitionEnd(Fragment fragment, Object obj, CancellationSignal cancellationSignal, final Runnable runnable, final Runnable runnable2) {
        final v vVar = (v) obj;
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: S.i
            @Override // androidx.core.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                Runnable runnable3 = runnable;
                if (runnable3 != null) {
                    runnable3.run();
                } else {
                    vVar.d();
                    runnable2.run();
                }
            }
        });
        vVar.a(new C0180m(runnable2));
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void setEpicenter(Object obj, Rect rect) {
        if (obj != null) {
            ((v) obj).H(new C0177j());
        }
    }
}
