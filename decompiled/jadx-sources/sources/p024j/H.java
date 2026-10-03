package p024j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.minhub.gamehub.R;
import k.C0320v0;
import k.D;
import k.N0;
import p010d1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class H extends y implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f4471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f4472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m f4473e;
    public final boolean f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f4474h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final N0 f4475i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PopupWindow.OnDismissListener f4478l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f4479m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f4480n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public B f4481o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ViewTreeObserver f4482p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4483q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4484r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4485s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f4487u;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC0267f f4476j = new ViewTreeObserverOnGlobalLayoutListenerC0267f(1, this);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l f4477k = new l(2, this);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4486t = 0;

    public H(Context context, p pVar, View view, int i3, boolean z2) {
        this.f4471c = context;
        this.f4472d = pVar;
        this.f = z2;
        this.f4473e = new m(pVar, LayoutInflater.from(context), z2, R.layout.abc_popup_menu_item_layout);
        this.f4474h = i3;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f4479m = view;
        this.f4475i = new N0(context, null, i3, 0);
        pVar.b(this, context);
    }

    @Override // p024j.C
    public final void a(p pVar, boolean z2) {
        if (pVar != this.f4472d) {
            return;
        }
        dismiss();
        B b = this.f4481o;
        if (b != null) {
            b.a(pVar, z2);
        }
    }

    @Override // p024j.G
    public final boolean b() {
        return !this.f4483q && this.f4475i.f4683A.isShowing();
    }

    @Override // p024j.G
    public final void c() {
        View view;
        if (b()) {
            return;
        }
        if (this.f4483q || (view = this.f4479m) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f4480n = view;
        N0 n0 = this.f4475i;
        D d3 = n0.f4683A;
        D d4 = n0.f4683A;
        d3.setOnDismissListener(this);
        n0.f4696q = this;
        n0.f4705z = true;
        d4.setFocusable(true);
        View view2 = this.f4480n;
        boolean z2 = this.f4482p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f4482p = viewTreeObserver;
        if (z2) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f4476j);
        }
        view2.addOnAttachStateChangeListener(this.f4477k);
        n0.f4695p = view2;
        n0.f4692m = this.f4486t;
        boolean z3 = this.f4484r;
        Context context = this.f4471c;
        m mVar = this.f4473e;
        if (!z3) {
            this.f4485s = y.o(mVar, context, this.g);
            this.f4484r = true;
        }
        n0.r(this.f4485s);
        d4.setInputMethodMode(2);
        Rect rect = this.b;
        n0.f4704y = rect != null ? new Rect(rect) : null;
        n0.c();
        C0320v0 c0320v0 = n0.f4685d;
        c0320v0.setOnKeyListener(this);
        if (this.f4487u) {
            p pVar = this.f4472d;
            if (pVar.f4562m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c0320v0, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(pVar.f4562m);
                }
                frameLayout.setEnabled(false);
                c0320v0.addHeaderView(frameLayout, null, false);
            }
        }
        n0.p(mVar);
        n0.c();
    }

    @Override // p024j.G
    public final void dismiss() {
        if (b()) {
            this.f4475i.dismiss();
        }
    }

    @Override // p024j.G
    public final C0320v0 f() {
        return this.f4475i.f4685d;
    }

    @Override // p024j.C
    public final void g(boolean z2) {
        this.f4484r = false;
        m mVar = this.f4473e;
        if (mVar != null) {
            mVar.notifyDataSetChanged();
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
        this.f4481o = b;
    }

    @Override // p024j.C
    public final boolean m(I i3) {
        boolean z2;
        if (i3.hasVisibleItems()) {
            A a3 = new A(this.f4471c, i3, this.f4480n, this.f, this.f4474h, 0);
            B b = this.f4481o;
            a3.f4466h = b;
            y yVar = a3.f4467i;
            if (yVar != null) {
                yVar.l(b);
            }
            int size = i3.f.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    z2 = false;
                    break;
                }
                MenuItem item = i3.getItem(i4);
                if (item.isVisible() && item.getIcon() != null) {
                    z2 = true;
                    break;
                }
                i4++;
            }
            a3.g = z2;
            y yVar2 = a3.f4467i;
            if (yVar2 != null) {
                yVar2.q(z2);
            }
            a3.f4468j = this.f4478l;
            this.f4478l = null;
            this.f4472d.c(false);
            N0 n0 = this.f4475i;
            int width = n0.g;
            int iN = n0.n();
            if ((Gravity.getAbsoluteGravity(this.f4486t, this.f4479m.getLayoutDirection()) & 7) == 5) {
                width += this.f4479m.getWidth();
            }
            if (!a3.b()) {
                if (a3.f4465e != null) {
                    a3.d(width, iN, true, true);
                }
            }
            B b3 = this.f4481o;
            if (b3 != null) {
                b3.i(i3);
            }
            return true;
        }
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f4483q = true;
        this.f4472d.c(true);
        ViewTreeObserver viewTreeObserver = this.f4482p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f4482p = this.f4480n.getViewTreeObserver();
            }
            this.f4482p.removeGlobalOnLayoutListener(this.f4476j);
            this.f4482p = null;
        }
        this.f4480n.removeOnAttachStateChangeListener(this.f4477k);
        PopupWindow.OnDismissListener onDismissListener = this.f4478l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.f4479m = view;
    }

    @Override // p024j.y
    public final void q(boolean z2) {
        this.f4473e.f4549c = z2;
    }

    @Override // p024j.y
    public final void r(int i3) {
        this.f4486t = i3;
    }

    @Override // p024j.y
    public final void s(int i3) {
        this.f4475i.g = i3;
    }

    @Override // p024j.y
    public final void t(PopupWindow.OnDismissListener onDismissListener) {
        this.f4478l = onDismissListener;
    }

    @Override // p024j.y
    public final void u(boolean z2) {
        this.f4487u = z2;
    }

    @Override // p024j.y
    public final void v(int i3) {
        this.f4475i.i(i3);
    }

    @Override // p024j.C
    public final void e(Parcelable parcelable) {
    }

    @Override // p024j.y
    public final void n(p pVar) {
    }
}
