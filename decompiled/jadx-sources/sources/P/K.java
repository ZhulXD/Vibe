package P;

import android.view.View;
import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1609a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1612e;
    public int f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1615j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f1616k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1617l;

    public final void a(View view) {
        int iB;
        int size = this.f1616k.size();
        View view2 = null;
        int i3 = IntCompanionObject.MAX_VALUE;
        for (int i4 = 0; i4 < size; i4++) {
            View view3 = ((y0) this.f1616k.get(i4)).f1807a;
            C0149h0 c0149h0 = (C0149h0) view3.getLayoutParams();
            if (view3 != view && !c0149h0.f1687a.h() && (iB = (c0149h0.f1687a.b() - this.f1611d) * this.f1612e) >= 0 && iB < i3) {
                view2 = view3;
                if (iB == 0) {
                    break;
                } else {
                    i3 = iB;
                }
            }
        }
        if (view2 == null) {
            this.f1611d = -1;
        } else {
            this.f1611d = ((C0149h0) view2.getLayoutParams()).f1687a.b();
        }
    }

    public final View b(o0 o0Var) {
        List list = this.f1616k;
        if (list == null) {
            View view = o0Var.k(this.f1611d, Long.MAX_VALUE).f1807a;
            this.f1611d += this.f1612e;
            return view;
        }
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = ((y0) this.f1616k.get(i3)).f1807a;
            C0149h0 c0149h0 = (C0149h0) view2.getLayoutParams();
            if (!c0149h0.f1687a.h() && this.f1611d == c0149h0.f1687a.b()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
