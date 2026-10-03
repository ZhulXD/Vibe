package P;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

/* JADX INFO: renamed from: P.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0152j implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0158p f1695d;

    public /* synthetic */ RunnableC0152j(C0158p c0158p, ArrayList arrayList, int i3) {
        this.b = i3;
        this.f1695d = c0158p;
        this.f1694c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ArrayList arrayList = this.f1694c;
                int size = arrayList.size();
                int i3 = 0;
                while (true) {
                    C0158p c0158p = this.f1695d;
                    if (i3 >= size) {
                        arrayList.clear();
                        c0158p.f1732m.remove(arrayList);
                    } else {
                        Object obj = arrayList.get(i3);
                        i3++;
                        C0157o c0157o = (C0157o) obj;
                        y0 y0Var = c0157o.f1717a;
                        int i4 = c0157o.b;
                        int i5 = c0157o.f1718c;
                        int i6 = c0157o.f1719d;
                        int i7 = c0157o.f1720e;
                        c0158p.getClass();
                        View view = y0Var.f1807a;
                        int i8 = i6 - i4;
                        int i9 = i7 - i5;
                        if (i8 != 0) {
                            view.animate().translationX(0.0f);
                        }
                        if (i9 != 0) {
                            view.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        c0158p.f1735p.add(y0Var);
                        viewPropertyAnimatorAnimate.setDuration(c0158p.f1657e).setListener(new C0154l(c0158p, y0Var, i8, view, i9, viewPropertyAnimatorAnimate)).start();
                    }
                    break;
                }
                break;
            case 1:
                ArrayList arrayList2 = this.f1694c;
                int size2 = arrayList2.size();
                int i10 = 0;
                while (true) {
                    C0158p c0158p2 = this.f1695d;
                    if (i10 >= size2) {
                        arrayList2.clear();
                        c0158p2.f1733n.remove(arrayList2);
                        break;
                    } else {
                        Object obj2 = arrayList2.get(i10);
                        i10++;
                        C0156n c0156n = (C0156n) obj2;
                        ArrayList arrayList3 = c0158p2.f1737r;
                        long j2 = c0158p2.f;
                        y0 y0Var2 = c0156n.f1711a;
                        View view2 = y0Var2 == null ? null : y0Var2.f1807a;
                        y0 y0Var3 = c0156n.b;
                        View view3 = y0Var3 != null ? y0Var3.f1807a : null;
                        if (view2 != null) {
                            ViewPropertyAnimator duration = view2.animate().setDuration(j2);
                            arrayList3.add(c0156n.f1711a);
                            duration.translationX(c0156n.f1714e - c0156n.f1712c);
                            duration.translationY(c0156n.f - c0156n.f1713d);
                            duration.alpha(0.0f).setListener(new C0155m(c0158p2, c0156n, duration, view2, 0)).start();
                        }
                        if (view3 != null) {
                            ViewPropertyAnimator viewPropertyAnimatorAnimate2 = view3.animate();
                            arrayList3.add(c0156n.b);
                            viewPropertyAnimatorAnimate2.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new C0155m(c0158p2, c0156n, viewPropertyAnimatorAnimate2, view3, 1)).start();
                        }
                    }
                }
                break;
            default:
                ArrayList arrayList4 = this.f1694c;
                int size3 = arrayList4.size();
                int i11 = 0;
                while (true) {
                    C0158p c0158p3 = this.f1695d;
                    if (i11 >= size3) {
                        arrayList4.clear();
                        c0158p3.f1731l.remove(arrayList4);
                    } else {
                        Object obj3 = arrayList4.get(i11);
                        i11++;
                        y0 y0Var4 = (y0) obj3;
                        c0158p3.getClass();
                        View view4 = y0Var4.f1807a;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate3 = view4.animate();
                        c0158p3.f1734o.add(y0Var4);
                        viewPropertyAnimatorAnimate3.alpha(1.0f).setDuration(c0158p3.f1655c).setListener(new C0153k(c0158p3, y0Var4, view4, viewPropertyAnimatorAnimate3)).start();
                    }
                    break;
                }
                break;
        }
    }
}
