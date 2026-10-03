package C1;

import android.R;
import com.minhub.gamehub.hub.SetupAppLockActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringBuilderJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i2 implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SetupAppLockActivity f621c;

    public /* synthetic */ i2(SetupAppLockActivity setupAppLockActivity, int i3) {
        this.b = i3;
        this.f621c = setupAppLockActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        SetupAppLockActivity setupAppLockActivity = this.f621c;
        switch (i3) {
            case 0:
                StringBuilder sb = setupAppLockActivity.g;
                if (sb.length() > 0) {
                    sb.deleteCharAt(sb.length() - 1);
                    setupAppLockActivity.n();
                }
                break;
            case 1:
                StringBuilder sb2 = setupAppLockActivity.g;
                if (sb2.length() > 0) {
                    StringsKt__StringBuilderJVMKt.clear(sb2);
                    setupAppLockActivity.n();
                }
                break;
            case 2:
                StringsKt__StringBuilderJVMKt.clear(setupAppLockActivity.g);
                setupAppLockActivity.n();
                break;
            case 3:
                int i4 = SetupAppLockActivity.f3805j;
                if (!setupAppLockActivity.isFinishing()) {
                    setupAppLockActivity.finish();
                    setupAppLockActivity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
                break;
            default:
                StringsKt__StringBuilderJVMKt.clear(setupAppLockActivity.g);
                setupAppLockActivity.n();
                V1 v2 = setupAppLockActivity.f;
                if (v2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("ui");
                    v2 = null;
                }
                v2.c(setupAppLockActivity.m());
                break;
        }
        return Unit.INSTANCE;
    }
}
