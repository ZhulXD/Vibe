package P;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* JADX INFO: renamed from: P.y, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0166y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1803a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f1804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1805d;

    public final void a(int i3, int i4) {
        if (i3 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i5 = this.f1805d;
        int i6 = i5 * 2;
        int[] iArr = this.f1804c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f1804c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i6 >= iArr.length) {
            int[] iArr3 = new int[i5 * 4];
            this.f1804c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f1804c;
        iArr4[i6] = i3;
        iArr4[i6 + 1] = i4;
        this.f1805d++;
    }

    public final void b(RecyclerView recyclerView, boolean z2) {
        this.f1805d = 0;
        int[] iArr = this.f1804c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        AbstractC0147g0 abstractC0147g0 = recyclerView.f3000o;
        if (recyclerView.f2999n == null || abstractC0147g0 == null || !abstractC0147g0.f1679i) {
            return;
        }
        if (z2) {
            if (!recyclerView.f.g()) {
                abstractC0147g0.i(recyclerView.f2999n.a(), this);
            }
        } else if (!recyclerView.M()) {
            abstractC0147g0.h(this.f1803a, this.b, recyclerView.f2990i0, this);
        }
        int i3 = this.f1805d;
        if (i3 > abstractC0147g0.f1680j) {
            abstractC0147g0.f1680j = i3;
            abstractC0147g0.f1681k = z2;
            recyclerView.f2981d.m();
        }
    }
}
