package C1;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.minhub.gamehub.hub.LoginActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B1 implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f396c;

    public /* synthetic */ B1(LoginActivity loginActivity, int i3) {
        this.b = i3;
        this.f396c = loginActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        LoginActivity loginActivity = this.f396c;
        switch (i3) {
            case 0:
                int i4 = LoginActivity.f3793l;
                try {
                    loginActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://h-game18.xyz/get-password-new/")));
                } catch (Exception e2) {
                    Log.e("LoginActivity", "Cannot open password page", e2);
                }
                break;
            case 1:
                int i5 = LoginActivity.f3793l;
                loginActivity.r(true);
                break;
            default:
                int i6 = LoginActivity.f3793l;
                loginActivity.o();
                break;
        }
        return Unit.INSTANCE;
    }
}
