package C1;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.minhub.gamehub.hub.LoginActivity;
import com.minhub.gamehub.hub.auth.AuthHttp;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;

/* JADX INFO: renamed from: C1.y1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0121y1 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f717c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f718d;

    public /* synthetic */ RunnableC0121y1(LoginActivity loginActivity, String str, int i3) {
        this.b = i3;
        this.f717c = loginActivity;
        this.f718d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objM9constructorimpl;
        int i3 = this.b;
        String str = this.f718d;
        LoginActivity loginActivity = this.f717c;
        switch (i3) {
            case 0:
                int i4 = LoginActivity.f3793l;
                if (!loginActivity.isFinishing() && !loginActivity.isDestroyed()) {
                    try {
                        loginActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    } catch (Exception e2) {
                        Log.e("LoginActivity", "Cannot launch Patreon OAuth", e2);
                        loginActivity.t("Cannot open browser: " + e2.getMessage());
                        loginActivity.r(true);
                        return;
                    }
                    break;
                }
                break;
            default:
                int i5 = LoginActivity.f3793l;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(AuthHttp.INSTANCE.postForm("https://auth.h-game18.xyz/patreon/redeem", MapsKt.mapOf(TuplesKt.to("code", str)), 15000, 15000));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                loginActivity.runOnUiThread(new RunnableC0078k(3, loginActivity, objM9constructorimpl));
                break;
        }
    }
}
