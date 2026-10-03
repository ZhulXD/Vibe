package H0;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.math.MathUtils;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ int f1059m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ z.a f1060n;

    public /* synthetic */ e(z.a aVar, int i3) {
        this.f1059m = i3;
        this.f1060n = aVar;
    }

    @Override // p000a.a
    public final void A(View view, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        switch (this.f1059m) {
            case 0:
                ((BottomSheetBehavior) this.f1060n).y(i4);
                return;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1060n;
                WeakReference weakReference = sideSheetBehavior.f3501q;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f3488a.c0(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.f3506v;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.f3488a.f(i3);
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw E.b.g(it);
                }
                return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e9  */
    @Override // p000a.a
    public final void B(View view, float f, float f3) {
        int i3;
        switch (this.f1059m) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f1060n;
                int i4 = 6;
                if (f3 < 0.0f) {
                    if (bottomSheetBehavior.b) {
                        i4 = 3;
                    } else {
                        int top = view.getTop();
                        System.currentTimeMillis();
                        bottomSheetBehavior.getClass();
                        if (top <= bottomSheetBehavior.f3303E) {
                            i4 = 3;
                        }
                    }
                } else if (bottomSheetBehavior.f3307I && bottomSheetBehavior.J(view, f3)) {
                    if (Math.abs(f) >= Math.abs(f3) || f3 <= bottomSheetBehavior.f3328d) {
                        if (view.getTop() > (bottomSheetBehavior.C() + bottomSheetBehavior.f3317T) / 2) {
                            i4 = 5;
                        } else if (bottomSheetBehavior.b || Math.abs(view.getTop() - bottomSheetBehavior.C()) < Math.abs(view.getTop() - bottomSheetBehavior.f3303E)) {
                            i4 = 3;
                        }
                    } else {
                        i4 = 5;
                    }
                } else if (f3 == 0.0f || Math.abs(f) > Math.abs(f3)) {
                    int top2 = view.getTop();
                    if (!bottomSheetBehavior.b) {
                        int i5 = bottomSheetBehavior.f3303E;
                        if (top2 < i5) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior.f3305G)) {
                                i4 = 3;
                            } else {
                                bottomSheetBehavior.getClass();
                            }
                        } else if (Math.abs(top2 - i5) < Math.abs(top2 - bottomSheetBehavior.f3305G)) {
                            bottomSheetBehavior.getClass();
                        } else {
                            i4 = 4;
                        }
                    } else if (Math.abs(top2 - bottomSheetBehavior.f3302D) < Math.abs(top2 - bottomSheetBehavior.f3305G)) {
                        i4 = 3;
                    } else {
                        i4 = 4;
                    }
                } else if (bottomSheetBehavior.b) {
                    i4 = 4;
                } else {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - bottomSheetBehavior.f3303E) < Math.abs(top3 - bottomSheetBehavior.f3305G)) {
                        bottomSheetBehavior.getClass();
                    } else {
                        i4 = 4;
                    }
                }
                bottomSheetBehavior.getClass();
                bottomSheetBehavior.K(view, i4, true);
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1060n;
                if (!sideSheetBehavior.f3488a.J(f)) {
                    if (!sideSheetBehavior.f3488a.X(view, f)) {
                        if (f == 0.0f || Math.abs(f) <= Math.abs(f3)) {
                            int left = view.getLeft();
                            i3 = Math.abs(left - sideSheetBehavior.f3488a.y()) < Math.abs(left - sideSheetBehavior.f3488a.A()) ? 3 : 5;
                        }
                    } else if (sideSheetBehavior.f3488a.N(f, f3) || sideSheetBehavior.f3488a.M(view)) {
                    }
                }
                sideSheetBehavior.y(view, i3, true);
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0048  */
    @Override // p000a.a
    public final boolean N(View view, int i3) {
        WeakReference weakReference;
        WeakReference weakReference2;
        switch (this.f1059m) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f1060n;
                int i4 = bottomSheetBehavior.f3309L;
                if (i4 != 1 && !bottomSheetBehavior.f3325b0) {
                    if (i4 == 3 && bottomSheetBehavior.Z == i3) {
                        WeakReference weakReference3 = bottomSheetBehavior.f3319V;
                        View view2 = weakReference3 != null ? (View) weakReference3.get() : null;
                        if (view2 == null || !view2.canScrollVertically(-1)) {
                            System.currentTimeMillis();
                            weakReference = bottomSheetBehavior.f3318U;
                            if (weakReference == null) {
                            }
                        }
                    } else {
                        System.currentTimeMillis();
                        weakReference = bottomSheetBehavior.f3318U;
                        if (weakReference == null && weakReference.get() == view) {
                            return true;
                        }
                    }
                }
                return false;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1060n;
                return (sideSheetBehavior.f3492h == 1 || (weakReference2 = sideSheetBehavior.f3500p) == null || weakReference2.get() != view) ? false : true;
        }
    }

    @Override // p000a.a
    public final int e(View view, int i3) {
        switch (this.f1059m) {
            case 0:
                return view.getLeft();
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1060n;
                return MathUtils.clamp(i3, sideSheetBehavior.f3488a.D(), sideSheetBehavior.f3488a.C());
        }
    }

    @Override // p000a.a
    public final int f(View view, int i3) {
        switch (this.f1059m) {
            case 0:
                return MathUtils.clamp(i3, ((BottomSheetBehavior) this.f1060n).C(), p());
            default:
                return view.getTop();
        }
    }

    @Override // p000a.a
    public int o(View view) {
        switch (this.f1059m) {
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1060n;
                return sideSheetBehavior.f3496l + sideSheetBehavior.f3499o;
            default:
                return super.o(view);
        }
    }

    @Override // p000a.a
    public int p() {
        switch (this.f1059m) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f1060n;
                return bottomSheetBehavior.f3307I ? bottomSheetBehavior.f3317T : bottomSheetBehavior.f3305G;
            default:
                return super.p();
        }
    }

    @Override // p000a.a
    public final void z(int i3) {
        switch (this.f1059m) {
            case 0:
                if (i3 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f1060n;
                    if (bottomSheetBehavior.K) {
                        bottomSheetBehavior.I(1);
                    }
                }
                break;
            default:
                if (i3 == 1) {
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1060n;
                    if (sideSheetBehavior.g) {
                        sideSheetBehavior.w(1);
                    }
                }
                break;
        }
    }
}
