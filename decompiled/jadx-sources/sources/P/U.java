package P;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class U implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1641c;

    public /* synthetic */ U(RecyclerView recyclerView, int i3) {
        this.b = i3;
        this.f1641c = recyclerView;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x011d  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        switch (this.b) {
            case 0:
                RecyclerView recyclerView = this.f1641c;
                if (recyclerView.f3012v && !recyclerView.isLayoutRequested()) {
                    if (!recyclerView.f3008t) {
                        recyclerView.requestLayout();
                    } else if (!recyclerView.f3018y) {
                        recyclerView.p();
                    } else {
                        recyclerView.f3016x = true;
                    }
                    break;
                }
                break;
            default:
                RecyclerView recyclerView2 = this.f1641c;
                AbstractC0139c0 abstractC0139c0 = recyclerView2.f2967N;
                if (abstractC0139c0 != null) {
                    C0158p c0158p = (C0158p) abstractC0139c0;
                    long j2 = c0158p.f1656d;
                    ArrayList arrayList = c0158p.f1727h;
                    boolean zIsEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = c0158p.f1729j;
                    boolean zIsEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = c0158p.f1730k;
                    boolean zIsEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = c0158p.f1728i;
                    boolean zIsEmpty4 = arrayList4.isEmpty();
                    if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
                        z2 = false;
                    } else {
                        int size = arrayList.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Object obj = arrayList.get(i3);
                            i3++;
                            y0 y0Var = (y0) obj;
                            ArrayList arrayList5 = arrayList;
                            View view = y0Var.f1807a;
                            boolean z3 = zIsEmpty;
                            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                            c0158p.f1736q.add(y0Var);
                            viewPropertyAnimatorAnimate.setDuration(j2).alpha(0.0f).setListener(new C0153k(c0158p, y0Var, viewPropertyAnimatorAnimate, view)).start();
                            arrayList = arrayList5;
                            zIsEmpty = z3;
                            zIsEmpty2 = zIsEmpty2;
                            zIsEmpty3 = zIsEmpty3;
                        }
                        boolean z4 = zIsEmpty;
                        boolean z5 = zIsEmpty2;
                        boolean z6 = zIsEmpty3;
                        arrayList.clear();
                        if (!z5) {
                            ArrayList arrayList6 = new ArrayList();
                            arrayList6.addAll(arrayList2);
                            c0158p.f1732m.add(arrayList6);
                            arrayList2.clear();
                            RunnableC0152j runnableC0152j = new RunnableC0152j(c0158p, arrayList6, 0);
                            if (z4) {
                                runnableC0152j.run();
                            } else {
                                ViewCompat.postOnAnimationDelayed(((C0157o) arrayList6.get(0)).f1717a.f1807a, runnableC0152j, j2);
                            }
                        }
                        if (!z6) {
                            ArrayList arrayList7 = new ArrayList();
                            arrayList7.addAll(arrayList3);
                            c0158p.f1733n.add(arrayList7);
                            arrayList3.clear();
                            RunnableC0152j runnableC0152j2 = new RunnableC0152j(c0158p, arrayList7, 1);
                            if (z4) {
                                runnableC0152j2.run();
                            } else {
                                ViewCompat.postOnAnimationDelayed(((C0156n) arrayList7.get(0)).f1711a.f1807a, runnableC0152j2, j2);
                            }
                        }
                        if (zIsEmpty4) {
                            z2 = false;
                        } else {
                            ArrayList arrayList8 = new ArrayList();
                            arrayList8.addAll(arrayList4);
                            c0158p.f1731l.add(arrayList8);
                            arrayList4.clear();
                            RunnableC0152j runnableC0152j3 = new RunnableC0152j(c0158p, arrayList8, 2);
                            if (z4 && z5 && z6) {
                                runnableC0152j3.run();
                                z2 = false;
                            } else {
                                if (z4) {
                                    j2 = 0;
                                }
                                z2 = false;
                                ViewCompat.postOnAnimationDelayed(((y0) arrayList8.get(0)).f1807a, runnableC0152j3, Math.max(!z5 ? c0158p.f1657e : 0L, z6 ? 0L : c0158p.f) + j2);
                            }
                        }
                    }
                } else {
                    z2 = false;
                }
                recyclerView2.f3001o0 = z2;
                break;
        }
    }
}
