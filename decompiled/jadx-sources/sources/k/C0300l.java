package k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ActionProvider;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import p024j.AbstractC0265d;
import p024j.C0269h;

/* JADX INFO: renamed from: k.l, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0300l extends AbstractC0265d implements ActionProvider.SubUiVisibilityListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C0296j f4855k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f4856l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4857m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4858n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4859o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4860p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4861q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f4862r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4863s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final SparseBooleanArray f4864t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C0290g f4865u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public C0290g f4866v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public RunnableC0294i f4867w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public C0292h f4868x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final C0269h f4869y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f4870z;

    public C0300l(Context context) {
        this.b = context;
        this.f4508e = LayoutInflater.from(context);
        this.g = R.layout.abc_action_menu_layout;
        this.f4509h = R.layout.abc_action_menu_item_layout;
        this.f4864t = new SparseBooleanArray();
        this.f4869y = new C0269h(4, this);
    }

    @Override // p024j.C
    public final void a(p024j.p pVar, boolean z2) {
        c();
        C0290g c0290g = this.f4866v;
        if (c0290g != null && c0290g.b()) {
            c0290g.f4467i.dismiss();
        }
        p024j.B b = this.f;
        if (b != null) {
            b.a(pVar, z2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View b(p024j.s sVar, View view, ViewGroup viewGroup) {
        View actionView = sVar.getActionView();
        if (actionView == null || sVar.c()) {
            p024j.D d3 = view instanceof p024j.D ? (p024j.D) view : (p024j.D) this.f4508e.inflate(this.f4509h, viewGroup, false);
            d3.b(sVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) d3;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.f4510i);
            if (this.f4868x == null) {
                this.f4868x = new C0292h(this);
            }
            actionMenuItemView.setPopupCallback(this.f4868x);
            actionView = (View) d3;
        }
        actionView.setVisibility(sVar.f4579C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof C0304n)) {
            actionView.setLayoutParams(ActionMenuView.k(layoutParams));
        }
        return actionView;
    }

    public final boolean c() {
        Object obj;
        RunnableC0294i runnableC0294i = this.f4867w;
        if (runnableC0294i != null && (obj = this.f4510i) != null) {
            ((View) obj).removeCallbacks(runnableC0294i);
            this.f4867w = null;
            return true;
        }
        C0290g c0290g = this.f4865u;
        if (c0290g == null) {
            return false;
        }
        if (c0290g.b()) {
            c0290g.f4467i.dismiss();
        }
        return true;
    }

    @Override // p024j.C
    public final void e(Parcelable parcelable) {
        int i3;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof C0298k) && (i3 = ((C0298k) parcelable).b) > 0 && (menuItemFindItem = this.f4507d.findItem(i3)) != null) {
            m((p024j.I) menuItemFindItem.getSubMenu());
        }
    }

    public final boolean f() {
        C0290g c0290g = this.f4865u;
        return c0290g != null && c0290g.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p024j.C
    public final void g(boolean z2) {
        int i3;
        ViewGroup viewGroup = (ViewGroup) this.f4510i;
        ArrayList arrayList = null;
        boolean z3 = false;
        if (viewGroup != null) {
            p024j.p pVar = this.f4507d;
            if (pVar != null) {
                pVar.i();
                ArrayList arrayListL = this.f4507d.l();
                int size = arrayListL.size();
                i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    p024j.s sVar = (p024j.s) arrayListL.get(i4);
                    if ((sVar.f4600x & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i3);
                        p024j.s itemData = childAt instanceof p024j.D ? ((p024j.D) childAt).getItemData() : null;
                        View viewB = b(sVar, childAt, viewGroup);
                        if (sVar != itemData) {
                            viewB.setPressed(false);
                            viewB.jumpDrawablesToCurrentState();
                        }
                        if (viewB != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewB.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewB);
                            }
                            ((ViewGroup) this.f4510i).addView(viewB, i3);
                        }
                        i3++;
                    }
                }
            } else {
                i3 = 0;
            }
            while (i3 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i3) == this.f4855k) {
                    i3++;
                } else {
                    viewGroup.removeViewAt(i3);
                }
            }
        }
        ((View) this.f4510i).requestLayout();
        p024j.p pVar2 = this.f4507d;
        if (pVar2 != null) {
            pVar2.i();
            ArrayList arrayList2 = pVar2.f4558i;
            int size2 = arrayList2.size();
            for (int i5 = 0; i5 < size2; i5++) {
                ActionProvider actionProvider = ((p024j.s) arrayList2.get(i5)).f4577A;
                if (actionProvider != null) {
                    actionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        p024j.p pVar3 = this.f4507d;
        if (pVar3 != null) {
            pVar3.i();
            arrayList = pVar3.f4559j;
        }
        if (this.f4858n && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z3 = !((p024j.s) arrayList.get(0)).f4579C;
            } else if (size3 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.f4855k == null) {
                this.f4855k = new C0296j(this, this.b);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f4855k.getParent();
            if (viewGroup3 != this.f4510i) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f4855k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f4510i;
                C0296j c0296j = this.f4855k;
                actionMenuView.getClass();
                C0304n c0304nJ = ActionMenuView.j();
                c0304nJ.f4884a = true;
                actionMenuView.addView(c0296j, c0304nJ);
            }
        } else {
            C0296j c0296j2 = this.f4855k;
            if (c0296j2 != null) {
                Object parent = c0296j2.getParent();
                Object obj = this.f4510i;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f4855k);
                }
            }
        }
        ((ActionMenuView) this.f4510i).setOverflowReserved(this.f4858n);
    }

    @Override // p024j.C
    public final void h(Context context, p024j.p pVar) {
        this.f4506c = context;
        LayoutInflater.from(context);
        this.f4507d = pVar;
        Resources resources = context.getResources();
        if (!this.f4859o) {
            this.f4858n = true;
        }
        int i3 = 2;
        this.f4860p = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i4 = configuration.screenWidthDp;
        int i5 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i4 > 600 || ((i4 > 960 && i5 > 720) || (i4 > 720 && i5 > 960))) {
            i3 = 5;
        } else if (i4 >= 500 || ((i4 > 640 && i5 > 480) || (i4 > 480 && i5 > 640))) {
            i3 = 4;
        } else if (i4 >= 360) {
            i3 = 3;
        }
        this.f4862r = i3;
        int measuredWidth = this.f4860p;
        if (this.f4858n) {
            if (this.f4855k == null) {
                C0296j c0296j = new C0296j(this, this.b);
                this.f4855k = c0296j;
                if (this.f4857m) {
                    c0296j.setImageDrawable(this.f4856l);
                    this.f4856l = null;
                    this.f4857m = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f4855k.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f4855k.getMeasuredWidth();
        } else {
            this.f4855k = null;
        }
        this.f4861q = measuredWidth;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // p024j.C
    public final boolean i() {
        ArrayList arrayListL;
        int size;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        C0300l c0300l = this;
        p024j.p pVar = c0300l.f4507d;
        View view = null;
        boolean z6 = false;
        if (pVar != null) {
            arrayListL = pVar.l();
            size = arrayListL.size();
        } else {
            arrayListL = null;
            size = 0;
        }
        int i3 = c0300l.f4862r;
        int i4 = c0300l.f4861q;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) c0300l.f4510i;
        int i5 = 0;
        boolean z7 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            z2 = true;
            if (i5 >= size) {
                break;
            }
            p024j.s sVar = (p024j.s) arrayListL.get(i5);
            if (sVar.requiresActionButton()) {
                i6++;
                z5 = z7;
            } else if ((sVar.f4601y & 1) == 1) {
                i7++;
                z5 = z7;
            } else {
                z5 = true;
            }
            if (c0300l.f4863s && sVar.f4579C) {
                i3 = 0;
            }
            i5++;
            z7 = z5;
        }
        if (c0300l.f4858n && (z7 || i7 + i6 > i3)) {
            i3--;
        }
        int i8 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = c0300l.f4864t;
        sparseBooleanArray.clear();
        int i9 = 0;
        int i10 = 0;
        while (i9 < size) {
            p024j.s sVar2 = (p024j.s) arrayListL.get(i9);
            boolean zRequiresActionButton = sVar2.requiresActionButton();
            int i11 = sVar2.b;
            if (zRequiresActionButton) {
                View viewB = c0300l.b(sVar2, view, viewGroup);
                viewB.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewB.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i10 == 0) {
                    i10 = measuredWidth;
                }
                if (i11 != 0) {
                    sparseBooleanArray.put(i11, z2);
                }
                sVar2.e(z2);
                z3 = z6;
                z4 = z2 ? 1 : 0;
            } else if ((sVar2.f4601y & (z2 ? 1 : 0)) == z2) {
                boolean z8 = sparseBooleanArray.get(i11);
                boolean z9 = ((i8 > 0 || z8) && i4 > 0) ? z2 ? 1 : 0 : z6;
                if (z9) {
                    View viewB2 = c0300l.b(sVar2, view, viewGroup);
                    viewB2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewB2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i10 == 0) {
                        i10 = measuredWidth2;
                    }
                    z9 = (z9 ? 1 : 0) & (i4 + i10 > 0 ? z2 ? 1 : 0 : false);
                }
                boolean z10 = z9;
                if (z10 && i11 != 0) {
                    sparseBooleanArray.put(i11, z2);
                } else if (z8) {
                    sparseBooleanArray.put(i11, false);
                    int i12 = 0;
                    while (i12 < i9) {
                        p024j.s sVar3 = (p024j.s) arrayListL.get(i12);
                        boolean z11 = z2 ? 1 : 0;
                        if (sVar3.b == i11) {
                            if ((sVar3.f4600x & 32) == 32) {
                                i8++;
                            }
                            sVar3.e(false);
                        }
                        i12++;
                        z2 = z11 ? 1 : 0;
                    }
                }
                z4 = z2;
                if (z10) {
                    i8--;
                }
                sVar2.e(z10);
                z3 = false;
            } else {
                z3 = z6;
                z4 = z2 ? 1 : 0;
                sVar2.e(z3);
            }
            i9++;
            z6 = z3;
            z2 = z4;
            view = null;
            c0300l = this;
        }
        return z2 ? 1 : 0;
    }

    @Override // p024j.C
    public final Parcelable j() {
        C0298k c0298k = new C0298k();
        c0298k.b = this.f4870z;
        return c0298k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p024j.C
    public final boolean m(p024j.I i3) {
        boolean z2;
        if (i3.hasVisibleItems()) {
            p024j.I i4 = i3;
            while (true) {
                p024j.p pVar = i4.f4489z;
                if (pVar == this.f4507d) {
                    break;
                }
                i4 = (p024j.I) pVar;
            }
            p024j.s sVar = i4.f4488A;
            ViewGroup viewGroup = (ViewGroup) this.f4510i;
            View view = null;
            view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = viewGroup.getChildAt(i5);
                    if ((childAt instanceof p024j.D) && ((p024j.D) childAt).getItemData() == sVar) {
                        view = childAt;
                        break;
                    }
                }
            }
            if (view != null) {
                this.f4870z = i3.f4488A.f4580a;
                int size = i3.f.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size) {
                        z2 = false;
                        break;
                    }
                    MenuItem item = i3.getItem(i6);
                    if (item.isVisible() && item.getIcon() != null) {
                        z2 = true;
                        break;
                    }
                    i6++;
                }
                C0290g c0290g = new C0290g(this, this.f4506c, i3, view);
                this.f4866v = c0290g;
                c0290g.g = z2;
                p024j.y yVar = c0290g.f4467i;
                if (yVar != null) {
                    yVar.q(z2);
                }
                C0290g c0290g2 = this.f4866v;
                if (!c0290g2.b()) {
                    if (c0290g2.f4465e == null) {
                        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
                    }
                    c0290g2.d(0, 0, false, false);
                }
                p024j.B b = this.f;
                if (b != null) {
                    b.i(i3);
                }
                return true;
            }
        }
        return false;
    }

    public final boolean n() {
        p024j.p pVar;
        if (!this.f4858n || f() || (pVar = this.f4507d) == null || this.f4510i == null || this.f4867w != null) {
            return false;
        }
        pVar.i();
        if (pVar.f4559j.isEmpty()) {
            return false;
        }
        RunnableC0294i runnableC0294i = new RunnableC0294i(this, new C0290g(this, this.f4506c, this.f4507d, this.f4855k));
        this.f4867w = runnableC0294i;
        ((View) this.f4510i).post(runnableC0294i);
        return true;
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    public final void onSubUiVisibilityChanged(boolean z2) {
        if (z2) {
            p024j.B b = this.f;
            if (b != null) {
                b.i(this.f4507d);
                return;
            }
            return;
        }
        p024j.p pVar = this.f4507d;
        if (pVar != null) {
            pVar.c(false);
        }
    }
}
