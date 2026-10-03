package k;

import android.content.Context;
import android.view.View;
import android.view.Window;
import p024j.C0262a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h1 implements View.OnClickListener {
    public final C0262a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i1 f4827c;

    public h1(i1 i1Var) {
        this.f4827c = i1Var;
        Context context = i1Var.f4839a.getContext();
        CharSequence charSequence = i1Var.f4843h;
        C0262a c0262a = new C0262a();
        c0262a.f4494e = 4096;
        c0262a.g = 4096;
        c0262a.f4499l = null;
        c0262a.f4500m = null;
        c0262a.f4501n = false;
        c0262a.f4502o = false;
        c0262a.f4503p = 16;
        c0262a.f4496i = context;
        c0262a.f4491a = charSequence;
        this.b = c0262a;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i1 i1Var = this.f4827c;
        Window.Callback callback = i1Var.f4846k;
        if (callback == null || !i1Var.f4847l) {
            return;
        }
        callback.onMenuItemSelected(0, this.b);
    }
}
