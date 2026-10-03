package X;

import C1.T;
import P.C0149h0;
import P.l0;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f2311a;
    public final ViewPager2 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p f2312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutManager f2313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2314e;
    public int f;
    public final d g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2315h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2316i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2317j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2318k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2319l;

    public e(ViewPager2 viewPager2) {
        this.b = viewPager2;
        p pVar = viewPager2.f3065k;
        this.f2312c = pVar;
        this.f2313d = (LinearLayoutManager) pVar.getLayoutManager();
        this.g = new d();
        e();
    }

    @Override // P.l0
    public final void a(RecyclerView recyclerView, int i3) {
        b bVar;
        int i4 = this.f2314e;
        if (!(i4 == 1 && this.f == 1) && i3 == 1) {
            this.f2314e = 1;
            int i5 = this.f2316i;
            if (i5 != -1) {
                this.f2315h = i5;
                this.f2316i = -1;
            } else if (this.f2315h == -1) {
                this.f2315h = this.f2313d.Q0();
            }
            d(1);
            return;
        }
        if ((i4 == 1 || i4 == 4) && i3 == 2) {
            if (this.f2318k) {
                d(2);
                this.f2317j = true;
                return;
            }
            return;
        }
        d dVar = this.g;
        if ((i4 == 1 || i4 == 4) && i3 == 0) {
            f();
            if (!this.f2318k) {
                int i6 = dVar.f2309a;
                if (i6 != -1 && (bVar = this.f2311a) != null) {
                    bVar.b(i6, 0.0f, 0);
                }
            } else if (dVar.f2310c == 0) {
                int i7 = this.f2315h;
                int i8 = dVar.f2309a;
                if (i7 != i8) {
                    c(i8);
                }
            }
            d(0);
            e();
        }
        if (this.f2314e == 2 && i3 == 0 && this.f2319l) {
            f();
            if (dVar.f2310c == 0) {
                int i9 = this.f2316i;
                int i10 = dVar.f2309a;
                if (i9 != i10) {
                    if (i10 == -1) {
                        i10 = 0;
                    }
                    c(i10);
                }
                d(0);
                e();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:17:0x002e  */
    @Override // P.l0
    public final void b(RecyclerView recyclerView, int i3, int i4) {
        int i5;
        this.f2318k = true;
        f();
        boolean z2 = this.f2317j;
        d dVar = this.g;
        if (z2) {
            this.f2317j = false;
            if (i4 <= 0) {
                if (i4 == 0) {
                    if ((i3 < 0) == (ViewCompat.getLayoutDirection(this.b.f3062h.b) == 1)) {
                        if (dVar.f2310c != 0) {
                            i5 = dVar.f2309a + 1;
                        }
                    }
                }
                i5 = dVar.f2309a;
            } else if (dVar.f2310c != 0) {
                i5 = dVar.f2309a + 1;
            } else {
                i5 = dVar.f2309a;
            }
            this.f2316i = i5;
            if (this.f2315h != i5) {
                c(i5);
            }
        } else if (this.f2314e == 0) {
            int i6 = dVar.f2309a;
            if (i6 == -1) {
                i6 = 0;
            }
            c(i6);
        }
        int i7 = dVar.f2309a;
        if (i7 == -1) {
            i7 = 0;
        }
        float f = dVar.b;
        int i8 = dVar.f2310c;
        b bVar = this.f2311a;
        if (bVar != null) {
            bVar.b(i7, f, i8);
        }
        int i9 = dVar.f2309a;
        int i10 = this.f2316i;
        if ((i9 == i10 || i10 == -1) && dVar.f2310c == 0 && this.f != 1) {
            d(0);
            e();
        }
    }

    public final void c(int i3) {
        b bVar = this.f2311a;
        if (bVar != null) {
            bVar.c(i3);
        }
    }

    public final void d(int i3) {
        if ((this.f2314e == 3 && this.f == 0) || this.f == i3) {
            return;
        }
        this.f = i3;
        b bVar = this.f2311a;
        if (bVar != null) {
            bVar.a(i3);
        }
    }

    public final void e() {
        this.f2314e = 0;
        this.f = 0;
        d dVar = this.g;
        dVar.f2309a = -1;
        dVar.b = 0.0f;
        dVar.f2310c = 0;
        this.f2315h = -1;
        this.f2316i = -1;
        this.f2317j = false;
        this.f2318k = false;
        this.f2319l = false;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0135  */
    /* JADX WARN: Code duplicated, block: B:65:0x0141  */
    /* JADX WARN: Code duplicated, block: B:67:0x014b A[LOOP:2: B:64:0x013f->B:67:0x014b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x014e A[SYNTHETIC] */
    public final void f() {
        int top;
        int iV;
        int top2;
        int i3;
        int bottom;
        int i4;
        LinearLayoutManager linearLayoutManager = this.f2313d;
        int iQ0 = linearLayoutManager.Q0();
        d dVar = this.g;
        dVar.f2309a = iQ0;
        if (iQ0 == -1) {
            dVar.f2309a = -1;
            dVar.b = 0.0f;
            dVar.f2310c = 0;
            return;
        }
        View viewQ = linearLayoutManager.q(iQ0);
        if (viewQ == null) {
            dVar.f2309a = -1;
            dVar.b = 0.0f;
            dVar.f2310c = 0;
            return;
        }
        int i5 = ((C0149h0) viewQ.getLayoutParams()).b.left;
        int i6 = ((C0149h0) viewQ.getLayoutParams()).b.right;
        int i7 = ((C0149h0) viewQ.getLayoutParams()).b.top;
        int i8 = ((C0149h0) viewQ.getLayoutParams()).b.bottom;
        ViewGroup.LayoutParams layoutParams = viewQ.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i5 += marginLayoutParams.leftMargin;
            i6 += marginLayoutParams.rightMargin;
            i7 += marginLayoutParams.topMargin;
            i8 += marginLayoutParams.bottomMargin;
        }
        int height = viewQ.getHeight() + i7 + i8;
        int width = viewQ.getWidth() + i5 + i6;
        int i9 = linearLayoutManager.f2933p;
        p pVar = this.f2312c;
        if (i9 == 0) {
            top = (viewQ.getLeft() - i5) - pVar.getPaddingLeft();
            if (ViewCompat.getLayoutDirection(this.b.f3062h.b) == 1) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewQ.getTop() - i7) - pVar.getPaddingTop();
        }
        int i10 = -top;
        dVar.f2310c = i10;
        if (i10 >= 0) {
            dVar.b = height != 0 ? i10 / height : 0.0f;
            return;
        }
        int iV2 = linearLayoutManager.v();
        if (iV2 != 0) {
            boolean z2 = linearLayoutManager.f2933p == 0;
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iV2, 2);
            for (int i11 = 0; i11 < iV2; i11++) {
                View viewU = linearLayoutManager.u(i11);
                if (viewU == null) {
                    throw new IllegalStateException("null view contained in the view hierarchy");
                }
                ViewGroup.LayoutParams layoutParams2 = viewU.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : a.f2307a;
                int[] iArr2 = iArr[i11];
                if (z2) {
                    top2 = viewU.getLeft();
                    i3 = marginLayoutParams2.leftMargin;
                } else {
                    top2 = viewU.getTop();
                    i3 = marginLayoutParams2.topMargin;
                }
                iArr2[0] = top2 - i3;
                int[] iArr3 = iArr[i11];
                if (z2) {
                    bottom = viewU.getRight();
                    i4 = marginLayoutParams2.rightMargin;
                } else {
                    bottom = viewU.getBottom();
                    i4 = marginLayoutParams2.bottomMargin;
                }
                iArr3[1] = bottom + i4;
            }
            Arrays.sort(iArr, new T(9));
            int i12 = 1;
            while (true) {
                if (i12 >= iV2) {
                    int[] iArr4 = iArr[0];
                    int i13 = iArr4[1];
                    int i14 = iArr4[0];
                    int i15 = i13 - i14;
                    if (i14 <= 0 && iArr[iV2 - 1][1] >= i15) {
                        if (linearLayoutManager.v() <= 1) {
                        }
                    }
                } else if (iArr[i12 - 1][1] == iArr[i12][0]) {
                    i12++;
                }
                iV = linearLayoutManager.v();
                for (int i16 = 0; i16 < iV; i16++) {
                    if (!a.a(linearLayoutManager.u(i16))) {
                        throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
                    }
                }
            }
        } else if (linearLayoutManager.v() <= 1) {
            iV = linearLayoutManager.v();
            while (i16 < iV) {
                if (!a.a(linearLayoutManager.u(i16))) {
                    throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
                }
            }
        }
        Locale locale = Locale.US;
        throw new IllegalStateException(E.b.i(dVar.f2310c, "Page can only be offset by a positive amount, not by "));
    }
}
