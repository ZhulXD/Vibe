package p021i;

import A1.C0013d;
import N1.w;
import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import k.C0300l;
import p024j.n;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends a implements n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f4379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ActionBarContextView f4380e;
    public C0013d f;
    public WeakReference g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p f4382i;

    @Override // p021i.a
    public final void a() {
        if (this.f4381h) {
            return;
        }
        this.f4381h = true;
        this.f.w(this);
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
        i();
        C0300l c0300l = this.f4380e.f2651e;
        if (c0300l != null) {
            c0300l.n();
        }
    }

    @Override // p021i.a
    public final p d() {
        return this.f4382i;
    }

    @Override // p021i.a
    public final MenuInflater e() {
        return new h(this.f4380e.getContext());
    }

    @Override // p021i.a
    public final CharSequence f() {
        return this.f4380e.getSubtitle();
    }

    @Override // p021i.a
    public final CharSequence g() {
        return this.f4380e.getTitle();
    }

    @Override // p024j.n
    public final boolean h(p pVar, MenuItem menuItem) {
        return ((w) this.f.f177c).c(this, menuItem);
    }

    @Override // p021i.a
    public final void i() {
        this.f.x(this, this.f4382i);
    }

    @Override // p021i.a
    public final boolean j() {
        return this.f4380e.f2664t;
    }

    @Override // p021i.a
    public final void k(View view) {
        this.f4380e.setCustomView(view);
        this.g = view != null ? new WeakReference(view) : null;
    }

    @Override // p021i.a
    public final void l(int i3) {
        m(this.f4379d.getString(i3));
    }

    @Override // p021i.a
    public final void m(CharSequence charSequence) {
        this.f4380e.setSubtitle(charSequence);
    }

    @Override // p021i.a
    public final void n(int i3) {
        o(this.f4379d.getString(i3));
    }

    @Override // p021i.a
    public final void o(CharSequence charSequence) {
        this.f4380e.setTitle(charSequence);
    }

    @Override // p021i.a
    public final void p(boolean z2) {
        this.f4374c = z2;
        this.f4380e.setTitleOptional(z2);
    }
}
