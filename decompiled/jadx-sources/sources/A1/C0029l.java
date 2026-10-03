package A1;

import android.app.Activity;
import android.content.Intent;
import com.minhub.gamehub.hub.auth.LoginAlertDialog;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.l, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0029l implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Activity f202c;

    public /* synthetic */ C0029l(Activity activity, int i3) {
        this.b = i3;
        this.f202c = activity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                Function0 action = (Function0) obj;
                Intrinsics.checkNotNullParameter(action, "action");
                this.f202c.runOnUiThread(new RunnableC0034o(0, action));
                return Unit.INSTANCE;
            case 1:
                Intent intent = (Intent) obj;
                Intrinsics.checkNotNullParameter(intent, "i");
                Activity context = this.f202c;
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                intent.setPackage(context.getPackageName());
                context.sendBroadcast(intent, "com.minhub.gamehub.permission.GAME_SESSION");
                return Unit.INSTANCE;
            default:
                return LoginAlertDialog.showConnectionError$lambda$4(this.f202c, ((Integer) obj).intValue());
        }
    }
}
