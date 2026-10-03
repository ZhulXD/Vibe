package P;

import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A implements Runnable {
    public static final ThreadLocal f = new ThreadLocal();
    public static final C1.T g = new C1.T(5);
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f1522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f1524e;

    public static y0 c(RecyclerView recyclerView, int i3, long j2) {
        int iH = recyclerView.g.h();
        for (int i4 = 0; i4 < iH; i4++) {
            y0 y0VarK = RecyclerView.K(recyclerView.g.g(i4));
            if (y0VarK.f1808c == i3 && !y0VarK.f()) {
                return null;
            }
        }
        o0 o0Var = recyclerView.f2981d;
        try {
            recyclerView.R();
            y0 y0VarK2 = o0Var.k(i3, j2);
            if (y0VarK2 != null) {
                if (!y0VarK2.e() || y0VarK2.f()) {
                    o0Var.a(y0VarK2, false);
                } else {
                    o0Var.h(y0VarK2.f1807a);
                }
            }
            return y0VarK2;
        } finally {
            recyclerView.S(false);
        }
    }

    public final void a(RecyclerView recyclerView, int i3, int i4) {
        if (recyclerView.f3008t) {
            if (RecyclerView.f2944B0 && !this.b.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f1522c == 0) {
                this.f1522c = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        C0166y c0166y = recyclerView.f2988h0;
        c0166y.f1803a = i3;
        c0166y.b = i4;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00cb  */
    public final void b(long j2) {
        C0167z c0167z;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        C0167z c0167z2;
        ArrayList arrayList = this.f1524e;
        ArrayList arrayList2 = this.b;
        int size = arrayList2.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList2.get(i4);
            int windowVisibility = recyclerView3.getWindowVisibility();
            C0166y c0166y = recyclerView3.f2988h0;
            if (windowVisibility == 0) {
                c0166y.b(recyclerView3, false);
                i3 += c0166y.f1805d;
            }
        }
        arrayList.ensureCapacity(i3);
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList2.get(i6);
            if (recyclerView4.getWindowVisibility() == 0) {
                C0166y c0166y2 = recyclerView4.f2988h0;
                int iAbs = Math.abs(c0166y2.b) + Math.abs(c0166y2.f1803a);
                for (int i7 = 0; i7 < c0166y2.f1805d * 2; i7 += 2) {
                    if (i5 >= arrayList.size()) {
                        c0167z2 = new C0167z();
                        arrayList.add(c0167z2);
                    } else {
                        c0167z2 = (C0167z) arrayList.get(i5);
                    }
                    int[] iArr = c0166y2.f1804c;
                    int i8 = iArr[i7 + 1];
                    c0167z2.f1823a = i8 <= iAbs;
                    c0167z2.b = iAbs;
                    c0167z2.f1824c = i8;
                    c0167z2.f1825d = recyclerView4;
                    c0167z2.f1826e = iArr[i7];
                    i5++;
                }
            }
        }
        Collections.sort(arrayList, g);
        for (int i9 = 0; i9 < arrayList.size() && (recyclerView = (c0167z = (C0167z) arrayList.get(i9)).f1825d) != null; i9++) {
            y0 y0VarC = c(recyclerView, c0167z.f1826e, c0167z.f1823a ? Long.MAX_VALUE : j2);
            if (y0VarC != null && y0VarC.b != null && y0VarC.e() && !y0VarC.f() && (recyclerView2 = (RecyclerView) y0VarC.b.get()) != null) {
                if (recyclerView2.f2959E && recyclerView2.g.h() != 0) {
                    o0 o0Var = recyclerView2.f2981d;
                    AbstractC0139c0 abstractC0139c0 = recyclerView2.f2967N;
                    if (abstractC0139c0 != null) {
                        abstractC0139c0.e();
                    }
                    AbstractC0147g0 abstractC0147g0 = recyclerView2.f3000o;
                    if (abstractC0147g0 != null) {
                        abstractC0147g0.m0(o0Var);
                        recyclerView2.f3000o.n0(o0Var);
                    }
                    o0Var.f1721a.clear();
                    o0Var.f();
                }
                C0166y c0166y3 = recyclerView2.f2988h0;
                c0166y3.b(recyclerView2, true);
                if (c0166y3.f1805d != 0) {
                    try {
                        TraceCompat.beginSection("RV Nested Prefetch");
                        u0 u0Var = recyclerView2.f2990i0;
                        W w2 = recyclerView2.f2999n;
                        u0Var.f1761d = 1;
                        u0Var.f1762e = w2.a();
                        u0Var.g = false;
                        u0Var.f1763h = false;
                        u0Var.f1764i = false;
                        for (int i10 = 0; i10 < c0166y3.f1805d * 2; i10 += 2) {
                            c(recyclerView2, c0166y3.f1804c[i10], j2);
                        }
                        TraceCompat.endSection();
                    } catch (Throwable th) {
                        TraceCompat.endSection();
                        throw th;
                    }
                }
            }
            c0167z.f1823a = false;
            c0167z.b = 0;
            c0167z.f1824c = 0;
            c0167z.f1825d = null;
            c0167z.f1826e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.b;
        try {
            TraceCompat.beginSection("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long jMax = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i3);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f1523d);
                }
            }
        } finally {
            this.f1522c = 0L;
            TraceCompat.endSection();
        }
    }
}
