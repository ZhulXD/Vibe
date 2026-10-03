package p004b1;

import A1.C0009b;
import android.os.Handler;
import android.os.Message;
import p042q0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3107a;
    public final /* synthetic */ Object b;

    public /* synthetic */ d(int i3, Object obj) {
        this.f3107a = i3;
        this.b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f3107a) {
            case 0:
                if (message.what != 0) {
                    return false;
                }
                C0009b c0009b = (C0009b) this.b;
                if (message.obj != null) {
                    throw new ClassCastException();
                }
                synchronized (c0009b.b) {
                    try {
                        throw null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            default:
                f fVar = (f) this.b;
                int i3 = message.what;
                if (i3 == 1) {
                    fVar.b((p042q0.d) message.obj);
                    return true;
                }
                if (i3 == 2) {
                    fVar.f5278d.j((p042q0.d) message.obj);
                }
                return false;
        }
    }
}
