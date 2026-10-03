package A1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r0 extends FunctionReferenceImpl implements Function3 {
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Context context = (Context) obj;
        BroadcastReceiver receiver = (BroadcastReceiver) obj2;
        IntentFilter filter = (IntentFilter) obj3;
        Intrinsics.checkNotNullParameter(context, "p0");
        Intrinsics.checkNotNullParameter(receiver, "p1");
        Intrinsics.checkNotNullParameter(filter, "p2");
        ((D) this.receiver).getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(receiver, filter, "com.minhub.gamehub.permission.GAME_SESSION", null, 4);
        } else {
            context.registerReceiver(receiver, filter, "com.minhub.gamehub.permission.GAME_SESSION", null);
        }
        return Unit.INSTANCE;
    }
}
