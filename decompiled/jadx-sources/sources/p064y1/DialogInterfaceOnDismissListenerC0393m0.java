package p064y1;

import android.content.DialogInterface;

/* JADX INFO: renamed from: y1.m0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnDismissListenerC0393m0 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0425x0 f6289c;

    public /* synthetic */ DialogInterfaceOnDismissListenerC0393m0(C0425x0 c0425x0, int i3) {
        this.b = i3;
        this.f6289c = c0425x0;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.b) {
            case 0:
                this.f6289c.f6400c.invoke();
                break;
            case 1:
                this.f6289c.f6400c.invoke();
                break;
            case 2:
                this.f6289c.f6400c.invoke();
                break;
            default:
                this.f6289c.f6400c.invoke();
                break;
        }
    }
}
