package p024j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.minhub.gamehub.R;
import java.lang.reflect.Method;
import java.util.ArrayList;
import k.C0320v0;
import k.D;
import k.K0;
import k.L0;
import k.N0;
import p010d1.l;

/* JADX INFO: renamed from: j.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnKeyListenerC0271j extends y implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f4521A;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f4522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4524e;
    public final boolean f;
    public final Handler g;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f4532o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f4533p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4534q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4535r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4536s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4537t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f4538u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4540w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public B f4541x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ViewTreeObserver f4542y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public PopupWindow.OnDismissListener f4543z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f4525h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f4526i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC0267f f4527j = new ViewTreeObserverOnGlobalLayoutListenerC0267f(0, this);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l f4528k = new l(1, this);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0269h f4529l = new C0269h(0, this);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4530m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4531n = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4539v = false;

    public ViewOnKeyListenerC0271j(Context context, View view, int i3, boolean z2) {
        this.f4522c = context;
        this.f4532o = view;
        this.f4524e = i3;
        this.f = z2;
        this.f4534q = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f4523d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.g = new Handler();
    }

    @Override // p024j.C
    public final void a(p pVar, boolean z2) {
        ArrayList arrayList = this.f4526i;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (pVar == ((C0270i) arrayList.get(i3)).b) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 < 0) {
            return;
        }
        int i4 = i3 + 1;
        if (i4 < arrayList.size()) {
            ((C0270i) arrayList.get(i4)).b.c(false);
        }
        C0270i c0270i = (C0270i) arrayList.remove(i3);
        p pVar2 = c0270i.b;
        N0 n0 = c0270i.f4519a;
        D d3 = n0.f4683A;
        pVar2.r(this);
        if (this.f4521A) {
            K0.b(d3, null);
            d3.setAnimationStyle(0);
        }
        n0.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f4534q = ((C0270i) arrayList.get(size2 - 1)).f4520c;
        } else {
            this.f4534q = this.f4532o.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z2) {
                ((C0270i) arrayList.get(0)).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        B b = this.f4541x;
        if (b != null) {
            b.a(pVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f4542y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f4542y.removeGlobalOnLayoutListener(this.f4527j);
            }
            this.f4542y = null;
        }
        this.f4533p.removeOnAttachStateChangeListener(this.f4528k);
        this.f4543z.onDismiss();
    }

    @Override // p024j.G
    public final boolean b() {
        ArrayList arrayList = this.f4526i;
        return arrayList.size() > 0 && ((C0270i) arrayList.get(0)).f4519a.f4683A.isShowing();
    }

    @Override // p024j.G
    public final void c() {
        if (b()) {
            return;
        }
        ArrayList arrayList = this.f4525h;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            w((p) obj);
        }
        arrayList.clear();
        View view = this.f4532o;
        this.f4533p = view;
        if (view != null) {
            boolean z2 = this.f4542y == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f4542y = viewTreeObserver;
            if (z2) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f4527j);
            }
            this.f4533p.addOnAttachStateChangeListener(this.f4528k);
        }
    }

    @Override // p024j.G
    public final void dismiss() {
        ArrayList arrayList = this.f4526i;
        int size = arrayList.size();
        if (size > 0) {
            C0270i[] c0270iArr = (C0270i[]) arrayList.toArray(new C0270i[size]);
            for (int i3 = size - 1; i3 >= 0; i3--) {
                C0270i c0270i = c0270iArr[i3];
                if (c0270i.f4519a.f4683A.isShowing()) {
                    c0270i.f4519a.dismiss();
                }
            }
        }
    }

    @Override // p024j.G
    public final C0320v0 f() {
        ArrayList arrayList = this.f4526i;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((C0270i) arrayList.get(arrayList.size() - 1)).f4519a.f4685d;
    }

    @Override // p024j.C
    public final void g(boolean z2) {
        ArrayList arrayList = this.f4526i;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ListAdapter adapter = ((C0270i) obj).f4519a.f4685d.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((m) adapter).notifyDataSetChanged();
        }
    }

    @Override // p024j.C
    public final boolean i() {
        return false;
    }

    @Override // p024j.C
    public final Parcelable j() {
        return null;
    }

    @Override // p024j.C
    public final void l(B b) {
        this.f4541x = b;
    }

    @Override // p024j.C
    public final boolean m(I i3) {
        ArrayList arrayList = this.f4526i;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            C0270i c0270i = (C0270i) obj;
            if (i3 == c0270i.b) {
                c0270i.f4519a.f4685d.requestFocus();
                return true;
            }
        }
        if (!i3.hasVisibleItems()) {
            return false;
        }
        n(i3);
        B b = this.f4541x;
        if (b != null) {
            b.i(i3);
        }
        return true;
    }

    @Override // p024j.y
    public final void n(p pVar) {
        pVar.b(this, this.f4522c);
        if (b()) {
            w(pVar);
        } else {
            this.f4525h.add(pVar);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C0270i c0270i;
        ArrayList arrayList = this.f4526i;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                c0270i = null;
                break;
            }
            c0270i = (C0270i) arrayList.get(i3);
            if (!c0270i.f4519a.f4683A.isShowing()) {
                break;
            } else {
                i3++;
            }
        }
        if (c0270i != null) {
            c0270i.b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i3, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i3 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // p024j.y
    public final void p(View view) {
        if (this.f4532o != view) {
            this.f4532o = view;
            this.f4531n = GravityCompat.getAbsoluteGravity(this.f4530m, view.getLayoutDirection());
        }
    }

    @Override // p024j.y
    public final void q(boolean z2) {
        this.f4539v = z2;
    }

    @Override // p024j.y
    public final void r(int i3) {
        if (this.f4530m != i3) {
            this.f4530m = i3;
            this.f4531n = GravityCompat.getAbsoluteGravity(i3, this.f4532o.getLayoutDirection());
        }
    }

    @Override // p024j.y
    public final void s(int i3) {
        this.f4535r = true;
        this.f4537t = i3;
    }

    @Override // p024j.y
    public final void t(PopupWindow.OnDismissListener onDismissListener) {
        this.f4543z = onDismissListener;
    }

    @Override // p024j.y
    public final void u(boolean z2) {
        this.f4540w = z2;
    }

    @Override // p024j.y
    public final void v(int i3) {
        this.f4536s = true;
        this.f4538u = i3;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:101:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:111:0x0116 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x010a  */
    /* JADX WARN: Code duplicated, block: B:57:0x0112  */
    /* JADX WARN: Code duplicated, block: B:62:0x0128  */
    /* JADX WARN: Code duplicated, block: B:65:0x0157  */
    /* JADX WARN: Code duplicated, block: B:67:0x0163  */
    /* JADX WARN: Code duplicated, block: B:69:0x0166  */
    /* JADX WARN: Code duplicated, block: B:70:0x0168  */
    /* JADX WARN: Code duplicated, block: B:74:0x0170  */
    /* JADX WARN: Code duplicated, block: B:75:0x0172  */
    /* JADX WARN: Code duplicated, block: B:78:0x017c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0181  */
    /* JADX WARN: Code duplicated, block: B:81:0x0194  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:87:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c1 A[PHI: r5
      0x01c1: PHI (r5v17 int) = (r5v9 int), (r5v18 int) binds: [B:89:0x01c3, B:87:0x01bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:89:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:94:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:97:0x01e1  */
    public final void w(p pVar) {
        boolean z2;
        int i3;
        C0270i c0270i;
        View childAt;
        Rect rect;
        Rect rect2;
        int i4;
        D d3;
        C0320v0 c0320v0;
        int[] iArr;
        Rect rect3;
        int i5;
        boolean z3;
        int[] iArr2;
        int[] iArr3;
        int i6;
        int i7;
        int width;
        Method method;
        MenuItem item;
        m mVar;
        int headersCount;
        int firstVisiblePosition;
        Context context = this.f4522c;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        m mVar2 = new m(pVar, layoutInflaterFrom, this.f, R.layout.abc_cascading_menu_item_layout);
        if (!b() && this.f4539v) {
            mVar2.f4549c = true;
        } else if (b()) {
            int size = pVar.f.size();
            int i8 = 0;
            while (true) {
                if (i8 >= size) {
                    z2 = false;
                    break;
                }
                MenuItem item2 = pVar.getItem(i8);
                if (item2.isVisible() && item2.getIcon() != null) {
                    z2 = true;
                    break;
                }
                i8++;
            }
            mVar2.f4549c = z2;
        }
        int iO = y.o(mVar2, context, this.f4523d);
        N0 n0 = new N0(context, null, this.f4524e, 0);
        n0.f4721D = this.f4529l;
        n0.f4696q = this;
        n0.f4683A.setOnDismissListener(this);
        n0.f4695p = this.f4532o;
        n0.f4692m = this.f4531n;
        n0.f4705z = true;
        n0.f4683A.setFocusable(true);
        n0.f4683A.setInputMethodMode(2);
        n0.p(mVar2);
        n0.r(iO);
        n0.f4692m = this.f4531n;
        ArrayList arrayList = this.f4526i;
        if (arrayList.size() > 0) {
            c0270i = (C0270i) arrayList.get(arrayList.size() - 1);
            p pVar2 = c0270i.b;
            int size2 = pVar2.f.size();
            int i9 = 0;
            while (true) {
                if (i9 >= size2) {
                    item = null;
                    break;
                }
                item = pVar2.getItem(i9);
                if (item.hasSubMenu() && pVar == item.getSubMenu()) {
                    break;
                } else {
                    i9++;
                }
            }
            if (item == null) {
                i3 = 1;
                childAt = null;
            } else {
                C0320v0 c0320v1 = c0270i.f4519a.f4685d;
                ListAdapter adapter = c0320v1.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    mVar = (m) headerViewListAdapter.getWrappedAdapter();
                } else {
                    mVar = (m) adapter;
                    headersCount = 0;
                }
                int count = mVar.getCount();
                i3 = 1;
                int i10 = 0;
                while (true) {
                    if (i10 >= count) {
                        i10 = -1;
                        break;
                    } else if (item == mVar.getItem(i10)) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 != -1 && (firstVisiblePosition = (i10 + headersCount) - c0320v1.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < c0320v1.getChildCount()) {
                    childAt = c0320v1.getChildAt(firstVisiblePosition);
                }
            }
            if (childAt != null) {
                i4 = Build.VERSION.SDK_INT;
                d3 = n0.f4683A;
                if (i4 <= 28) {
                    method = N0.f4720E;
                    if (method != null) {
                        try {
                            method.invoke(d3, Boolean.FALSE);
                        } catch (Exception unused) {
                            Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                        }
                    }
                } else {
                    L0.a(d3, false);
                }
                K0.a(n0.f4683A, null);
                c0320v0 = ((C0270i) arrayList.get(arrayList.size() - 1)).f4519a.f4685d;
                iArr = new int[2];
                c0320v0.getLocationOnScreen(iArr);
                rect3 = new Rect();
                this.f4533p.getWindowVisibleDisplayFrame(rect3);
                if (this.f4534q == i3) {
                    if (c0320v0.getWidth() + iArr[0] + iO > rect3.right) {
                        i5 = 0;
                    } else {
                        i5 = 1;
                    }
                } else if (iArr[0] - iO < 0) {
                    i5 = 1;
                } else {
                    i5 = 0;
                }
                if (i5 == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.f4534q = i5;
                if (Build.VERSION.SDK_INT >= 26) {
                    n0.f4695p = childAt;
                    i7 = 0;
                    i6 = 0;
                } else {
                    iArr2 = new int[2];
                    this.f4532o.getLocationOnScreen(iArr2);
                    iArr3 = new int[2];
                    childAt.getLocationOnScreen(iArr3);
                    if ((this.f4531n & 7) == 5) {
                        iArr2[0] = this.f4532o.getWidth() + iArr2[0];
                        iArr3[0] = childAt.getWidth() + iArr3[0];
                    }
                    i6 = iArr3[0] - iArr2[0];
                    i7 = iArr3[1] - iArr2[1];
                }
                if ((this.f4531n & 5) == 5) {
                    if (z3) {
                        width = i6 + iO;
                    } else {
                        iO = childAt.getWidth();
                        width = i6 - iO;
                    }
                } else if (z3) {
                    width = i6 + childAt.getWidth();
                } else {
                    width = i6 - iO;
                }
                n0.g = width;
                n0.f4691l = true;
                n0.f4690k = true;
                n0.i(i7);
            } else {
                if (this.f4535r) {
                    n0.g = this.f4537t;
                }
                if (this.f4536s) {
                    n0.i(this.f4538u);
                }
                rect = this.b;
                if (rect != null) {
                    rect2 = new Rect(rect);
                } else {
                    rect2 = null;
                }
                n0.f4704y = rect2;
            }
            arrayList.add(new C0270i(n0, pVar, this.f4534q));
            n0.c();
            C0320v0 c0320v2 = n0.f4685d;
            c0320v2.setOnKeyListener(this);
            if (c0270i == null || !this.f4540w || pVar.f4562m == null) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0320v2, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(pVar.f4562m);
            c0320v2.addHeaderView(frameLayout, null, false);
            n0.c();
            return;
        }
        i3 = 1;
        c0270i = null;
        childAt = null;
        if (childAt != null) {
            i4 = Build.VERSION.SDK_INT;
            d3 = n0.f4683A;
            if (i4 <= 28) {
                method = N0.f4720E;
                if (method != null) {
                    method.invoke(d3, Boolean.FALSE);
                }
            } else {
                L0.a(d3, false);
            }
            K0.a(n0.f4683A, null);
            c0320v0 = ((C0270i) arrayList.get(arrayList.size() - 1)).f4519a.f4685d;
            iArr = new int[2];
            c0320v0.getLocationOnScreen(iArr);
            rect3 = new Rect();
            this.f4533p.getWindowVisibleDisplayFrame(rect3);
            if (this.f4534q == i3) {
                if (c0320v0.getWidth() + iArr[0] + iO > rect3.right) {
                    i5 = 0;
                } else {
                    i5 = 1;
                }
            } else if (iArr[0] - iO < 0) {
                i5 = 1;
            } else {
                i5 = 0;
            }
            if (i5 == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.f4534q = i5;
            if (Build.VERSION.SDK_INT >= 26) {
                n0.f4695p = childAt;
                i7 = 0;
                i6 = 0;
            } else {
                iArr2 = new int[2];
                this.f4532o.getLocationOnScreen(iArr2);
                iArr3 = new int[2];
                childAt.getLocationOnScreen(iArr3);
                if ((this.f4531n & 7) == 5) {
                    iArr2[0] = this.f4532o.getWidth() + iArr2[0];
                    iArr3[0] = childAt.getWidth() + iArr3[0];
                }
                i6 = iArr3[0] - iArr2[0];
                i7 = iArr3[1] - iArr2[1];
            }
            if ((this.f4531n & 5) == 5) {
                if (z3) {
                    width = i6 + iO;
                } else {
                    iO = childAt.getWidth();
                    width = i6 - iO;
                }
            } else if (z3) {
                width = i6 + childAt.getWidth();
            } else {
                width = i6 - iO;
            }
            n0.g = width;
            n0.f4691l = true;
            n0.f4690k = true;
            n0.i(i7);
        } else {
            if (this.f4535r) {
                n0.g = this.f4537t;
            }
            if (this.f4536s) {
                n0.i(this.f4538u);
            }
            rect = this.b;
            if (rect != null) {
                rect2 = new Rect(rect);
            } else {
                rect2 = null;
            }
            n0.f4704y = rect2;
        }
        arrayList.add(new C0270i(n0, pVar, this.f4534q));
        n0.c();
        C0320v0 c0320v3 = n0.f4685d;
        c0320v3.setOnKeyListener(this);
        if (c0270i == null) {
        }
    }

    @Override // p024j.C
    public final void e(Parcelable parcelable) {
    }
}
