package P;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: P.v, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0163v extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0165x f1770a;

    public C0163v(C0165x c0165x) {
        this.f1770a = c0165x;
    }

    @Override // P.l0
    public final void b(RecyclerView recyclerView, int i3, int i4) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        C0165x c0165x = this.f1770a;
        int i5 = c0165x.f1776a;
        int iComputeVerticalScrollRange = c0165x.f1791s.computeVerticalScrollRange();
        int i6 = c0165x.f1790r;
        c0165x.f1792t = iComputeVerticalScrollRange - i6 > 0 && i6 >= i5;
        int iComputeHorizontalScrollRange = c0165x.f1791s.computeHorizontalScrollRange();
        int i7 = c0165x.f1789q;
        boolean z2 = iComputeHorizontalScrollRange - i7 > 0 && i7 >= i5;
        c0165x.f1793u = z2;
        boolean z3 = c0165x.f1792t;
        if (!z3 && !z2) {
            if (c0165x.f1794v != 0) {
                c0165x.l(0);
                return;
            }
            return;
        }
        if (z3) {
            float f = i6;
            c0165x.f1784l = (int) ((((f / 2.0f) + iComputeVerticalScrollOffset) * f) / iComputeVerticalScrollRange);
            c0165x.f1783k = Math.min(i6, (i6 * i6) / iComputeVerticalScrollRange);
        }
        if (c0165x.f1793u) {
            float f3 = iComputeHorizontalScrollOffset;
            float f4 = i7;
            c0165x.f1787o = (int) ((((f4 / 2.0f) + f3) * f4) / iComputeHorizontalScrollRange);
            c0165x.f1786n = Math.min(i7, (i7 * i7) / iComputeHorizontalScrollRange);
        }
        int i8 = c0165x.f1794v;
        if (i8 == 0 || i8 == 1) {
            c0165x.l(1);
        }
    }
}
