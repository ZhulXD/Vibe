package P;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: renamed from: P.p, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0158p extends AbstractC0139c0 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f1726s;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f1727h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f1728i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f1729j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList f1730k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList f1731l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f1732m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f1733n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList f1734o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f1735p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList f1736q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList f1737r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((y0) arrayList.get(size)).f1807a.animate().cancel();
        }
    }

    @Override // P.AbstractC0139c0
    public final boolean a(y0 y0Var, y0 y0Var2, C0137b0 c0137b0, C0137b0 c0137b1) {
        int i3;
        int i4;
        int i5 = c0137b0.f1651a;
        int i6 = c0137b0.b;
        if (y0Var2.o()) {
            int i7 = c0137b0.f1651a;
            i4 = c0137b0.b;
            i3 = i7;
        } else {
            i3 = c0137b1.f1651a;
            i4 = c0137b1.b;
        }
        if (y0Var == y0Var2) {
            return g(y0Var, i5, i6, i3, i4);
        }
        View view = y0Var.f1807a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(y0Var);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        View view2 = y0Var2.f1807a;
        l(y0Var2);
        view2.setTranslationX(-((int) ((i3 - i5) - translationX)));
        view2.setTranslationY(-((int) ((i4 - i6) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.f1730k;
        C0156n c0156n = new C0156n();
        c0156n.f1711a = y0Var;
        c0156n.b = y0Var2;
        c0156n.f1712c = i5;
        c0156n.f1713d = i6;
        c0156n.f1714e = i3;
        c0156n.f = i4;
        arrayList.add(c0156n);
        return true;
    }

    @Override // P.AbstractC0139c0
    public final void d(y0 y0Var) {
        ArrayList arrayList = this.f1731l;
        ArrayList arrayList2 = this.f1732m;
        ArrayList arrayList3 = this.f1733n;
        View view = y0Var.f1807a;
        view.animate().cancel();
        ArrayList arrayList4 = this.f1729j;
        int size = arrayList4.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((C0157o) arrayList4.get(size)).f1717a == y0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(y0Var);
                arrayList4.remove(size);
            }
        }
        j(this.f1730k, y0Var);
        if (this.f1727h.remove(y0Var)) {
            view.setAlpha(1.0f);
            c(y0Var);
        }
        if (this.f1728i.remove(y0Var)) {
            view.setAlpha(1.0f);
            c(y0Var);
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList5 = (ArrayList) arrayList3.get(size2);
            j(arrayList5, y0Var);
            if (arrayList5.isEmpty()) {
                arrayList3.remove(size2);
            }
        }
        for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList6 = (ArrayList) arrayList2.get(size3);
            for (int size4 = arrayList6.size() - 1; size4 >= 0; size4--) {
                if (((C0157o) arrayList6.get(size4)).f1717a == y0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(y0Var);
                    arrayList6.remove(size4);
                    if (!arrayList6.isEmpty()) {
                        break;
                    }
                    arrayList2.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = arrayList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList.get(size5);
            if (arrayList7.remove(y0Var)) {
                view.setAlpha(1.0f);
                c(y0Var);
                if (arrayList7.isEmpty()) {
                    arrayList.remove(size5);
                }
            }
        }
        this.f1736q.remove(y0Var);
        this.f1734o.remove(y0Var);
        this.f1737r.remove(y0Var);
        this.f1735p.remove(y0Var);
        i();
    }

    @Override // P.AbstractC0139c0
    public final void e() {
        ArrayList arrayList = this.f1733n;
        ArrayList arrayList2 = this.f1731l;
        ArrayList arrayList3 = this.f1732m;
        ArrayList arrayList4 = this.f1730k;
        ArrayList arrayList5 = this.f1728i;
        ArrayList arrayList6 = this.f1727h;
        ArrayList arrayList7 = this.f1729j;
        int size = arrayList7.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0157o c0157o = (C0157o) arrayList7.get(size);
            View view = c0157o.f1717a.f1807a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(c0157o.f1717a);
            arrayList7.remove(size);
        }
        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
            c((y0) arrayList6.get(size2));
            arrayList6.remove(size2);
        }
        int size3 = arrayList5.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            y0 y0Var = (y0) arrayList5.get(size3);
            y0Var.f1807a.setAlpha(1.0f);
            c(y0Var);
            arrayList5.remove(size3);
        }
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            C0156n c0156n = (C0156n) arrayList4.get(size4);
            y0 y0Var2 = c0156n.f1711a;
            if (y0Var2 != null) {
                k(c0156n, y0Var2);
            }
            y0 y0Var3 = c0156n.b;
            if (y0Var3 != null) {
                k(c0156n, y0Var3);
            }
        }
        arrayList4.clear();
        if (f()) {
            for (int size5 = arrayList3.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList8 = (ArrayList) arrayList3.get(size5);
                for (int size6 = arrayList8.size() - 1; size6 >= 0; size6--) {
                    C0157o c0157o2 = (C0157o) arrayList8.get(size6);
                    View view2 = c0157o2.f1717a.f1807a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(c0157o2.f1717a);
                    arrayList8.remove(size6);
                    if (arrayList8.isEmpty()) {
                        arrayList3.remove(arrayList8);
                    }
                }
            }
            for (int size7 = arrayList2.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList9 = (ArrayList) arrayList2.get(size7);
                for (int size8 = arrayList9.size() - 1; size8 >= 0; size8--) {
                    y0 y0Var4 = (y0) arrayList9.get(size8);
                    y0Var4.f1807a.setAlpha(1.0f);
                    c(y0Var4);
                    arrayList9.remove(size8);
                    if (arrayList9.isEmpty()) {
                        arrayList2.remove(arrayList9);
                    }
                }
            }
            for (int size9 = arrayList.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    C0156n c0156n2 = (C0156n) arrayList10.get(size10);
                    y0 y0Var5 = c0156n2.f1711a;
                    if (y0Var5 != null) {
                        k(c0156n2, y0Var5);
                    }
                    y0 y0Var6 = c0156n2.b;
                    if (y0Var6 != null) {
                        k(c0156n2, y0Var6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList.remove(arrayList10);
                    }
                }
            }
            h(this.f1736q);
            h(this.f1735p);
            h(this.f1734o);
            h(this.f1737r);
            ArrayList arrayList11 = this.b;
            if (arrayList11.size() > 0) {
                arrayList11.get(0).getClass();
                throw new ClassCastException();
            }
            arrayList11.clear();
        }
    }

    @Override // P.AbstractC0139c0
    public final boolean f() {
        return (this.f1728i.isEmpty() && this.f1730k.isEmpty() && this.f1729j.isEmpty() && this.f1727h.isEmpty() && this.f1735p.isEmpty() && this.f1736q.isEmpty() && this.f1734o.isEmpty() && this.f1737r.isEmpty() && this.f1732m.isEmpty() && this.f1731l.isEmpty() && this.f1733n.isEmpty()) ? false : true;
    }

    public final boolean g(y0 y0Var, int i3, int i4, int i5, int i6) {
        View view = y0Var.f1807a;
        int translationX = i3 + ((int) view.getTranslationX());
        int translationY = i4 + ((int) y0Var.f1807a.getTranslationY());
        l(y0Var);
        int i7 = i5 - translationX;
        int i8 = i6 - translationY;
        if (i7 == 0 && i8 == 0) {
            c(y0Var);
            return false;
        }
        if (i7 != 0) {
            view.setTranslationX(-i7);
        }
        if (i8 != 0) {
            view.setTranslationY(-i8);
        }
        ArrayList arrayList = this.f1729j;
        C0157o c0157o = new C0157o();
        c0157o.f1717a = y0Var;
        c0157o.b = translationX;
        c0157o.f1718c = translationY;
        c0157o.f1719d = i5;
        c0157o.f1720e = i6;
        arrayList.add(c0157o);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final void j(ArrayList arrayList, y0 y0Var) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0156n c0156n = (C0156n) arrayList.get(size);
            if (k(c0156n, y0Var) && c0156n.f1711a == null && c0156n.b == null) {
                arrayList.remove(c0156n);
            }
        }
    }

    public final boolean k(C0156n c0156n, y0 y0Var) {
        if (c0156n.b == y0Var) {
            c0156n.b = null;
        } else {
            if (c0156n.f1711a != y0Var) {
                return false;
            }
            c0156n.f1711a = null;
        }
        View view = y0Var.f1807a;
        View view2 = y0Var.f1807a;
        view.setAlpha(1.0f);
        view2.setTranslationX(0.0f);
        view2.setTranslationY(0.0f);
        c(y0Var);
        return true;
    }

    public final void l(y0 y0Var) {
        if (f1726s == null) {
            f1726s = new ValueAnimator().getInterpolator();
        }
        y0Var.f1807a.animate().setInterpolator(f1726s);
        d(y0Var);
    }
}
