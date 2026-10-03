package k;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import p024j.C0269h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class N0 extends I0 implements J0 {

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final Method f4720E;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public C0269h f4721D;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f4720E = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // k.J0
    public final void d(p024j.p pVar, MenuItem menuItem) {
        C0269h c0269h = this.f4721D;
        if (c0269h != null) {
            c0269h.d(pVar, menuItem);
        }
    }

    @Override // k.J0
    public final void k(p024j.p pVar, p024j.s sVar) {
        C0269h c0269h = this.f4721D;
        if (c0269h != null) {
            c0269h.k(pVar, sVar);
        }
    }

    @Override // k.I0
    public final C0320v0 q(Context context, boolean z2) {
        M0 m2 = new M0(context, z2);
        m2.setHoverListener(this);
        return m2;
    }
}
