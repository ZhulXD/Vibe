package P;

import C1.N0;
import C1.X0;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.data.RpgMakerPluginConfig;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class G extends AbstractC0141d0 implements InterfaceC0151i0 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public Rect f1560A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public long f1561B;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1565e;
    public float f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f1566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f1567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f1568j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f1569k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final N0 f1571m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1573o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1575q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RecyclerView f1576r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public VelocityTracker f1578t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList f1579u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ArrayList f1580v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public GestureDetectorCompat f1582x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public F f1583y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1562a = new ArrayList();
    public final float[] b = new float[2];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public y0 f1563c = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1570l = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1572n = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ArrayList f1574p = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final A1.u0 f1577s = new A1.u0(4, this);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f1581w = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final C f1584z = new C(this);

    public G(N0 n0) {
        this.f1571m = n0;
    }

    public static boolean o(View view, float f, float f3, float f4, float f5) {
        return f >= f4 && f <= f4 + ((float) view.getWidth()) && f3 >= f5 && f3 <= f5 + ((float) view.getHeight());
    }

    @Override // P.InterfaceC0151i0
    public final void d(View view) {
        q(view);
        y0 y0VarJ = this.f1576r.J(view);
        if (y0VarJ == null) {
            return;
        }
        y0 y0Var = this.f1563c;
        if (y0Var != null && y0VarJ == y0Var) {
            r(null, 0);
            return;
        }
        l(y0VarJ, false);
        if (this.f1562a.remove(y0VarJ.f1807a)) {
            this.f1571m.getClass();
            E.a(y0VarJ);
        }
    }

    @Override // P.AbstractC0141d0
    public final void f(View view, Rect rect) {
        rect.setEmpty();
    }

    @Override // P.AbstractC0141d0
    public final void g(Canvas canvas, RecyclerView recyclerView) {
        float f;
        float f3;
        if (this.f1563c != null) {
            float[] fArr = this.b;
            n(fArr);
            f = fArr[0];
            f3 = fArr[1];
        } else {
            f = 0.0f;
            f3 = 0.0f;
        }
        y0 y0Var = this.f1563c;
        this.f1571m.getClass();
        ArrayList arrayList = this.f1574p;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            D d3 = (D) arrayList.get(i3);
            y0 y0Var2 = d3.f1536e;
            float f4 = d3.f1533a;
            float f5 = d3.f1534c;
            if (f4 == f5) {
                d3.f1538i = y0Var2.f1807a.getTranslationX();
            } else {
                d3.f1538i = ((f5 - f4) * d3.f1542m) + f4;
            }
            float f6 = d3.b;
            float f7 = d3.f1535d;
            if (f6 == f7) {
                d3.f1539j = y0Var2.f1807a.getTranslationY();
            } else {
                d3.f1539j = ((f7 - f6) * d3.f1542m) + f6;
            }
            int iSave = canvas.save();
            E.e(recyclerView, d3.f1536e, d3.f1538i, d3.f1539j, false);
            canvas.restoreToCount(iSave);
        }
        if (y0Var != null) {
            int iSave2 = canvas.save();
            E.e(recyclerView, y0Var, f, f3, true);
            canvas.restoreToCount(iSave2);
        }
    }

    @Override // P.AbstractC0141d0
    public final void h(Canvas canvas, RecyclerView recyclerView) {
        boolean z2 = false;
        if (this.f1563c != null) {
            float[] fArr = this.b;
            n(fArr);
            float f = fArr[0];
            float f3 = fArr[1];
        }
        y0 y0Var = this.f1563c;
        this.f1571m.getClass();
        ArrayList arrayList = this.f1574p;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            D d3 = (D) arrayList.get(i3);
            int iSave = canvas.save();
            View view = d3.f1536e.f1807a;
            canvas.restoreToCount(iSave);
        }
        if (y0Var != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i4 = size - 1; i4 >= 0; i4--) {
            D d4 = (D) arrayList.get(i4);
            boolean z3 = d4.f1541l;
            if (z3 && !d4.f1537h) {
                arrayList.remove(i4);
            } else if (!z3) {
                z2 = true;
            }
        }
        if (z2) {
            recyclerView.invalidate();
        }
    }

    public final int i(int i3) {
        if ((i3 & 12) == 0) {
            return 0;
        }
        int i4 = this.f1566h > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.f1578t;
        N0 n0 = this.f1571m;
        if (velocityTracker != null && this.f1570l > -1) {
            float f = this.g;
            n0.getClass();
            velocityTracker.computeCurrentVelocity(1000, f);
            float xVelocity = this.f1578t.getXVelocity(this.f1570l);
            float yVelocity = this.f1578t.getYVelocity(this.f1570l);
            int i5 = xVelocity > 0.0f ? 8 : 4;
            float fAbs = Math.abs(xVelocity);
            if ((i5 & i3) != 0 && i4 == i5 && fAbs >= this.f && fAbs > Math.abs(yVelocity)) {
                return i5;
            }
        }
        float width = this.f1576r.getWidth();
        n0.getClass();
        float f3 = width * 0.5f;
        if ((i3 & i4) == 0 || Math.abs(this.f1566h) <= f3) {
            return 0;
        }
        return i4;
    }

    public final void j(MotionEvent motionEvent, int i3, int i4) {
        View viewM;
        if (this.f1563c == null && i3 == 2 && this.f1572n != 2) {
            N0 n0 = this.f1571m;
            n0.getClass();
            if (this.f1576r.getScrollState() == 1) {
                return;
            }
            AbstractC0147g0 layoutManager = this.f1576r.getLayoutManager();
            int i5 = this.f1570l;
            y0 y0VarJ = null;
            if (i5 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i5);
                float x2 = motionEvent.getX(iFindPointerIndex) - this.f1564d;
                float y2 = motionEvent.getY(iFindPointerIndex) - this.f1565e;
                float fAbs = Math.abs(x2);
                float fAbs2 = Math.abs(y2);
                float f = this.f1575q;
                if ((fAbs >= f || fAbs2 >= f) && ((fAbs <= fAbs2 || !layoutManager.d()) && ((fAbs2 <= fAbs || !layoutManager.e()) && (viewM = m(motionEvent)) != null))) {
                    y0VarJ = this.f1576r.J(viewM);
                }
            }
            if (y0VarJ == null) {
                return;
            }
            RecyclerView recyclerView = this.f1576r;
            int iB = (E.b(n0.f(recyclerView, y0VarJ), ViewCompat.getLayoutDirection(recyclerView)) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
            if (iB == 0) {
                return;
            }
            float x3 = motionEvent.getX(i4);
            float y3 = motionEvent.getY(i4);
            float f3 = x3 - this.f1564d;
            float f4 = y3 - this.f1565e;
            float fAbs3 = Math.abs(f3);
            float fAbs4 = Math.abs(f4);
            float f5 = this.f1575q;
            if (fAbs3 >= f5 || fAbs4 >= f5) {
                if (fAbs3 > fAbs4) {
                    if (f3 < 0.0f && (iB & 4) == 0) {
                        return;
                    }
                    if (f3 > 0.0f && (iB & 8) == 0) {
                        return;
                    }
                } else {
                    if (f4 < 0.0f && (iB & 1) == 0) {
                        return;
                    }
                    if (f4 > 0.0f && (iB & 2) == 0) {
                        return;
                    }
                }
                this.f1567i = 0.0f;
                this.f1566h = 0.0f;
                this.f1570l = motionEvent.getPointerId(0);
                r(y0VarJ, 1);
            }
        }
    }

    public final int k(int i3) {
        if ((i3 & 3) == 0) {
            return 0;
        }
        int i4 = this.f1567i > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.f1578t;
        N0 n0 = this.f1571m;
        if (velocityTracker != null && this.f1570l > -1) {
            float f = this.g;
            n0.getClass();
            velocityTracker.computeCurrentVelocity(1000, f);
            float xVelocity = this.f1578t.getXVelocity(this.f1570l);
            float yVelocity = this.f1578t.getYVelocity(this.f1570l);
            int i5 = yVelocity > 0.0f ? 2 : 1;
            float fAbs = Math.abs(yVelocity);
            if ((i5 & i3) != 0 && i5 == i4 && fAbs >= this.f && fAbs > Math.abs(xVelocity)) {
                return i5;
            }
        }
        float height = this.f1576r.getHeight();
        n0.getClass();
        float f3 = height * 0.5f;
        if ((i3 & i4) == 0 || Math.abs(this.f1567i) <= f3) {
            return 0;
        }
        return i4;
    }

    public final void l(y0 y0Var, boolean z2) {
        ArrayList arrayList = this.f1574p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            D d3 = (D) arrayList.get(size);
            if (d3.f1536e == y0Var) {
                d3.f1540k |= z2;
                if (!d3.f1541l) {
                    d3.g.cancel();
                }
                arrayList.remove(size);
                return;
            }
        }
    }

    public final View m(MotionEvent motionEvent) {
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        y0 y0Var = this.f1563c;
        if (y0Var != null) {
            View view = y0Var.f1807a;
            if (o(view, x2, y2, this.f1568j + this.f1566h, this.f1569k + this.f1567i)) {
                return view;
            }
        }
        ArrayList arrayList = this.f1574p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            D d3 = (D) arrayList.get(size);
            View view2 = d3.f1536e.f1807a;
            if (o(view2, x2, y2, d3.f1538i, d3.f1539j)) {
                return view2;
            }
        }
        RecyclerView recyclerView = this.f1576r;
        for (int iE = recyclerView.g.e() - 1; iE >= 0; iE--) {
            View viewD = recyclerView.g.d(iE);
            float translationX = viewD.getTranslationX();
            float translationY = viewD.getTranslationY();
            if (x2 >= viewD.getLeft() + translationX && x2 <= viewD.getRight() + translationX && y2 >= viewD.getTop() + translationY && y2 <= viewD.getBottom() + translationY) {
                return viewD;
            }
        }
        return null;
    }

    public final void n(float[] fArr) {
        if ((this.f1573o & 12) != 0) {
            fArr[0] = (this.f1568j + this.f1566h) - this.f1563c.f1807a.getLeft();
        } else {
            fArr[0] = this.f1563c.f1807a.getTranslationX();
        }
        if ((this.f1573o & 3) != 0) {
            fArr[1] = (this.f1569k + this.f1567i) - this.f1563c.f1807a.getTop();
        } else {
            fArr[1] = this.f1563c.f1807a.getTranslationY();
        }
    }

    public final void p(y0 viewHolder) {
        RecyclerView recyclerView;
        W adapter;
        final int iH;
        RecyclerView recyclerView2;
        W adapter2;
        final int iH2;
        ArrayList arrayList;
        int bottom;
        int iAbs;
        int top;
        int iAbs2;
        int left;
        int iAbs3;
        int right;
        int iAbs4;
        int i3;
        if (!this.f1576r.isLayoutRequested() && this.f1572n == 2) {
            N0 n0 = this.f1571m;
            n0.getClass();
            int i4 = (int) (this.f1568j + this.f1566h);
            int i5 = (int) (this.f1569k + this.f1567i);
            View view = viewHolder.f1807a;
            if (Math.abs(i5 - view.getTop()) >= view.getHeight() * 0.5f || Math.abs(i4 - view.getLeft()) >= view.getWidth() * 0.5f) {
                ArrayList arrayList2 = this.f1579u;
                if (arrayList2 == null) {
                    this.f1579u = new ArrayList();
                    this.f1580v = new ArrayList();
                } else {
                    arrayList2.clear();
                    this.f1580v.clear();
                }
                int iRound = Math.round(this.f1568j + this.f1566h);
                int iRound2 = Math.round(this.f1569k + this.f1567i);
                int width = view.getWidth() + iRound;
                int height = view.getHeight() + iRound2;
                int i6 = (iRound + width) / 2;
                int i7 = (iRound2 + height) / 2;
                AbstractC0147g0 layoutManager = this.f1576r.getLayoutManager();
                int iV = layoutManager.v();
                int i8 = 0;
                while (i8 < iV) {
                    View viewU = layoutManager.u(i8);
                    if (viewU == view) {
                        i3 = i8;
                    } else {
                        i3 = i8;
                        if (viewU.getBottom() >= iRound2 && viewU.getTop() <= height && viewU.getRight() >= iRound && viewU.getLeft() <= width) {
                            y0 y0VarJ = this.f1576r.J(viewU);
                            int iAbs5 = Math.abs(i6 - ((viewU.getRight() + viewU.getLeft()) / 2));
                            int iAbs6 = Math.abs(i7 - ((viewU.getBottom() + viewU.getTop()) / 2));
                            int i9 = (iAbs6 * iAbs6) + (iAbs5 * iAbs5);
                            int size = this.f1579u.size();
                            int i10 = 0;
                            int i11 = 0;
                            while (i10 < size) {
                                int i12 = size;
                                if (i9 <= ((Integer) this.f1580v.get(i10)).intValue()) {
                                    break;
                                }
                                i11++;
                                i10++;
                                size = i12;
                            }
                            this.f1579u.add(i11, y0VarJ);
                            this.f1580v.add(i11, Integer.valueOf(i9));
                        }
                        i8 = i3 + 1;
                        i4 = i4;
                        i5 = i5;
                        iRound = iRound;
                    }
                    i8 = i3 + 1;
                    i4 = i4;
                    i5 = i5;
                    iRound = iRound;
                }
                int i13 = i4;
                int i14 = i5;
                ArrayList arrayList3 = this.f1579u;
                if (arrayList3.size() == 0) {
                    return;
                }
                int width2 = view.getWidth() + i13;
                int height2 = view.getHeight() + i14;
                int left2 = i13 - view.getLeft();
                int top2 = i14 - view.getTop();
                int size2 = arrayList3.size();
                y0 target = null;
                int i15 = -1;
                int i16 = 0;
                while (i16 < size2) {
                    y0 y0Var = (y0) arrayList3.get(i16);
                    if (left2 <= 0 || (right = y0Var.f1807a.getRight() - width2) >= 0) {
                        arrayList = arrayList3;
                    } else {
                        arrayList = arrayList3;
                        if (y0Var.f1807a.getRight() > view.getRight() && (iAbs4 = Math.abs(right)) > i15) {
                            i15 = iAbs4;
                            target = y0Var;
                        }
                    }
                    if (left2 < 0 && (left = y0Var.f1807a.getLeft() - i13) > 0 && y0Var.f1807a.getLeft() < view.getLeft() && (iAbs3 = Math.abs(left)) > i15) {
                        i15 = iAbs3;
                        target = y0Var;
                    }
                    if (top2 < 0 && (top = y0Var.f1807a.getTop() - i14) > 0 && y0Var.f1807a.getTop() < view.getTop() && (iAbs2 = Math.abs(top)) > i15) {
                        i15 = iAbs2;
                        target = y0Var;
                    }
                    if (top2 > 0 && (bottom = y0Var.f1807a.getBottom() - height2) < 0 && y0Var.f1807a.getBottom() > view.getBottom() && (iAbs = Math.abs(bottom)) > i15) {
                        i15 = iAbs;
                        target = y0Var;
                    }
                    i16++;
                    arrayList3 = arrayList;
                }
                if (target == null) {
                    this.f1579u.clear();
                    this.f1580v.clear();
                    return;
                }
                View view2 = target.f1807a;
                RecyclerView recyclerView3 = target.f1821r;
                int iH3 = recyclerView3 == null ? -1 : recyclerView3.H(target);
                RecyclerView recyclerView4 = viewHolder.f1821r;
                if (recyclerView4 != null) {
                    recyclerView4.H(viewHolder);
                }
                RecyclerView recyclerView5 = this.f1576r;
                Intrinsics.checkNotNullParameter(recyclerView5, "recyclerView");
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                Intrinsics.checkNotNullParameter(target, "target");
                Set set = S1.d.f2060a;
                final GameDetailActivity gameDetailActivity = n0.f475d;
                boolean zP = S1.d.p(gameDetailActivity);
                p023i1.l lVar = X0.f526a;
                if (!zP) {
                    com.bumptech.glide.c.V(gameDetailActivity);
                    return;
                }
                if (viewHolder.f1822s == null || (recyclerView = viewHolder.f1821r) == null || (adapter = recyclerView.getAdapter()) == null || (iH = viewHolder.f1821r.H(viewHolder)) == -1 || viewHolder.f1822s != adapter) {
                    iH = -1;
                }
                if (target.f1822s == null || (recyclerView2 = target.f1821r) == null || (adapter2 = recyclerView2.getAdapter()) == null || (iH2 = target.f1821r.H(target)) == -1 || target.f1822s != adapter2) {
                    iH2 = -1;
                }
                com.bumptech.glide.c.Z(gameDetailActivity, new Function1() { // from class: C1.M0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        X1 state = (X1) obj;
                        Intrinsics.checkNotNullParameter(state, "state");
                        boolean zP2 = S1.d.p(gameDetailActivity);
                        List draft = state.f529d;
                        p023i1.l lVar2 = X0.f526a;
                        Intrinsics.checkNotNullParameter(draft, "draft");
                        if (zP2) {
                            Intrinsics.checkNotNullParameter(draft, "draft");
                            int i17 = iH;
                            int i18 = iH2;
                            if (i17 != i18 && i17 >= 0 && i17 < draft.size() && i18 >= 0 && i18 < draft.size()) {
                                draft = CollectionsKt.toMutableList((Collection) draft);
                                draft.add(i18, (RpgMakerPluginConfig) draft.remove(i17));
                            }
                        }
                        return X1.a(state, draft, null, 23);
                    }
                });
                RecyclerView recyclerView6 = this.f1576r;
                AbstractC0147g0 layoutManager2 = recyclerView6.getLayoutManager();
                if (!(layoutManager2 instanceof LinearLayoutManager)) {
                    if (layoutManager2.d()) {
                        if (AbstractC0147g0.A(view2) <= recyclerView6.getPaddingLeft()) {
                            recyclerView6.f0(iH3);
                        }
                        if (AbstractC0147g0.D(view2) >= recyclerView6.getWidth() - recyclerView6.getPaddingRight()) {
                            recyclerView6.f0(iH3);
                        }
                    }
                    if (layoutManager2.e()) {
                        if (AbstractC0147g0.E(view2) <= recyclerView6.getPaddingTop()) {
                            recyclerView6.f0(iH3);
                        }
                        if (AbstractC0147g0.y(view2) >= recyclerView6.getHeight() - recyclerView6.getPaddingBottom()) {
                            recyclerView6.f0(iH3);
                            return;
                        }
                        return;
                    }
                    return;
                }
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager2;
                linearLayoutManager.c("Cannot drop a view during a scroll or layout calculation");
                linearLayoutManager.M0();
                linearLayoutManager.e1();
                int iK = AbstractC0147g0.K(view);
                int iK2 = AbstractC0147g0.K(view2);
                byte b = iK < iK2 ? (byte) 1 : (byte) -1;
                if (linearLayoutManager.f2938u) {
                    if (b == 1) {
                        linearLayoutManager.g1(iK2, linearLayoutManager.f2935r.g() - (linearLayoutManager.f2935r.c(view) + linearLayoutManager.f2935r.e(view2)));
                        return;
                    } else {
                        linearLayoutManager.g1(iK2, linearLayoutManager.f2935r.g() - linearLayoutManager.f2935r.b(view2));
                        return;
                    }
                }
                if (b == -1) {
                    linearLayoutManager.g1(iK2, linearLayoutManager.f2935r.e(view2));
                } else {
                    linearLayoutManager.g1(iK2, linearLayoutManager.f2935r.b(view2) - linearLayoutManager.f2935r.c(view));
                }
            }
        }
    }

    public final void q(View view) {
        if (view == this.f1581w) {
            this.f1581w = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [C1.N0] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r2v1, types: [P.y0] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [C1.N0] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void r(y0 y0Var, int i3) {
        ?? r18;
        ?? r12;
        boolean z2;
        ?? r3;
        ?? r13;
        ?? r4;
        ?? r14;
        ?? r19;
        int iK;
        char c3;
        float fSignum;
        Object obj;
        long j2;
        if (y0Var == this.f1563c && i3 == this.f1572n) {
            return;
        }
        this.f1561B = Long.MIN_VALUE;
        int i4 = this.f1572n;
        l(y0Var, true);
        this.f1572n = i3;
        if (i3 == 2) {
            if (y0Var == null) {
                throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
            }
            this.f1581w = y0Var.f1807a;
        }
        int i5 = (1 << ((i3 * 8) + 8)) - 1;
        ?? r2 = this.f1563c;
        ?? r5 = this.f1571m;
        if (r2 != 0) {
            View view = r2.f1807a;
            if (view.getParent() != null) {
                if (i4 == 2 || this.f1572n == 2) {
                    iK = 0;
                } else {
                    int iF = r5.f(this.f1576r, r2);
                    int iB = (E.b(iF, ViewCompat.getLayoutDirection(this.f1576r)) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    if (iB == 0) {
                        iK = 0;
                    } else {
                        int i6 = (iF & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                        if (Math.abs(this.f1566h) > Math.abs(this.f1567i)) {
                            iK = i(iB);
                            if (iK <= 0) {
                                iK = k(iB);
                                if (iK <= 0) {
                                    iK = 0;
                                }
                            } else if ((i6 & iK) == 0) {
                                iK = E.c(iK, ViewCompat.getLayoutDirection(this.f1576r));
                            }
                        } else {
                            iK = k(iB);
                            if (iK <= 0) {
                                iK = i(iB);
                                if (iK <= 0) {
                                    iK = 0;
                                } else if ((i6 & iK) == 0) {
                                    iK = E.c(iK, ViewCompat.getLayoutDirection(this.f1576r));
                                }
                            }
                        }
                    }
                }
                VelocityTracker velocityTracker = this.f1578t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f1578t = null;
                }
                char c4 = 4;
                float fSignum2 = 0.0f;
                if (iK == 1 || iK == 2) {
                    c3 = 0;
                    fSignum = Math.signum(this.f1567i) * this.f1576r.getHeight();
                    obj = null;
                } else if (iK == 4 || iK == 8 || iK == 16 || iK == 32) {
                    c3 = 0;
                    obj = null;
                    fSignum = 0.0f;
                    fSignum2 = Math.signum(this.f1566h) * this.f1576r.getWidth();
                } else {
                    obj = null;
                    c3 = 0;
                    fSignum = 0.0f;
                }
                if (i4 == 2) {
                    c4 = '\b';
                } else if (iK > 0) {
                    c4 = 2;
                }
                float[] fArr = this.b;
                n(fArr);
                ?? r110 = r5;
                char c5 = c4;
                ?? r15 = c3;
                D d3 = new D(this, r2, i4, fArr[c3], fArr[1], fSignum2, fSignum, iK, r2);
                RecyclerView recyclerView = this.f1576r;
                r110.getClass();
                AbstractC0139c0 itemAnimator = recyclerView.getItemAnimator();
                if (itemAnimator == null) {
                    j2 = c5 == '\b' ? 200L : 250L;
                } else {
                    j2 = c5 == '\b' ? itemAnimator.f1657e : itemAnimator.f1656d;
                }
                ValueAnimator valueAnimator = d3.g;
                valueAnimator.setDuration(j2);
                this.f1574p.add(d3);
                r2.n(r15);
                valueAnimator.start();
                z2 = true;
                r14 = r15;
                r19 = r110;
            } else {
                ?? r111 = r5;
                r14 = 0;
                q(view);
                r111.getClass();
                E.a(r2);
                z2 = false;
                r19 = r111;
            }
            this.f1563c = null;
            r12 = r14;
            r18 = r19;
        } else {
            r18 = r5;
            r12 = 0;
            z2 = false;
        }
        if (y0Var != null) {
            View view2 = y0Var.f1807a;
            RecyclerView recyclerView2 = this.f1576r;
            r4 = r18;
            this.f1573o = (E.b(r4.f(recyclerView2, y0Var), ViewCompat.getLayoutDirection(recyclerView2)) & i5) >> (this.f1572n * 8);
            this.f1568j = view2.getLeft();
            this.f1569k = view2.getTop();
            this.f1563c = y0Var;
            if (i3 == 2) {
                r3 = r4;
                view2.performHapticFeedback(r12 == true ? 1 : 0);
                r3 = r4;
            }
        } else {
            r3 = r18;
        }
        r3 = r4;
        ?? parent = this.f1576r.getParent();
        if (parent != 0) {
            if (this.f1563c != null) {
                r13 = r12;
                r13 = 1;
            }
            r13 = r12;
            parent.requestDisallowInterceptTouchEvent(r13);
        }
        if (!z2) {
            this.f1576r.getLayoutManager().f = true;
        }
        r3.getClass();
        this.f1576r.invalidate();
    }

    public final void s(MotionEvent motionEvent, int i3, int i4) {
        float x2 = motionEvent.getX(i4);
        float y2 = motionEvent.getY(i4);
        float f = x2 - this.f1564d;
        this.f1566h = f;
        this.f1567i = y2 - this.f1565e;
        if ((i3 & 4) == 0) {
            this.f1566h = Math.max(0.0f, f);
        }
        if ((i3 & 8) == 0) {
            this.f1566h = Math.min(0.0f, this.f1566h);
        }
        if ((i3 & 1) == 0) {
            this.f1567i = Math.max(0.0f, this.f1567i);
        }
        if ((i3 & 2) == 0) {
            this.f1567i = Math.min(0.0f, this.f1567i);
        }
    }

    @Override // P.InterfaceC0151i0
    public final void a(View view) {
    }
}
