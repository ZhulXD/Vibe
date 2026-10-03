package p011e;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: e.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerC0241c extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakReference f4115a;

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i3 = message.what;
        if (i3 == -3 || i3 == -2 || i3 == -1) {
            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f4115a.get(), message.what);
        } else {
            if (i3 != 1) {
                return;
            }
            ((DialogInterface) message.obj).dismiss();
        }
    }
}
