package p024j;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, B {
    public I b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DialogInterfaceC0245g f4574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l f4575d;

    @Override // p024j.B
    public final void a(p pVar, boolean z2) {
        DialogInterfaceC0245g dialogInterfaceC0245g;
        if ((z2 || pVar == this.b) && (dialogInterfaceC0245g = this.f4574c) != null) {
            dialogInterfaceC0245g.dismiss();
        }
    }

    @Override // p024j.B
    public final boolean i(p pVar) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        I i4 = this.b;
        l lVar = this.f4575d;
        if (lVar.g == null) {
            lVar.g = new k(lVar);
        }
        i4.q(lVar.g.getItem(i3), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f4575d.a(this.b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i3, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        I i4 = this.b;
        if (i3 == 82 || i3 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f4574c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f4574c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                i4.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return i4.performShortcut(i3, keyEvent, 0);
    }
}
