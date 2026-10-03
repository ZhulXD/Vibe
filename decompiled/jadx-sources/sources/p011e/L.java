package p011e;

import A1.C0013d;
import N1.w;
import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import k.C0300l;
import p021i.a;
import p021i.h;
import p024j.n;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class L extends a implements n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f4069d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p f4070e;
    public C0013d f;
    public WeakReference g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ M f4071h;

    public L(M m2, Context context, C0013d c0013d) {
        this.f4071h = m2;
        this.f4069d = context;
        this.f = c0013d;
        p pVar = new p(context);
        pVar.f4561l = 1;
        this.f4070e = pVar;
        pVar.f4556e = this;
    }

    @Override // p021i.a
    public final void a() {
        M m2 = this.f4071h;
        if (m2.f4079j != this) {
            return;
        }
        if (m2.f4086q) {
            m2.f4080k = this;
            m2.f4081l = this.f;
        } else {
            this.f.w(this);
        }
        this.f = null;
        m2.e0(false);
        ActionBarContextView actionBarContextView = m2.g;
        if (actionBarContextView.f2656l == null) {
            actionBarContextView.e();
        }
        m2.f4075d.setHideOnContentScrollEnabled(m2.f4091v);
        m2.f4079j = null;
    }

    @Override // p021i.a
    public final View b() {
        WeakReference weakReference = this.g;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // p024j.n
    public final void c(p pVar) {
        if (this.f == null) {
            return;
        }
        i();
        C0300l c0300l = this.f4071h.g.f2651e;
        if (c0300l != null) {
            c0300l.n();
        }
    }

    @Override // p021i.a
    public final p d() {
        return this.f4070e;
    }

    @Override // p021i.a
    public final MenuInflater e() {
        return new h(this.f4069d);
    }

    @Override // p021i.a
    public final CharSequence f() {
        return this.f4071h.g.getSubtitle();
    }

    @Override // p021i.a
    public final CharSequence g() {
        return this.f4071h.g.getTitle();
    }

    @Override // p024j.n
    public final boolean h(p pVar, MenuItem menuItem) {
        C0013d c0013d = this.f;
        if (c0013d != null) {
            return ((w) c0013d.f177c).c(this, menuItem);
        }
        return false;
    }

    @Override // p021i.a
    public final void i() {
        if (this.f4071h.f4079j != this) {
            return;
        }
        p pVar = this.f4070e;
        pVar.w();
        try {
            this.f.x(this, pVar);
        } finally {
            pVar.v();
        }
    }

    @Override // p021i.a
    public final boolean j() {
        return this.f4071h.g.f2664t;
    }

    @Override // p021i.a
    public final void k(View view) {
        this.f4071h.g.setCustomView(view);
        this.g = new WeakReference(view);
    }

    @Override // p021i.a
    public final void l(int i3) {
        m(this.f4071h.b.getResources().getString(i3));
    }

    @Override // p021i.a
    public final void m(CharSequence charSequence) {
        this.f4071h.g.setSubtitle(charSequence);
    }

    @Override // p021i.a
    public final void n(int i3) {
        o(this.f4071h.b.getResources().getString(i3));
    }

    @Override // p021i.a
    public final void o(CharSequence charSequence) {
        this.f4071h.g.setTitle(charSequence);
    }

    @Override // p021i.a
    public final void p(boolean z2) {
        this.f4374c = z2;
        this.f4071h.g.setTitleOptional(z2);
    }
}
