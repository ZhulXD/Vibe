package k;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
import p011e.C0240b;
import p011e.C0244f;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M implements S, DialogInterface.OnClickListener {
    public DialogInterfaceC0245g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public N f4712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f4713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ T f4714e;

    public M(T t2) {
        this.f4714e = t2;
    }

    @Override // k.S
    public final int a() {
        return 0;
    }

    @Override // k.S
    public final boolean b() {
        DialogInterfaceC0245g dialogInterfaceC0245g = this.b;
        if (dialogInterfaceC0245g != null) {
            return dialogInterfaceC0245g.isShowing();
        }
        return false;
    }

    @Override // k.S
    public final void dismiss() {
        DialogInterfaceC0245g dialogInterfaceC0245g = this.b;
        if (dialogInterfaceC0245g != null) {
            dialogInterfaceC0245g.dismiss();
            this.b = null;
        }
    }

    @Override // k.S
    public final Drawable e() {
        return null;
    }

    @Override // k.S
    public final void g(CharSequence charSequence) {
        this.f4713d = charSequence;
    }

    @Override // k.S
    public final void h(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // k.S
    public final void i(int i3) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // k.S
    public final void j(int i3) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // k.S
    public final void l(int i3) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // k.S
    public final void m(int i3, int i4) {
        if (this.f4712c == null) {
            return;
        }
        T t2 = this.f4714e;
        C0244f c0244f = new C0244f(t2.getPopupContext());
        C0240b c0240b = (C0240b) c0244f.f4145c;
        CharSequence charSequence = this.f4713d;
        if (charSequence != null) {
            c0240b.f4098d = charSequence;
        }
        N n2 = this.f4712c;
        int selectedItemPosition = t2.getSelectedItemPosition();
        c0240b.f4110r = n2;
        c0240b.f4111s = this;
        c0240b.f4114v = selectedItemPosition;
        c0240b.f4113u = true;
        DialogInterfaceC0245g dialogInterfaceC0245gC = c0244f.c();
        this.b = dialogInterfaceC0245gC;
        AlertController$RecycleListView alertController$RecycleListView = dialogInterfaceC0245gC.f4146d.f;
        alertController$RecycleListView.setTextDirection(i3);
        alertController$RecycleListView.setTextAlignment(i4);
        this.b.show();
    }

    @Override // k.S
    public final int n() {
        return 0;
    }

    @Override // k.S
    public final CharSequence o() {
        return this.f4713d;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        T t2 = this.f4714e;
        t2.setSelection(i3);
        if (t2.getOnItemClickListener() != null) {
            t2.performItemClick(null, i3, this.f4712c.getItemId(i3));
        }
        dismiss();
    }

    @Override // k.S
    public final void p(ListAdapter listAdapter) {
        this.f4712c = (N) listAdapter;
    }
}
