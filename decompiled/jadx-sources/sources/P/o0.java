package P;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import androidx.core.os.TraceCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1721a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f1723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1724e;
    public int f;
    public n0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1725h;

    public o0(RecyclerView recyclerView) {
        this.f1725h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f1721a = arrayList;
        this.b = null;
        this.f1722c = new ArrayList();
        this.f1723d = Collections.unmodifiableList(arrayList);
        this.f1724e = 2;
        this.f = 2;
    }

    public final void a(y0 y0Var, boolean z2) {
        RecyclerView.l(y0Var);
        View view = y0Var.f1807a;
        RecyclerView recyclerView = this.f1725h;
        A0 a3 = recyclerView.p0;
        if (a3 != null) {
            z0 z0Var = a3.b;
            ViewCompat.setAccessibilityDelegate(view, z0Var != null ? (AccessibilityDelegateCompat) z0Var.b.remove(view) : null);
        }
        if (z2) {
            ArrayList arrayList = recyclerView.f3002p;
            if (arrayList.size() > 0) {
                arrayList.get(0).getClass();
                throw new ClassCastException();
            }
            W w2 = recyclerView.f2999n;
            if (w2 != null) {
                w2.j(y0Var);
            }
            if (recyclerView.f2990i0 != null) {
                recyclerView.f2987h.E(y0Var);
            }
            if (RecyclerView.f2945C0) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + y0Var);
            }
        }
        y0Var.f1822s = null;
        y0Var.f1821r = null;
        n0 n0VarC = c();
        n0VarC.getClass();
        int i3 = y0Var.f;
        ArrayList arrayList2 = n0VarC.a(i3).f1708a;
        if (((m0) n0VarC.f1715a.get(i3)).b <= arrayList2.size()) {
            com.bumptech.glide.c.e(view);
        } else {
            if (RecyclerView.f2944B0 && arrayList2.contains(y0Var)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            y0Var.m();
            arrayList2.add(y0Var);
        }
    }

    public final int b(int i3) {
        RecyclerView recyclerView = this.f1725h;
        if (i3 >= 0 && i3 < recyclerView.f2990i0.b()) {
            return !recyclerView.f2990i0.g ? i3 : recyclerView.f.f(i3, 0);
        }
        StringBuilder sbO = E.b.o(i3, "invalid position ", ". State item count is ");
        sbO.append(recyclerView.f2990i0.b());
        sbO.append(recyclerView.A());
        throw new IndexOutOfBoundsException(sbO.toString());
    }

    public final n0 c() {
        if (this.g == null) {
            n0 n0Var = new n0();
            n0Var.f1715a = new SparseArray();
            n0Var.b = 0;
            n0Var.f1716c = Collections.newSetFromMap(new IdentityHashMap());
            this.g = n0Var;
            d();
        }
        return this.g;
    }

    public final void d() {
        RecyclerView recyclerView;
        W w2;
        n0 n0Var = this.g;
        if (n0Var == null || (w2 = (recyclerView = this.f1725h).f2999n) == null || !recyclerView.f3008t) {
            return;
        }
        n0Var.f1716c.add(w2);
    }

    public final void e(W w2, boolean z2) {
        n0 n0Var = this.g;
        if (n0Var != null) {
            SparseArray sparseArray = n0Var.f1715a;
            Set set = n0Var.f1716c;
            set.remove(w2);
            if (set.size() != 0 || z2) {
                return;
            }
            for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                ArrayList arrayList = ((m0) sparseArray.get(sparseArray.keyAt(i3))).f1708a;
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    com.bumptech.glide.c.e(((y0) arrayList.get(i4)).f1807a);
                }
            }
        }
    }

    public final void f() {
        ArrayList arrayList = this.f1722c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            g(size);
        }
        arrayList.clear();
        if (RecyclerView.f2950H0) {
            C0166y c0166y = this.f1725h.f2988h0;
            int[] iArr = c0166y.f1804c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            c0166y.f1805d = 0;
        }
    }

    public final void g(int i3) {
        if (RecyclerView.f2945C0) {
            Log.d("RecyclerView", "Recycling cached view at index " + i3);
        }
        ArrayList arrayList = this.f1722c;
        y0 y0Var = (y0) arrayList.get(i3);
        if (RecyclerView.f2945C0) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + y0Var);
        }
        a(y0Var, true);
        arrayList.remove(i3);
    }

    public final void h(View view) {
        y0 y0VarK = RecyclerView.K(view);
        boolean zJ = y0VarK.j();
        RecyclerView recyclerView = this.f1725h;
        if (zJ) {
            recyclerView.removeDetachedView(view, false);
        }
        if (y0VarK.i()) {
            y0VarK.f1817n.l(y0VarK);
        } else if (y0VarK.p()) {
            y0VarK.f1813j &= -33;
        }
        i(y0VarK);
        if (recyclerView.f2967N == null || y0VarK.g()) {
            return;
        }
        recyclerView.f2967N.d(y0VarK);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:68:0x00df A[LOOP:2: B:64:0x00d4->B:68:0x00df, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x00e2 A[EDGE_INSN: B:93:0x00e2->B:69:0x00e2 BREAK  A[LOOP:1: B:60:0x00c1->B:67:0x00dc, LOOP_LABEL: LOOP:1: B:60:0x00c1->B:67:0x00dc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x00e2 A[EDGE_INSN: B:95:0x00e2->B:69:0x00e2 BREAK  A[LOOP:1: B:60:0x00c1->B:67:0x00dc], SYNTHETIC] */
    public final void i(y0 y0Var) {
        boolean z2;
        int i3;
        int i4;
        int i5;
        int i6;
        RecyclerView recyclerView = this.f1725h;
        C0166y c0166y = recyclerView.f2988h0;
        boolean zI = y0Var.i();
        View view = y0Var.f1807a;
        boolean z3 = false;
        boolean z4 = true;
        if (zI || view.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(y0Var.i());
            sb.append(" isAttached:");
            sb.append(view.getParent() != null);
            sb.append(recyclerView.A());
            throw new IllegalArgumentException(sb.toString());
        }
        if (y0Var.j()) {
            StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb2.append(y0Var);
            throw new IllegalArgumentException(E.b.k(recyclerView, sb2));
        }
        if (y0Var.o()) {
            throw new IllegalArgumentException(E.b.k(recyclerView, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
        }
        boolean z5 = (y0Var.f1813j & 16) == 0 && ViewCompat.hasTransientState(view);
        W w2 = recyclerView.f2999n;
        boolean z6 = w2 != null && z5 && w2.h(y0Var);
        boolean z7 = RecyclerView.f2944B0;
        ArrayList arrayList = this.f1722c;
        if (z7 && arrayList.contains(y0Var)) {
            StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
            sb3.append(y0Var);
            throw new IllegalArgumentException(E.b.k(recyclerView, sb3));
        }
        if (z6 || y0Var.g()) {
            if (this.f <= 0 || (y0Var.f1813j & 526) != 0) {
                z2 = false;
            } else {
                int size = arrayList.size();
                if (size >= this.f && size > 0) {
                    g(0);
                    size--;
                }
                if (RecyclerView.f2950H0 && size > 0) {
                    int i7 = y0Var.f1808c;
                    if (c0166y.f1804c != null) {
                        int i8 = c0166y.f1805d * 2;
                        int i9 = 0;
                        while (true) {
                            if (i9 >= i8) {
                                i3 = size - 1;
                                loop1: while (i3 >= 0) {
                                    i4 = ((y0) arrayList.get(i3)).f1808c;
                                    if (c0166y.f1804c != null) {
                                        break;
                                    }
                                    i5 = c0166y.f1805d * 2;
                                    i6 = 0;
                                    while (true) {
                                        if (i6 < i5) {
                                            break loop1;
                                        } else if (c0166y.f1804c[i6] == i4) {
                                            break;
                                        } else {
                                            i6 += 2;
                                        }
                                    }
                                    i3--;
                                }
                                size = i3 + 1;
                            } else if (c0166y.f1804c[i9] != i7) {
                                i9 += 2;
                            }
                        }
                    } else {
                        i3 = size - 1;
                        loop1: while (i3 >= 0) {
                            i4 = ((y0) arrayList.get(i3)).f1808c;
                            if (c0166y.f1804c != null) {
                                break;
                                break;
                            }
                            i5 = c0166y.f1805d * 2;
                            i6 = 0;
                            while (true) {
                                if (i6 < i5) {
                                    break loop1;
                                    break loop1;
                                } else if (c0166y.f1804c[i6] == i4) {
                                    break;
                                } else {
                                    i6 += 2;
                                }
                            }
                            i3--;
                        }
                        size = i3 + 1;
                    }
                }
                arrayList.add(size, y0Var);
                z2 = true;
            }
            if (z2) {
                z4 = false;
            } else {
                a(y0Var, true);
            }
            z3 = z2;
        } else {
            if (RecyclerView.f2945C0) {
                Log.d("RecyclerView", "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists" + recyclerView.A());
            }
            z4 = false;
        }
        recyclerView.f2987h.E(y0Var);
        if (z3 || z4 || !z5) {
            return;
        }
        com.bumptech.glide.c.e(view);
        y0Var.f1822s = null;
        y0Var.f1821r = null;
    }

    public final void j(View view) {
        AbstractC0139c0 abstractC0139c0;
        y0 y0VarK = RecyclerView.K(view);
        int i3 = y0VarK.f1813j & 12;
        RecyclerView recyclerView = this.f1725h;
        if (i3 == 0 && y0VarK.k() && (abstractC0139c0 = recyclerView.f2967N) != null) {
            C0158p c0158p = (C0158p) abstractC0139c0;
            if (y0VarK.c().isEmpty() && c0158p.g && !y0VarK.f()) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                y0VarK.f1817n = this;
                y0VarK.f1818o = true;
                this.b.add(y0VarK);
                return;
            }
        }
        if (y0VarK.f() && !y0VarK.h() && !recyclerView.f2999n.b) {
            throw new IllegalArgumentException(E.b.k(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        y0VarK.f1817n = this;
        y0VarK.f1818o = false;
        this.f1721a.add(y0VarK);
    }

    /* JADX WARN: Code duplicated, block: B:120:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:121:0x0200  */
    /* JADX WARN: Code duplicated, block: B:191:0x0366 A[EDGE_INSN: B:191:0x0366->B:192:0x0367 BREAK  A[LOOP:3: B:186:0x034e->B:190:0x0363]] */
    /* JADX WARN: Code duplicated, block: B:276:0x04c7  */
    /* JADX WARN: Code duplicated, block: B:278:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:279:0x04db  */
    /* JADX WARN: Code duplicated, block: B:282:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:283:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:285:0x04eb  */
    /* JADX WARN: Code duplicated, block: B:287:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:291:0x050a  */
    /* JADX WARN: Code duplicated, block: B:307:0x0570  */
    /* JADX WARN: Code duplicated, block: B:309:0x0574  */
    /* JADX WARN: Code duplicated, block: B:312:0x0585  */
    /* JADX WARN: Code duplicated, block: B:315:0x0590  */
    /* JADX WARN: Code duplicated, block: B:319:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:325:0x05bc  */
    /* JADX WARN: Code duplicated, block: B:327:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:329:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:333:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:340:0x05e3  */
    /* JADX WARN: Code duplicated, block: B:343:0x05e8  */
    /* JADX WARN: Code duplicated, block: B:347:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:348:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:350:0x0601  */
    /* JADX WARN: Code duplicated, block: B:351:0x060b  */
    /* JADX WARN: Code duplicated, block: B:354:0x0611 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:356:0x0615  */
    /* JADX WARN: Code duplicated, block: B:35:0x007b A[EDGE_INSN: B:35:0x007b->B:36:0x007c BREAK  A[LOOP:0: B:14:0x0023->B:20:0x003d]] */
    public final y0 k(int i3, long j2) {
        boolean z2;
        y0 y0VarF;
        boolean z3;
        long j3;
        long j4;
        boolean z4;
        boolean z5;
        W w2;
        boolean z6;
        long nanoTime;
        long j5;
        AccessibilityManager accessibilityManager;
        boolean z7;
        boolean z8;
        boolean z9;
        A0 a3;
        z0 z0Var;
        AccessibilityDelegateCompat accessibilityDelegate;
        ArrayList arrayList;
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        C0149h0 c0149h0;
        boolean z10;
        RecyclerView recyclerViewF;
        y0 y0Var;
        int i4;
        View view;
        W w3;
        boolean z11;
        int size;
        int iF;
        RecyclerView recyclerView = this.f1725h;
        u0 u0Var = recyclerView.f2990i0;
        if (i3 < 0 || i3 >= u0Var.b()) {
            StringBuilder sbP = E.b.p("Invalid item position ", i3, i3, "(", "). Item count:");
            sbP.append(u0Var.b());
            sbP.append(recyclerView.A());
            throw new IndexOutOfBoundsException(sbP.toString());
        }
        if (u0Var.g) {
            ArrayList arrayList2 = this.b;
            if (arrayList2 != null && (size = arrayList2.size()) != 0) {
                int i5 = 0;
                while (true) {
                    if (i5 >= size) {
                        if (recyclerView.f2999n.b && (iF = recyclerView.f.f(i3, 0)) > 0 && iF < recyclerView.f2999n.a()) {
                            long jB = recyclerView.f2999n.b(iF);
                            int i6 = 0;
                            while (true) {
                                if (i6 >= size) {
                                    y0VarF = null;
                                    break;
                                }
                                y0 y0Var2 = (y0) this.b.get(i6);
                                if (!y0Var2.p() && y0Var2.f1810e == jB) {
                                    y0Var2.a(32);
                                    y0VarF = y0Var2;
                                    break;
                                }
                                i6++;
                            }
                        } else {
                            y0VarF = null;
                            break;
                        }
                    } else {
                        y0VarF = (y0) this.b.get(i5);
                        if (!y0VarF.p() && y0VarF.b() == i3) {
                            y0VarF.a(32);
                            break;
                        }
                        i5++;
                    }
                }
            } else {
                y0VarF = null;
                break;
            }
            z2 = y0VarF != null;
        } else {
            z2 = false;
            y0VarF = null;
        }
        ArrayList arrayList3 = this.f1721a;
        ArrayList arrayList4 = this.f1722c;
        if (y0VarF == null) {
            int size2 = arrayList3.size();
            int i7 = 0;
            while (true) {
                if (i7 >= size2) {
                    ArrayList arrayList5 = recyclerView.g.f1691c;
                    int size3 = arrayList5.size();
                    int i8 = 0;
                    while (true) {
                        if (i8 >= size3) {
                            z3 = true;
                            view = null;
                            break;
                        }
                        view = (View) arrayList5.get(i8);
                        y0 y0VarK = RecyclerView.K(view);
                        z3 = true;
                        if (y0VarK.b() == i3 && !y0VarK.f() && !y0VarK.h()) {
                            break;
                        }
                        i8++;
                    }
                    if (view == null) {
                        int size4 = arrayList4.size();
                        int i9 = 0;
                        while (true) {
                            if (i9 >= size4) {
                                y0VarF = null;
                                break;
                            }
                            y0 y0Var3 = (y0) arrayList4.get(i9);
                            if (!y0Var3.f() && y0Var3.b() == i3 && !y0Var3.d()) {
                                arrayList4.remove(i9);
                                if (RecyclerView.f2945C0) {
                                    Log.d("RecyclerView", "getScrapOrHiddenOrCachedHolderForPosition(" + i3 + ") found match in cache: " + y0Var3);
                                }
                                y0VarF = y0Var3;
                                break;
                            }
                            i9++;
                        }
                    } else {
                        y0 y0VarK2 = RecyclerView.K(view);
                        C0150i c0150i = recyclerView.g;
                        C0148h c0148h = c0150i.b;
                        int iIndexOfChild = c0150i.f1690a.f1642a.indexOfChild(view);
                        if (iIndexOfChild < 0) {
                            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
                        }
                        if (!c0148h.d(iIndexOfChild)) {
                            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                        }
                        c0148h.a(iIndexOfChild);
                        c0150i.j(view);
                        C0150i c0150i2 = recyclerView.g;
                        C0148h c0148h2 = c0150i2.b;
                        int iIndexOfChild2 = c0150i2.f1690a.f1642a.indexOfChild(view);
                        int iB = (iIndexOfChild2 == -1 || c0148h2.d(iIndexOfChild2)) ? -1 : iIndexOfChild2 - c0148h2.b(iIndexOfChild2);
                        if (iB == -1) {
                            StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                            sb.append(y0VarK2);
                            throw new IllegalStateException(E.b.k(recyclerView, sb));
                        }
                        recyclerView.g.c(iB);
                        j(view);
                        y0VarK2.a(8224);
                        y0VarF = y0VarK2;
                        break;
                    }
                } else {
                    y0 y0Var4 = (y0) arrayList3.get(i7);
                    if (!y0Var4.p() && y0Var4.b() == i3 && !y0Var4.f() && (u0Var.g || !y0Var4.h())) {
                        y0Var4.a(32);
                        y0VarF = y0Var4;
                        z3 = true;
                        break;
                    }
                    i7++;
                }
            }
            if (y0VarF != null) {
                if (!y0VarF.h()) {
                    int i10 = y0VarF.f1808c;
                    if (i10 < 0 || i10 >= recyclerView.f2999n.a()) {
                        StringBuilder sb2 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                        sb2.append(y0VarF);
                        throw new IndexOutOfBoundsException(E.b.k(recyclerView, sb2));
                    }
                    if (u0Var.g) {
                        w3 = recyclerView.f2999n;
                        if (w3.b) {
                        }
                        z11 = z3;
                    } else {
                        recyclerView.f2999n.getClass();
                        if (y0VarF.f != 0) {
                            z11 = false;
                        } else {
                            w3 = recyclerView.f2999n;
                            if (w3.b || y0VarF.f1810e == w3.b(y0VarF.f1808c)) {
                                z11 = z3;
                            } else {
                                z11 = false;
                            }
                        }
                    }
                } else {
                    if (RecyclerView.f2944B0 && !u0Var.g) {
                        throw new IllegalStateException(E.b.k(recyclerView, new StringBuilder("should not receive a removed view unless it is pre layout")));
                    }
                    z11 = u0Var.g;
                }
                if (z11) {
                    z2 = z3;
                } else {
                    y0VarF.a(4);
                    if (y0VarF.i()) {
                        recyclerView.removeDetachedView(y0VarF.f1807a, false);
                        y0VarF.f1817n.l(y0VarF);
                    } else if (y0VarF.p()) {
                        y0VarF.f1813j &= -33;
                    }
                    i(y0VarF);
                    y0VarF = null;
                }
            }
        } else {
            z3 = true;
        }
        if (y0VarF == null) {
            int iF2 = recyclerView.f.f(i3, 0);
            if (iF2 >= 0) {
                j3 = 3;
                if (iF2 < recyclerView.f2999n.a()) {
                    recyclerView.f2999n.getClass();
                    W w4 = recyclerView.f2999n;
                    if (w4.b) {
                        long jB2 = w4.b(iF2);
                        int size5 = arrayList3.size() - 1;
                        while (true) {
                            if (size5 < 0) {
                                i4 = iF2;
                                j4 = 4;
                                int size6 = arrayList4.size() - 1;
                                while (true) {
                                    if (size6 >= 0) {
                                        y0 y0Var5 = (y0) arrayList4.get(size6);
                                        if (y0Var5.f1810e != jB2 || y0Var5.d()) {
                                            size6--;
                                        } else {
                                            if (y0Var5.f == 0) {
                                                arrayList4.remove(size6);
                                                y0VarF = y0Var5;
                                                break;
                                            }
                                            g(size6);
                                        }
                                    }
                                    y0VarF = null;
                                    break;
                                }
                            }
                            j4 = 4;
                            y0 y0Var6 = (y0) arrayList3.get(size5);
                            i4 = iF2;
                            long j6 = y0Var6.f1810e;
                            View view2 = y0Var6.f1807a;
                            if (j6 == jB2 && !y0Var6.p()) {
                                if (y0Var6.f == 0) {
                                    y0Var6.a(32);
                                    if (y0Var6.h() && !u0Var.g) {
                                        y0Var6.f1813j = (y0Var6.f1813j & (-15)) | 2;
                                    }
                                    y0VarF = y0Var6;
                                    break;
                                }
                                arrayList3.remove(size5);
                                recyclerView.removeDetachedView(view2, false);
                                y0 y0VarK3 = RecyclerView.K(view2);
                                y0VarK3.f1817n = null;
                                y0VarK3.f1818o = false;
                                y0VarK3.f1813j &= -33;
                                i(y0VarK3);
                            }
                            size5--;
                            iF2 = i4;
                        }
                        if (y0VarF != null) {
                            y0VarF.f1808c = i4;
                            z2 = z3;
                        }
                    } else {
                        j4 = 4;
                    }
                    if (y0VarF == null) {
                        if (RecyclerView.f2945C0) {
                            Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline(" + i3 + ") fetching from shared pool");
                        }
                        m0 m0Var = (m0) c().f1715a.get(0);
                        if (m0Var == null) {
                            y0Var = null;
                            break;
                        }
                        ArrayList arrayList6 = m0Var.f1708a;
                        if (!arrayList6.isEmpty()) {
                            int size7 = arrayList6.size() - 1;
                            while (true) {
                                if (size7 < 0) {
                                    y0Var = null;
                                    break;
                                }
                                if (!((y0) arrayList6.get(size7)).d()) {
                                    y0Var = (y0) arrayList6.remove(size7);
                                    break;
                                }
                                size7--;
                            }
                        } else {
                            y0Var = null;
                            break;
                        }
                        if (y0Var != null) {
                            y0Var.m();
                            boolean z12 = RecyclerView.f2944B0;
                        }
                        y0VarF = y0Var;
                    }
                    if (y0VarF == null) {
                        long nanoTime2 = recyclerView.getNanoTime();
                        if (j2 != Long.MAX_VALUE) {
                            long j7 = this.g.a(0).f1709c;
                            if (!((j7 == 0 || j7 + nanoTime2 < j2) ? z3 : false)) {
                                return null;
                            }
                        }
                        W w5 = recyclerView.f2999n;
                        w5.getClass();
                        try {
                            TraceCompat.beginSection("RV CreateView");
                            y0VarF = w5.f(recyclerView);
                            View view3 = y0VarF.f1807a;
                            if (view3.getParent() != null) {
                                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                            }
                            y0VarF.f = 0;
                            TraceCompat.endSection();
                            if (RecyclerView.f2950H0 && (recyclerViewF = RecyclerView.F(view3)) != null) {
                                y0VarF.b = new WeakReference(recyclerViewF);
                            }
                            long nanoTime3 = recyclerView.getNanoTime() - nanoTime2;
                            m0 m0VarA = this.g.a(0);
                            long j8 = m0VarA.f1709c;
                            if (j8 != 0) {
                                nanoTime3 = (nanoTime3 / j4) + ((j8 / j4) * 3);
                            }
                            m0VarA.f1709c = nanoTime3;
                            if (RecyclerView.f2945C0) {
                                Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline created new ViewHolder");
                            }
                        } catch (Throwable th) {
                            TraceCompat.endSection();
                            throw th;
                        }
                    }
                }
            }
            StringBuilder sbP2 = E.b.p("Inconsistency detected. Invalid item position ", i3, iF2, "(offset:", ").state:");
            sbP2.append(u0Var.b());
            sbP2.append(recyclerView.A());
            throw new IndexOutOfBoundsException(sbP2.toString());
        }
        j3 = 3;
        j4 = 4;
        View view4 = y0VarF.f1807a;
        if (z2 && !u0Var.g) {
            int i11 = y0VarF.f1813j;
            if ((i11 & 8192) != 0 ? z3 : false) {
                y0VarF.f1813j = i11 & (-8193);
                if (u0Var.f1765j) {
                    AbstractC0139c0.b(y0VarF);
                    AbstractC0139c0 abstractC0139c0 = recyclerView.f2967N;
                    y0VarF.c();
                    abstractC0139c0.getClass();
                    C0137b0 c0137b0 = new C0137b0();
                    c0137b0.a(y0VarF);
                    recyclerView.X(y0VarF, c0137b0);
                }
            }
        }
        if (!u0Var.g || !y0VarF.e()) {
            if (y0VarF.e()) {
                if (((y0VarF.f1813j & 2) != 0 ? z3 : false) || y0VarF.f()) {
                }
                layoutParams2 = view4.getLayoutParams();
                if (layoutParams2 == null) {
                    c0149h0 = (C0149h0) recyclerView.generateDefaultLayoutParams();
                    view4.setLayoutParams(c0149h0);
                } else if (recyclerView.checkLayoutParams(layoutParams2)) {
                    c0149h0 = (C0149h0) layoutParams2;
                } else {
                    c0149h0 = (C0149h0) recyclerView.generateLayoutParams(layoutParams2);
                    view4.setLayoutParams(c0149h0);
                }
                c0149h0.f1687a = y0VarF;
                if (z2 || !z9) {
                    z10 = z4;
                } else {
                    z10 = z8;
                }
                c0149h0.f1689d = z10;
                return y0VarF;
            }
            if (RecyclerView.f2944B0 && y0VarF.h()) {
                StringBuilder sb3 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                sb3.append(y0VarF);
                throw new IllegalStateException(E.b.k(recyclerView, sb3));
            }
            z4 = false;
            int iF3 = recyclerView.f.f(i3, 0);
            y0VarF.f1822s = null;
            y0VarF.f1821r = recyclerView;
            int i12 = y0VarF.f;
            long nanoTime4 = recyclerView.getNanoTime();
            if (j2 != Long.MAX_VALUE) {
                long j9 = this.g.a(i12).f1710d;
                if (j9 == 0 || j9 + nanoTime4 < j2) {
                    if (y0VarF.j()) {
                        recyclerView.attachViewToParent(view4, recyclerView.getChildCount(), view4.getLayoutParams());
                        z5 = z3;
                    } else {
                        z5 = false;
                    }
                    w2 = recyclerView.f2999n;
                    w2.getClass();
                    if (y0VarF.f1822s == null) {
                        z6 = z3;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        y0VarF.f1808c = iF3;
                        if (w2.b) {
                            y0VarF.f1810e = w2.b(iF3);
                        }
                        y0VarF.f1813j = (y0VarF.f1813j & (-520)) | 1;
                        TraceCompat.beginSection("RV OnBindView");
                    }
                    y0VarF.f1822s = w2;
                    if (RecyclerView.f2944B0) {
                        if (view4.getParent() != null && ViewCompat.isAttachedToWindow(view4) != y0VarF.j()) {
                            throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + y0VarF.j() + ", attached to window: " + ViewCompat.isAttachedToWindow(view4) + ", holder: " + y0VarF);
                        }
                        if (view4.getParent() == null && ViewCompat.isAttachedToWindow(view4)) {
                            throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + y0VarF);
                        }
                    }
                    y0VarF.c();
                    w2.e(y0VarF, iF3);
                    if (z6) {
                        arrayList = y0VarF.f1814k;
                        if (arrayList != null) {
                            arrayList.clear();
                        }
                        y0VarF.f1813j &= -1025;
                        layoutParams = view4.getLayoutParams();
                        if (layoutParams instanceof C0149h0) {
                            ((C0149h0) layoutParams).f1688c = z3;
                        }
                        TraceCompat.endSection();
                    }
                    if (z5) {
                        recyclerView.detachViewFromParent(view4);
                    }
                    nanoTime = recyclerView.getNanoTime() - nanoTime4;
                    m0 m0VarA2 = this.g.a(y0VarF.f);
                    j5 = m0VarA2.f1710d;
                    if (j5 != 0) {
                        nanoTime = (nanoTime / j4) + ((j5 / j4) * j3);
                    }
                    m0VarA2.f1710d = nanoTime;
                    accessibilityManager = recyclerView.f2957C;
                    if (accessibilityManager == null && accessibilityManager.isEnabled()) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (z7) {
                        z8 = true;
                        if (ViewCompat.getImportantForAccessibility(view4) == 0) {
                            ViewCompat.setImportantForAccessibility(view4, 1);
                        }
                        a3 = recyclerView.p0;
                        if (a3 != null) {
                            z0Var = a3.b;
                            if (z0Var != null && (accessibilityDelegate = ViewCompat.getAccessibilityDelegate(view4)) != null && accessibilityDelegate != z0Var) {
                                z0Var.b.put(view4, accessibilityDelegate);
                            }
                            ViewCompat.setAccessibilityDelegate(view4, z0Var);
                        }
                    } else {
                        z8 = true;
                    }
                    if (u0Var.g) {
                        y0VarF.g = i3;
                    }
                    z9 = z8;
                } else {
                    z9 = false;
                    z8 = z3;
                }
            } else {
                if (y0VarF.j()) {
                    recyclerView.attachViewToParent(view4, recyclerView.getChildCount(), view4.getLayoutParams());
                    z5 = z3;
                } else {
                    z5 = false;
                }
                w2 = recyclerView.f2999n;
                w2.getClass();
                if (y0VarF.f1822s == null) {
                    z6 = z3;
                } else {
                    z6 = false;
                }
                if (z6) {
                    y0VarF.f1808c = iF3;
                    if (w2.b) {
                        y0VarF.f1810e = w2.b(iF3);
                    }
                    y0VarF.f1813j = (y0VarF.f1813j & (-520)) | 1;
                    TraceCompat.beginSection("RV OnBindView");
                }
                y0VarF.f1822s = w2;
                if (RecyclerView.f2944B0) {
                    if (view4.getParent() != null) {
                    }
                    if (view4.getParent() == null) {
                        throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + y0VarF);
                    }
                }
                y0VarF.c();
                w2.e(y0VarF, iF3);
                if (z6) {
                    arrayList = y0VarF.f1814k;
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                    y0VarF.f1813j &= -1025;
                    layoutParams = view4.getLayoutParams();
                    if (layoutParams instanceof C0149h0) {
                        ((C0149h0) layoutParams).f1688c = z3;
                    }
                    TraceCompat.endSection();
                }
                if (z5) {
                    recyclerView.detachViewFromParent(view4);
                }
                nanoTime = recyclerView.getNanoTime() - nanoTime4;
                m0 m0VarA3 = this.g.a(y0VarF.f);
                j5 = m0VarA3.f1710d;
                if (j5 != 0) {
                    nanoTime = (nanoTime / j4) + ((j5 / j4) * j3);
                }
                m0VarA3.f1710d = nanoTime;
                accessibilityManager = recyclerView.f2957C;
                if (accessibilityManager == null) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                if (z7) {
                    z8 = true;
                    if (ViewCompat.getImportantForAccessibility(view4) == 0) {
                        ViewCompat.setImportantForAccessibility(view4, 1);
                    }
                    a3 = recyclerView.p0;
                    if (a3 != null) {
                        z0Var = a3.b;
                        if (z0Var != null) {
                            z0Var.b.put(view4, accessibilityDelegate);
                        }
                        ViewCompat.setAccessibilityDelegate(view4, z0Var);
                    }
                } else {
                    z8 = true;
                }
                if (u0Var.g) {
                    y0VarF.g = i3;
                }
                z9 = z8;
            }
            layoutParams2 = view4.getLayoutParams();
            if (layoutParams2 == null) {
                c0149h0 = (C0149h0) recyclerView.generateDefaultLayoutParams();
                view4.setLayoutParams(c0149h0);
            } else if (recyclerView.checkLayoutParams(layoutParams2)) {
                c0149h0 = (C0149h0) recyclerView.generateLayoutParams(layoutParams2);
                view4.setLayoutParams(c0149h0);
            } else {
                c0149h0 = (C0149h0) layoutParams2;
            }
            c0149h0.f1687a = y0VarF;
            if (z2) {
                z10 = z4;
            } else {
                z10 = z4;
            }
            c0149h0.f1689d = z10;
            return y0VarF;
        }
        y0VarF.g = i3;
        z8 = z3;
        z9 = false;
        z4 = false;
        layoutParams2 = view4.getLayoutParams();
        if (layoutParams2 == null) {
            c0149h0 = (C0149h0) recyclerView.generateDefaultLayoutParams();
            view4.setLayoutParams(c0149h0);
        } else if (recyclerView.checkLayoutParams(layoutParams2)) {
            c0149h0 = (C0149h0) recyclerView.generateLayoutParams(layoutParams2);
            view4.setLayoutParams(c0149h0);
        } else {
            c0149h0 = (C0149h0) layoutParams2;
        }
        c0149h0.f1687a = y0VarF;
        if (z2) {
            z10 = z4;
        } else {
            z10 = z4;
        }
        c0149h0.f1689d = z10;
        return y0VarF;
    }

    public final void l(y0 y0Var) {
        if (y0Var.f1818o) {
            this.b.remove(y0Var);
        } else {
            this.f1721a.remove(y0Var);
        }
        y0Var.f1817n = null;
        y0Var.f1818o = false;
        y0Var.f1813j &= -33;
    }

    public final void m() {
        AbstractC0147g0 abstractC0147g0 = this.f1725h.f3000o;
        this.f = this.f1724e + (abstractC0147g0 != null ? abstractC0147g0.f1680j : 0);
        ArrayList arrayList = this.f1722c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
            g(size);
        }
    }
}
