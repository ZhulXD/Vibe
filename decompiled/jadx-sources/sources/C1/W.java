package C1;

import com.minhub.gamehub.hub.AppLockActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__StringBuilderJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class W implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppLockActivity f518c;

    public /* synthetic */ W(AppLockActivity appLockActivity, int i3) {
        this.b = i3;
        this.f518c = appLockActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        AppLockActivity appLockActivity = this.f518c;
        switch (i3) {
            case 0:
                StringBuilder sb = appLockActivity.g;
                if (sb.length() > 0) {
                    sb.deleteCharAt(sb.length() - 1);
                    appLockActivity.o();
                }
                break;
            case 1:
                StringBuilder sb2 = appLockActivity.g;
                if (sb2.length() > 0) {
                    StringsKt__StringBuilderJVMKt.clear(sb2);
                    appLockActivity.o();
                }
                break;
            case 2:
                int i4 = AppLockActivity.f3759i;
                appLockActivity.n();
                break;
            case 3:
                StringsKt__StringBuilderJVMKt.clear(appLockActivity.g);
                appLockActivity.o();
                break;
            default:
                int i5 = AppLockActivity.f3759i;
                appLockActivity.n();
                break;
        }
        return Unit.INSTANCE;
    }
}
