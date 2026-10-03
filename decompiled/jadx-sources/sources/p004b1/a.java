package p004b1;

import android.os.Handler;
import android.os.Message;
import p014f0.F;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3099a;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f3099a) {
            case 0:
                int i3 = message.what;
                if (i3 == 0) {
                    message.obj.getClass();
                    throw new ClassCastException();
                }
                if (i3 != 1) {
                    return false;
                }
                message.obj.getClass();
                throw new ClassCastException();
            default:
                if (message.what != 1) {
                    return false;
                }
                ((F) message.obj).e();
                return true;
        }
    }
}
