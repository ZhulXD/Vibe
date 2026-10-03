package S;

import C1.U1;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class v implements Cloneable {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final Animator[] f2011B = new Animator[0];

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int[] f2012C = {2, 1, 3, 4};

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final Y0.e f2013D = new Y0.e(13);

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final ThreadLocal f2014E = new ThreadLocal();

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f2015A;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList f2023l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f2024m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public t[] f2025n;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public com.bumptech.glide.c f2034w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f2036y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public s f2037z;
    public final String b = getClass().getName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2016c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2017d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TimeInterpolator f2018e = null;
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public N1.w f2019h = new N1.w();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public N1.w f2020i = new N1.w();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public B f2021j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f2022k = f2012C;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ArrayList f2026o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Animator[] f2027p = f2011B;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2028q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2029r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2030s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public v f2031t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList f2032u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ArrayList f2033v = new ArrayList();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Y0.e f2035x = f2013D;

    public static void c(N1.w wVar, View view, E e2) {
        p041q.e eVar = (p041q.e) wVar.f1493a;
        p041q.e eVar2 = (p041q.e) wVar.f1495d;
        SparseArray sparseArray = (SparseArray) wVar.b;
        p041q.g gVar = (p041q.g) wVar.f1494c;
        eVar.put(view, e2);
        int id = view.getId();
        if (id >= 0) {
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (eVar2.containsKey(transitionName)) {
                eVar2.put(transitionName, null);
            } else {
                eVar2.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (gVar.c(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    gVar.e(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) gVar.b(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    gVar.e(itemIdAtPosition, null);
                }
            }
        }
    }

    public static p041q.e q() {
        ThreadLocal threadLocal = f2014E;
        p041q.e eVar = (p041q.e) threadLocal.get();
        if (eVar != null) {
            return eVar;
        }
        p041q.e eVar2 = new p041q.e(0);
        threadLocal.set(eVar2);
        return eVar2;
    }

    public static boolean x(E e2, E e3, String str) {
        Object obj = e2.f1955a.get(str);
        Object obj2 = e3.f1955a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A() {
        p041q.e eVarQ = q();
        this.f2036y = 0L;
        for (int i3 = 0; i3 < this.f2033v.size(); i3++) {
            Animator animator = (Animator) this.f2033v.get(i3);
            C0183p c0183p = (C0183p) eVarQ.get(animator);
            if (animator != null && c0183p != null) {
                Animator animator2 = c0183p.f;
                long j2 = this.f2017d;
                if (j2 >= 0) {
                    animator2.setDuration(j2);
                }
                long j3 = this.f2016c;
                if (j3 >= 0) {
                    animator2.setStartDelay(animator2.getStartDelay() + j3);
                }
                TimeInterpolator timeInterpolator = this.f2018e;
                if (timeInterpolator != null) {
                    animator2.setInterpolator(timeInterpolator);
                }
                this.f2026o.add(animator);
                this.f2036y = Math.max(this.f2036y, AbstractC0184q.a(animator));
            }
        }
        this.f2033v.clear();
    }

    public v B(t tVar) {
        v vVar;
        ArrayList arrayList = this.f2032u;
        if (arrayList != null) {
            if (!arrayList.remove(tVar) && (vVar = this.f2031t) != null) {
                vVar.B(tVar);
            }
            if (this.f2032u.size() == 0) {
                this.f2032u = null;
            }
        }
        return this;
    }

    public void C(View view) {
        this.g.remove(view);
    }

    public void D(View view) {
        if (this.f2029r) {
            if (!this.f2030s) {
                ArrayList arrayList = this.f2026o;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f2027p);
                this.f2027p = f2011B;
                for (int i3 = size - 1; i3 >= 0; i3--) {
                    Animator animator = animatorArr[i3];
                    animatorArr[i3] = null;
                    animator.resume();
                }
                this.f2027p = animatorArr;
                y(this, u.f, false);
            }
            this.f2029r = false;
        }
    }

    public void E() {
        M();
        p041q.e eVarQ = q();
        ArrayList arrayList = this.f2033v;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            Animator animator = (Animator) obj;
            if (eVarQ.containsKey(animator)) {
                M();
                if (animator != null) {
                    animator.addListener(new U1(this, eVarQ));
                    long j2 = this.f2017d;
                    if (j2 >= 0) {
                        animator.setDuration(j2);
                    }
                    long j3 = this.f2016c;
                    if (j3 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j3);
                    }
                    TimeInterpolator timeInterpolator = this.f2018e;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new E0.a(2, this));
                    animator.start();
                }
            }
        }
        this.f2033v.clear();
        n();
    }

    public void F(long j2, long j3) {
        long j4 = this.f2036y;
        int i3 = 0;
        boolean z2 = j2 < j3;
        if ((j3 < 0 && j2 >= 0) || (j3 > j4 && j2 <= j4)) {
            this.f2030s = false;
            y(this, u.b, z2);
        }
        ArrayList arrayList = this.f2026o;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f2027p);
        this.f2027p = f2011B;
        while (i3 < size) {
            Animator animator = animatorArr[i3];
            animatorArr[i3] = null;
            AbstractC0184q.b(animator, Math.min(Math.max(0L, j2), AbstractC0184q.a(animator)));
            i3++;
            j4 = j4;
        }
        long j5 = j4;
        this.f2027p = animatorArr;
        if ((j2 <= j5 || j3 > j5) && (j2 >= 0 || j3 < 0)) {
            return;
        }
        if (j2 > j5) {
            this.f2030s = true;
        }
        y(this, u.f2007c, z2);
    }

    public void G(long j2) {
        this.f2017d = j2;
    }

    public void H(com.bumptech.glide.c cVar) {
        this.f2034w = cVar;
    }

    public void I(TimeInterpolator timeInterpolator) {
        this.f2018e = timeInterpolator;
    }

    public void J(Y0.e eVar) {
        if (eVar == null) {
            this.f2035x = f2013D;
        } else {
            this.f2035x = eVar;
        }
    }

    public void L(long j2) {
        this.f2016c = j2;
    }

    public final void M() {
        if (this.f2028q == 0) {
            y(this, u.b, false);
            this.f2030s = false;
        }
        this.f2028q++;
    }

    public String N(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.f2017d != -1) {
            sb.append("dur(");
            sb.append(this.f2017d);
            sb.append(") ");
        }
        if (this.f2016c != -1) {
            sb.append("dly(");
            sb.append(this.f2016c);
            sb.append(") ");
        }
        if (this.f2018e != null) {
            sb.append("interp(");
            sb.append(this.f2018e);
            sb.append(") ");
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        ArrayList arrayList2 = this.g;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    if (i3 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i3));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                    if (i4 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i4));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void a(t tVar) {
        if (this.f2032u == null) {
            this.f2032u = new ArrayList();
        }
        this.f2032u.add(tVar);
    }

    public void b(View view) {
        this.g.add(view);
    }

    public void d() {
        ArrayList arrayList = this.f2026o;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f2027p);
        this.f2027p = f2011B;
        for (int i3 = size - 1; i3 >= 0; i3--) {
            Animator animator = animatorArr[i3];
            animatorArr[i3] = null;
            animator.cancel();
        }
        this.f2027p = animatorArr;
        y(this, u.f2008d, false);
    }

    public abstract void e(E e2);

    public final void f(View view, boolean z2) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            E e2 = new E(view);
            if (z2) {
                h(e2);
            } else {
                e(e2);
            }
            e2.f1956c.add(this);
            g(e2);
            if (z2) {
                c(this.f2019h, view, e2);
            } else {
                c(this.f2020i, view, e2);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                f(viewGroup.getChildAt(i3), z2);
            }
        }
    }

    public abstract void h(E e2);

    public final void i(ViewGroup viewGroup, boolean z2) {
        j(z2);
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        ArrayList arrayList2 = this.g;
        if (size <= 0 && arrayList2.size() <= 0) {
            f(viewGroup, z2);
            return;
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            View viewFindViewById = viewGroup.findViewById(((Integer) arrayList.get(i3)).intValue());
            if (viewFindViewById != null) {
                E e2 = new E(viewFindViewById);
                if (z2) {
                    h(e2);
                } else {
                    e(e2);
                }
                e2.f1956c.add(this);
                g(e2);
                if (z2) {
                    c(this.f2019h, viewFindViewById, e2);
                } else {
                    c(this.f2020i, viewFindViewById, e2);
                }
            }
        }
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            View view = (View) arrayList2.get(i4);
            E e3 = new E(view);
            if (z2) {
                h(e3);
            } else {
                e(e3);
            }
            e3.f1956c.add(this);
            g(e3);
            if (z2) {
                c(this.f2019h, view, e3);
            } else {
                c(this.f2020i, view, e3);
            }
        }
    }

    public final void j(boolean z2) {
        if (z2) {
            ((p041q.e) this.f2019h.f1493a).clear();
            ((SparseArray) this.f2019h.b).clear();
            ((p041q.g) this.f2019h.f1494c).a();
        } else {
            ((p041q.e) this.f2020i.f1493a).clear();
            ((SparseArray) this.f2020i.b).clear();
            ((p041q.g) this.f2020i.f1494c).a();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: k */
    public v clone() {
        try {
            v vVar = (v) super.clone();
            vVar.f2033v = new ArrayList();
            vVar.f2019h = new N1.w();
            vVar.f2020i = new N1.w();
            vVar.f2023l = null;
            vVar.f2024m = null;
            vVar.f2037z = null;
            vVar.f2031t = this;
            vVar.f2032u = null;
            return vVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public Animator l(ViewGroup viewGroup, E e2, E e3) {
        return null;
    }

    public void m(ViewGroup viewGroup, N1.w wVar, N1.w wVar2, ArrayList arrayList, ArrayList arrayList2) {
        int i3;
        boolean z2;
        View view;
        E e2;
        Animator animator;
        Object obj;
        Animator animator2;
        E e3;
        p041q.e eVarQ = q();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        boolean z3 = p().f2037z != null;
        int i4 = 0;
        while (i4 < size) {
            E e4 = (E) arrayList.get(i4);
            E e5 = (E) arrayList2.get(i4);
            if (e4 != null && !e4.f1956c.contains(this)) {
                e4 = null;
            }
            if (e5 != null && !e5.f1956c.contains(this)) {
                e5 = null;
            }
            if ((e4 != null || e5 != null) && (e4 == null || e5 == null || v(e4, e5))) {
                Animator animatorL = l(viewGroup, e4, e5);
                if (animatorL != null) {
                    String str = this.b;
                    if (e5 != null) {
                        view = e5.b;
                        String[] strArrR = r();
                        if (strArrR != null && strArrR.length > 0) {
                            e3 = new E(view);
                            E e6 = (E) ((p041q.e) wVar2.f1493a).get(view);
                            i3 = size;
                            z2 = z3;
                            if (e6 != null) {
                                for (String str2 : strArrR) {
                                    e3.f1955a.put(str2, e6.f1955a.get(str2));
                                }
                            }
                            int i5 = eVarQ.f5258d;
                            int i6 = 0;
                            while (true) {
                                if (i6 >= i5) {
                                    animator2 = animatorL;
                                    break;
                                }
                                C0183p c0183p = (C0183p) eVarQ.get((Animator) eVarQ.f(i6));
                                if (c0183p.f1999c != null && c0183p.f1998a == view && c0183p.b.equals(str) && c0183p.f1999c.equals(e3)) {
                                    animator2 = null;
                                    break;
                                }
                                i6++;
                            }
                        } else {
                            i3 = size;
                            z2 = z3;
                            animator2 = animatorL;
                            e3 = null;
                        }
                        animator = animator2;
                        e2 = e3;
                    } else {
                        i3 = size;
                        z2 = z3;
                        view = e4.b;
                        e2 = null;
                    }
                    if (animator != null) {
                        animator = animatorL;
                        WindowId windowId = viewGroup.getWindowId();
                        C0183p c0183p2 = new C0183p();
                        c0183p2.f1998a = view;
                        c0183p2.b = str;
                        c0183p2.f1999c = e2;
                        c0183p2.f2000d = windowId;
                        c0183p2.f2001e = this;
                        c0183p2.f = animator;
                        if (z2) {
                            obj = animator;
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.play(animator);
                            obj = animatorSet;
                        }
                        obj = animator;
                        eVarQ.put(obj, c0183p2);
                        this.f2033v.add(obj);
                    } else {
                        animator = animatorL;
                    }
                }
                i4++;
                size = i3;
                z3 = z2;
            }
            i3 = size;
            z2 = z3;
            i4++;
            size = i3;
            z3 = z2;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                C0183p c0183p3 = (C0183p) eVarQ.get((Animator) this.f2033v.get(sparseIntArray.keyAt(i7)));
                c0183p3.f.setStartDelay(c0183p3.f.getStartDelay() + (((long) sparseIntArray.valueAt(i7)) - Long.MAX_VALUE));
            }
        }
    }

    public final void n() {
        int i3 = this.f2028q - 1;
        this.f2028q = i3;
        if (i3 == 0) {
            y(this, u.f2007c, false);
            for (int i4 = 0; i4 < ((p041q.g) this.f2019h.f1494c).g(); i4++) {
                View view = (View) ((p041q.g) this.f2019h.f1494c).h(i4);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i5 = 0; i5 < ((p041q.g) this.f2020i.f1494c).g(); i5++) {
                View view2 = (View) ((p041q.g) this.f2020i.f1494c).h(i5);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.f2030s = true;
        }
    }

    public final E o(View view, boolean z2) {
        B b = this.f2021j;
        if (b != null) {
            return b.o(view, z2);
        }
        ArrayList arrayList = z2 ? this.f2023l : this.f2024m;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            }
            E e2 = (E) arrayList.get(i3);
            if (e2 == null) {
                return null;
            }
            if (e2.b == view) {
                break;
            }
            i3++;
        }
        if (i3 >= 0) {
            return (E) (z2 ? this.f2024m : this.f2023l).get(i3);
        }
        return null;
    }

    public final v p() {
        B b = this.f2021j;
        return b != null ? b.p() : this;
    }

    public String[] r() {
        return null;
    }

    public final E s(View view, boolean z2) {
        B b = this.f2021j;
        if (b != null) {
            return b.s(view, z2);
        }
        return (E) ((p041q.e) (z2 ? this.f2019h : this.f2020i).f1493a).get(view);
    }

    public boolean t() {
        return !this.f2026o.isEmpty();
    }

    public final String toString() {
        return N("");
    }

    public boolean u() {
        return this instanceof C0173f;
    }

    public boolean v(E e2, E e3) {
        if (e2 != null && e3 != null) {
            String[] strArrR = r();
            if (strArrR != null) {
                for (String str : strArrR) {
                    if (x(e2, e3, str)) {
                        return true;
                    }
                }
            } else {
                Iterator it = e2.f1955a.keySet().iterator();
                while (it.hasNext()) {
                    if (x(e2, e3, (String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean w(View view) {
        int id = view.getId();
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        ArrayList arrayList2 = this.g;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public final void y(v vVar, u uVar, boolean z2) {
        v vVar2 = this.f2031t;
        if (vVar2 != null) {
            vVar2.y(vVar, uVar, z2);
        }
        ArrayList arrayList = this.f2032u;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.f2032u.size();
        t[] tVarArr = this.f2025n;
        if (tVarArr == null) {
            tVarArr = new t[size];
        }
        this.f2025n = null;
        t[] tVarArr2 = (t[]) this.f2032u.toArray(tVarArr);
        for (int i3 = 0; i3 < size; i3++) {
            t tVar = tVarArr2[i3];
            switch (uVar.f2010a) {
                case 0:
                    tVar.d(vVar);
                    break;
                case 1:
                    tVar.a(vVar);
                    break;
                case 2:
                    tVar.e(vVar);
                    break;
                case 3:
                    tVar.b();
                    break;
                default:
                    tVar.c();
                    break;
            }
            tVarArr2[i3] = null;
        }
        this.f2025n = tVarArr2;
    }

    public void z(View view) {
        if (this.f2030s) {
            return;
        }
        ArrayList arrayList = this.f2026o;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f2027p);
        this.f2027p = f2011B;
        for (int i3 = size - 1; i3 >= 0; i3--) {
            Animator animator = animatorArr[i3];
            animatorArr[i3] = null;
            animator.pause();
        }
        this.f2027p = animatorArr;
        y(this, u.f2009e, false);
        this.f2029r = true;
    }

    public void K() {
    }

    public void g(E e2) {
    }
}
