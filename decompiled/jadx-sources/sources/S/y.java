package S;

import android.animation.Animator;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    public v b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewGroup f2039c;

    /* JADX WARN: Code duplicated, block: B:100:0x021f  */
    /* JADX WARN: Code duplicated, block: B:102:0x022d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0239  */
    /* JADX WARN: Code duplicated, block: B:107:0x024b  */
    /* JADX WARN: Code duplicated, block: B:130:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:141:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:143:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:145:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:147:0x0303  */
    /* JADX WARN: Code duplicated, block: B:14:0x004e  */
    /* JADX WARN: Code duplicated, block: B:150:0x0312 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:153:0x01f7 A[EDGE_INSN: B:153:0x01f7->B:90:0x01f7 BREAK  A[LOOP:1: B:18:0x0086->B:89:0x01ed], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0055 A[LOOP:0: B:15:0x0053->B:16:0x0055, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:183:0x0217 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x008b  */
    /* JADX WARN: Code duplicated, block: B:22:0x008f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0092  */
    /* JADX WARN: Code duplicated, block: B:26:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x0098  */
    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:47:0x0106  */
    /* JADX WARN: Code duplicated, block: B:49:0x011b  */
    /* JADX WARN: Code duplicated, block: B:62:0x0160  */
    /* JADX WARN: Code duplicated, block: B:64:0x0170  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:79:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:93:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:95:0x020c  */
    /* JADX WARN: Instruction removed from duplicated block: B:145:0x02f4, please report this as an issue */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ArrayList arrayList;
        int i3;
        N1.w wVar;
        N1.w wVar2;
        p041q.e eVar;
        p041q.e eVar2;
        int i4;
        int[] iArr;
        boolean z2;
        int i5;
        int i6;
        p041q.e eVarQ;
        int i7;
        Animator animator;
        C0183p c0183p;
        E e2;
        E e3;
        int i8;
        N1.w wVar3;
        boolean z3;
        int i9;
        View view;
        E e4;
        p041q.e eVar3;
        int i10;
        int i11;
        View view2;
        View view3;
        SparseArray sparseArray;
        int size;
        int i12;
        View view4;
        View view5;
        p041q.g gVar;
        int iG;
        int i13;
        View view6;
        N1.w wVar4;
        int size2;
        int i14;
        v vVar = this.b;
        ViewGroup viewGroup = this.f2039c;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        boolean z4 = true;
        if (!z.f2041c.remove(viewGroup)) {
            return true;
        }
        p041q.e eVarB = z.b();
        ArrayList arrayList2 = (ArrayList) eVarB.get(viewGroup);
        if (arrayList2 != null) {
            arrayList = arrayList2.size() > 0 ? new ArrayList(arrayList2) : null;
            arrayList2.add(vVar);
            vVar.a(new x(this, eVarB));
            i3 = 0;
            vVar.i(viewGroup, false);
            if (arrayList != null) {
                size2 = arrayList.size();
                i14 = 0;
                while (i14 < size2) {
                    Object obj = arrayList.get(i14);
                    i14++;
                    ((v) obj).D(viewGroup);
                }
            }
            vVar.f2023l = new ArrayList();
            vVar.f2024m = new ArrayList();
            wVar = vVar.f2019h;
            wVar2 = vVar.f2020i;
            eVar = new p041q.e((p041q.e) wVar.f1493a);
            eVar2 = new p041q.e((p041q.e) wVar2.f1493a);
            i4 = 0;
            while (true) {
                iArr = vVar.f2022k;
                if (i4 < iArr.length) {
                    break;
                }
                i8 = iArr[i4];
                if (i8 != z4) {
                    wVar3 = wVar2;
                    z3 = z4;
                    for (i9 = eVar.f5258d - 1; i9 >= 0; i9--) {
                        view = (View) eVar.f(i9);
                        if (view == null && vVar.w(view) && (e4 = (E) eVar2.remove(view)) != null && vVar.w(e4.b)) {
                            vVar.f2023l.add((E) eVar.h(i9));
                            vVar.f2024m.add(e4);
                        }
                    }
                } else if (i8 != 2) {
                    wVar3 = wVar2;
                    z3 = z4;
                    eVar3 = (p041q.e) wVar.f1495d;
                    p041q.e eVar4 = (p041q.e) wVar3.f1495d;
                    i10 = eVar3.f5258d;
                    for (i11 = 0; i11 < i10; i11++) {
                        view2 = (View) eVar3.j(i11);
                        if (view2 == null && vVar.w(view2) && (view3 = (View) eVar4.get(eVar3.f(i11))) != null && vVar.w(view3)) {
                            E e5 = (E) eVar.get(view2);
                            E e6 = (E) eVar2.get(view3);
                            if (e5 != null && e6 != null) {
                                vVar.f2023l.add(e5);
                                vVar.f2024m.add(e6);
                                eVar.remove(view2);
                                eVar2.remove(view3);
                            }
                        }
                    }
                } else if (i8 != 3) {
                    z3 = z4;
                    sparseArray = (SparseArray) wVar.b;
                    wVar3 = wVar2;
                    SparseArray sparseArray2 = (SparseArray) wVar3.b;
                    size = sparseArray.size();
                    for (i12 = 0; i12 < size; i12++) {
                        view4 = (View) sparseArray.valueAt(i12);
                        if (view4 == null && vVar.w(view4) && (view5 = (View) sparseArray2.get(sparseArray.keyAt(i12))) != null && vVar.w(view5)) {
                            E e7 = (E) eVar.get(view4);
                            E e8 = (E) eVar2.get(view5);
                            if (e7 != null && e8 != null) {
                                vVar.f2023l.add(e7);
                                vVar.f2024m.add(e8);
                                eVar.remove(view4);
                                eVar2.remove(view5);
                            }
                        }
                    }
                } else if (i8 != 4) {
                    wVar3 = wVar2;
                    z3 = z4;
                } else {
                    gVar = (p041q.g) wVar.f1494c;
                    p041q.g gVar2 = (p041q.g) wVar2.f1494c;
                    iG = gVar.g();
                    i13 = i3;
                    while (i13 < iG) {
                        view6 = (View) gVar.h(i13);
                        if (view6 == null && vVar.w(view6)) {
                            wVar4 = wVar2;
                            View view7 = (View) gVar2.b(gVar.d(i13));
                            if (view7 != null && vVar.w(view7)) {
                                E e9 = (E) eVar.get(view6);
                                E e10 = (E) eVar2.get(view7);
                                if (e9 != null && e10 != null) {
                                    vVar.f2023l.add(e9);
                                    vVar.f2024m.add(e10);
                                    eVar.remove(view6);
                                    eVar2.remove(view7);
                                }
                            }
                            i13++;
                            wVar2 = wVar4;
                            z4 = z4;
                        } else {
                            wVar4 = wVar2;
                        }
                        i13++;
                        wVar2 = wVar4;
                        z4 = z4;
                    }
                    z3 = z4;
                    wVar3 = wVar2;
                }
                i4++;
                wVar2 = wVar3;
                z4 = z3;
                i3 = 0;
            }
            z2 = z4;
            for (i5 = 0; i5 < eVar.f5258d; i5++) {
                e3 = (E) eVar.j(i5);
                if (vVar.w(e3.b)) {
                    vVar.f2023l.add(e3);
                    vVar.f2024m.add(null);
                }
            }
            for (i6 = 0; i6 < eVar2.f5258d; i6++) {
                e2 = (E) eVar2.j(i6);
                if (vVar.w(e2.b)) {
                    vVar.f2024m.add(e2);
                    vVar.f2023l.add(null);
                }
            }
            eVarQ = v.q();
            int i15 = eVarQ.f5258d;
            WindowId windowId = viewGroup.getWindowId();
            i7 = i15 - 1;
            while (i7 >= 0) {
                animator = (Animator) eVarQ.f(i7);
                if (animator == null && (c0183p = (C0183p) eVarQ.get(animator)) != null) {
                    v vVar2 = c0183p.f2001e;
                    View view8 = c0183p.f1998a;
                    if (view8 != null && windowId.equals(c0183p.f2000d)) {
                        E e11 = c0183p.f1999c;
                        boolean z5 = z2;
                        E eS = vVar.s(view8, z5);
                        E eO = vVar.o(view8, z5);
                        if (eS == null && eO == null) {
                            eO = (E) ((p041q.e) vVar.f2020i.f1493a).get(view8);
                        }
                        if ((eS != null || eO != null) && vVar2.v(e11, eO)) {
                            v vVarP = vVar2.p();
                            ArrayList arrayList3 = vVar2.f2026o;
                            if (vVarP.f2037z != null) {
                                animator.cancel();
                                arrayList3.remove(animator);
                                eVarQ.remove(animator);
                                if (arrayList3.size() == 0) {
                                    vVar2.y(vVar2, u.f2008d, false);
                                    if (!vVar2.f2030s) {
                                        vVar2.f2030s = true;
                                        vVar2.y(vVar2, u.f2007c, false);
                                    }
                                }
                            } else if (animator.isRunning() || animator.isStarted()) {
                                animator.cancel();
                            } else {
                                eVarQ.remove(animator);
                            }
                        }
                    }
                }
                i7--;
                z2 = true;
            }
            vVar.m(viewGroup, vVar.f2019h, vVar.f2020i, vVar.f2023l, vVar.f2024m);
            if (vVar.f2037z == null) {
                vVar.E();
                return true;
            }
            if (Build.VERSION.SDK_INT >= 34) {
                return true;
            }
            vVar.A();
            s sVar = vVar.f2037z;
            B b = sVar.g;
            long j2 = b.f2036y == 0 ? 1L : 0L;
            b.F(j2, sVar.f2003a);
            sVar.f2003a = j2;
            vVar.f2037z.b = true;
            return true;
        }
        arrayList2 = new ArrayList();
        eVarB.put(viewGroup, arrayList2);
        arrayList2.add(vVar);
        vVar.a(new x(this, eVarB));
        i3 = 0;
        vVar.i(viewGroup, false);
        if (arrayList != null) {
            size2 = arrayList.size();
            i14 = 0;
            while (i14 < size2) {
                Object obj2 = arrayList.get(i14);
                i14++;
                ((v) obj2).D(viewGroup);
            }
        }
        vVar.f2023l = new ArrayList();
        vVar.f2024m = new ArrayList();
        wVar = vVar.f2019h;
        wVar2 = vVar.f2020i;
        eVar = new p041q.e((p041q.e) wVar.f1493a);
        eVar2 = new p041q.e((p041q.e) wVar2.f1493a);
        i4 = 0;
        while (true) {
            iArr = vVar.f2022k;
            if (i4 < iArr.length) {
                break;
                break;
            }
            i8 = iArr[i4];
            if (i8 != z4) {
                wVar3 = wVar2;
                z3 = z4;
                while (i9 >= 0) {
                    view = (View) eVar.f(i9);
                    if (view == null) {
                    }
                }
            } else if (i8 != 2) {
                wVar3 = wVar2;
                z3 = z4;
                eVar3 = (p041q.e) wVar.f1495d;
                p041q.e eVar5 = (p041q.e) wVar3.f1495d;
                i10 = eVar3.f5258d;
                while (i11 < i10) {
                    view2 = (View) eVar3.j(i11);
                    if (view2 == null) {
                    }
                }
            } else if (i8 != 3) {
                z3 = z4;
                sparseArray = (SparseArray) wVar.b;
                wVar3 = wVar2;
                SparseArray sparseArray3 = (SparseArray) wVar3.b;
                size = sparseArray.size();
                while (i12 < size) {
                    view4 = (View) sparseArray.valueAt(i12);
                    if (view4 == null) {
                    }
                }
            } else if (i8 != 4) {
                wVar3 = wVar2;
                z3 = z4;
            } else {
                gVar = (p041q.g) wVar.f1494c;
                p041q.g gVar3 = (p041q.g) wVar2.f1494c;
                iG = gVar.g();
                i13 = i3;
                while (i13 < iG) {
                    view6 = (View) gVar.h(i13);
                    if (view6 == null) {
                        wVar4 = wVar2;
                    } else {
                        wVar4 = wVar2;
                    }
                    i13++;
                    wVar2 = wVar4;
                    z4 = z4;
                }
                z3 = z4;
                wVar3 = wVar2;
            }
            i4++;
            wVar2 = wVar3;
            z4 = z3;
            i3 = 0;
        }
        z2 = z4;
        while (i5 < eVar.f5258d) {
            e3 = (E) eVar.j(i5);
            if (vVar.w(e3.b)) {
                vVar.f2023l.add(e3);
                vVar.f2024m.add(null);
            }
        }
        while (i6 < eVar2.f5258d) {
            e2 = (E) eVar2.j(i6);
            if (vVar.w(e2.b)) {
                vVar.f2024m.add(e2);
                vVar.f2023l.add(null);
            }
        }
        eVarQ = v.q();
        int i16 = eVarQ.f5258d;
        WindowId windowId2 = viewGroup.getWindowId();
        i7 = i16 - 1;
        while (i7 >= 0) {
            animator = (Animator) eVarQ.f(i7);
            if (animator == null) {
            }
            i7--;
            z2 = true;
        }
        vVar.m(viewGroup, vVar.f2019h, vVar.f2020i, vVar.f2023l, vVar.f2024m);
        if (vVar.f2037z == null) {
            vVar.E();
            return true;
        }
        if (Build.VERSION.SDK_INT >= 34) {
            return true;
        }
        vVar.A();
        s sVar2 = vVar.f2037z;
        B b3 = sVar2.g;
        if (b3.f2036y == 0) {
        }
        b3.F(j2, sVar2.f2003a);
        sVar2.f2003a = j2;
        vVar.f2037z.b = true;
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.f2039c;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        z.f2041c.remove(viewGroup);
        ArrayList arrayList = (ArrayList) z.b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                ((v) obj).D(viewGroup);
            }
        }
        this.b.j(true);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
