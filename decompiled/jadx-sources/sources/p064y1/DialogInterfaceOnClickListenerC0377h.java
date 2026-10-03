package p064y1;

import Q1.d;
import android.content.DialogInterface;

/* JADX INFO: renamed from: y1.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0377h implements DialogInterface.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f6239c;

    public /* synthetic */ DialogInterfaceOnClickListenerC0377h(d dVar, int i3) {
        this.b = i3;
        this.f6239c = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        switch (this.b) {
            case 0:
                this.f6239c.c();
                dialogInterface.dismiss();
                break;
            case 1:
                this.f6239c.c();
                dialogInterface.dismiss();
                break;
            default:
                this.f6239c.c();
                dialogInterface.dismiss();
                break;
        }
    }
}
