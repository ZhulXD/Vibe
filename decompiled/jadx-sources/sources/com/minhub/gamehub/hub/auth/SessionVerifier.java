package com.minhub.gamehub.hub.auth;

import A1.C0036q;
import A1.RunnableC0034o;
import C1.A1;
import S1.d;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/minhub/gamehub/hub/auth/SessionVerifier;", "", "<init>", "()V", "TAG", "", "verify", "Lcom/minhub/gamehub/hub/auth/SessionVerifier$Result;", "token", "verifyInBackground", "", "context", "Landroid/content/Context;", "onInvalid", "Lkotlin/Function0;", "Result", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSessionVerifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionVerifier.kt\ncom/minhub/gamehub/hub/auth/SessionVerifier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"})
public final class SessionVerifier {
    public static final SessionVerifier INSTANCE = new SessionVerifier();
    private static final String TAG = "SessionVerifier";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/minhub/gamehub/hub/auth/SessionVerifier$Result;", "", "<init>", "(Ljava/lang/String;I)V", "VALID", "INVALID", "UNKNOWN", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public enum Result {
        VALID,
        INVALID,
        UNKNOWN;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<Result> getEntries() {
            return $ENTRIES;
        }
    }

    private SessionVerifier() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void verifyInBackground$default(SessionVerifier sessionVerifier, Context context, Function0 function0, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            function0 = new C0036q(9);
        }
        sessionVerifier.verifyInBackground(context, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void verifyInBackground$lambda$2(String str, Context context, Function0 function0) {
        if (INSTANCE.verify(str) == Result.INVALID) {
            Log.w(TAG, "Server rejected session token — clearing local session");
            Set set = d.f2060a;
            Intrinsics.checkNotNull(context);
            d.a(context);
            new Handler(Looper.getMainLooper()).post(new RunnableC0034o(2, function0));
        }
    }

    public final Result verify(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        try {
            AuthHttp.Result resultPostForm = AuthHttp.INSTANCE.postForm("https://auth.h-game18.xyz/session/verify", MapsKt.mapOf(TuplesKt.to("token", token)), 8000, 10000);
            if (!resultPostForm.isSuccess()) {
                return Result.UNKNOWN;
            }
            JSONObject jSONObject = new JSONObject(resultPostForm.getBody());
            if (jSONObject.optBoolean("success", false)) {
                return jSONObject.optBoolean("valid", false) ? Result.VALID : Result.INVALID;
            }
            return Result.UNKNOWN;
        } catch (Exception e2) {
            Log.d(TAG, "Session verify skipped (transport): " + e2.getMessage());
            return Result.UNKNOWN;
        }
    }

    public final void verifyInBackground(Context context, Function0<Unit> onInvalid) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onInvalid, "onInvalid");
        Context applicationContext = context.getApplicationContext();
        Set set = d.f2060a;
        Intrinsics.checkNotNull(applicationContext);
        Intrinsics.checkNotNullParameter(applicationContext, "<this>");
        if (d.s(applicationContext).getInt("login_type", 0) == 0) {
            return;
        }
        Intrinsics.checkNotNullParameter(applicationContext, "<this>");
        String string = applicationContext.getSharedPreferences("minhub_prefs", 0).getString("session_token", null);
        if (string == null || StringsKt.isBlank(string)) {
            return;
        }
        Thread thread = new Thread(new A1(string, (Object) applicationContext, (Object) onInvalid, 6));
        thread.setDaemon(true);
        thread.setName("session-verify");
        thread.start();
    }
}
