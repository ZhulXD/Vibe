package A1;

import android.content.BroadcastReceiver;
import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s0 extends FunctionReferenceImpl implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Context context = (Context) obj;
        BroadcastReceiver receiver = (BroadcastReceiver) obj2;
        Intrinsics.checkNotNullParameter(context, "p0");
        Intrinsics.checkNotNullParameter(receiver, "p1");
        ((D) this.receiver).getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        try {
            context.unregisterReceiver(receiver);
        } catch (IllegalArgumentException unused) {
        }
        return Unit.INSTANCE;
    }
}
