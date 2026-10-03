package com.minhub.gamehub.hub;
import B1.C0046b;
import B1.l;
import C1.B1;
import C1.C1;
import C1.RunnableC0121y1;
import F.b;
import S1.c;
import S1.d;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.auth.LoginAlertDialog;
import com.minhub.gamehub.hub.auth.SessionVerifier;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class LoginActivity extends c {
    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f3793l = 0;
    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f3794e;
    public DialogInterfaceC0245g f;
    public boolean g;
    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3795h;
    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ActivityResultLauncher f3796i = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0046b(2, this));
    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String[] f3797j = {"vi", "en", "in", "zh", "ja", "ko"};
    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String[] f3798k = {"🇻🇳 Tiếng Việt", "🇬🇧 English", "🇮🇩 Indonesia", "🇨🇳 中文", "🇯🇵 日本語", "🇰🇷 한국어"};
    public static long n(Intent intent) {
        Uri data;
        String queryParameter;
        Long longOrNull;
        if (intent == null || (data = intent.getData()) == null || !StringsKt.equals(data.getScheme(), "minhub", true) || !StringsKt.equals(data.getHost(), "game", true) || (queryParameter = data.getQueryParameter("id")) == null || (longOrNull = StringsKt.toLongOrNull(queryParameter)) == null) {
            return 0L;
        }
        return longOrNull.longValue();
    }
    public final void m() {
        Uri data;
        Intent intent = getIntent();
        if (intent == null || (data = intent.getData()) == null) {
            return;
        }
        boolean z2 = StringsKt.equals(data.getScheme(), "yunbierdika", true) && StringsKt.equals(data.getHost(), "patreon-callback", true);
        boolean z3 = StringsKt.equals(data.getScheme(), "https", true) && StringsKt.equals(data.getHost(), "h-game18.xyz", true) && Intrinsics.areEqual(data.getPath(), "/patreon-callback.php");
        if ((z2 || z3) && !this.g) {
            this.g = true;
            String queryParameter = data.getQueryParameter("error");
            if (queryParameter != null) {
                String queryParameter2 = data.getQueryParameter("error_description");
                if (queryParameter2 == null) {
                    queryParameter2 = queryParameter;
                }
                String string = (StringsKt__StringsKt.contains(queryParameter, (CharSequence) "not eligible", true) || StringsKt__StringsKt.contains(queryParameter, (CharSequence) "Minimum pledge", true) || StringsKt__StringsKt.contains(queryParameter2, (CharSequence) "does not meet", true)) ? getString(R.string.login_patreon_not_member) : "Patreon login failed: ".concat(queryParameter2);
                Intrinsics.checkNotNull(string);
                t(string);
                r(true);
                return;
            }
            String queryParameter3 = data.getQueryParameter("code");
            if (queryParameter3 == null || queryParameter3.length() == 0) {
                t("Patreon login failed: missing authorization code");
                r(true);
                return;
            }
            DialogInterfaceC0245g dialogInterfaceC0245g = this.f;
            if (dialogInterfaceC0245g != null) {
                dialogInterfaceC0245g.dismiss();
            }
            O0.b bVar = new O0.b(this, 0);
            C0240b c0240b = (C0240b) bVar.f4145c;
            c0240b.f = "Authenticating with Patreon…";
            c0240b.f4105m = false;
            DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
            this.f = dialogInterfaceC0245gC;
            dialogInterfaceC0245gC.show();
            Thread thread = new Thread(new RunnableC0121y1(this, queryParameter3, 1));
            thread.setName("patreon-redeem");
            thread.start();
            try {
                Intent intent2 = new Intent(getIntent());
                intent2.setData(null);
                setIntent(intent2);
            } catch (Exception e2) {
                Log.w("LoginActivity", "Unable to clear intent data", e2);
            }
        }
    }
    public final void o() {
        Context applicationContext = getApplicationContext();
        Set set = d.f2060a;
        Intrinsics.checkNotNull(applicationContext);
        Intrinsics.checkNotNullParameter(applicationContext, "<this>");
        if (!d.s(applicationContext).getBoolean("app_lock_enabled", false) || d.b(applicationContext).length() <= 0) {
            p();
            return;
        }
        Intrinsics.checkNotNullParameter(this, "ctx");
        this.f3796i.launch(new Intent(this, (Class<?>) AppLockActivity.class));
    }
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        int i3 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_login, (ViewGroup) null, false);
        int i4 = R.id.btn_account;
        Button button = (Button) viewInflate.findViewById(R.id.btn_account);
        if (button != null) {
            i4 = R.id.btn_lang;
            Button button2 = (Button) viewInflate.findViewById(R.id.btn_lang);
            if (button2 != null) {
                i4 = R.id.btn_patreon;
                Button button3 = (Button) viewInflate.findViewById(R.id.btn_patreon);
                if (button3 != null) {
                    FrameLayout frameLayout = (FrameLayout) viewInflate;
                    b bVar = new b(frameLayout, button, button2, button3);
                    Intrinsics.checkNotNullExpressionValue(bVar, "inflate(...)");
                    this.f3794e = bVar;
                    setContentView(frameLayout);
                    this.f3795h = n(getIntent());
                    b bVar2 = this.f3794e;
                    if (bVar2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                        bVar2 = null;
                    }
                    ((Button) bVar2.f945e).setOnClickListener(new C1(this, i3));
                    b bVar3 = this.f3794e;
                    if (bVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                        bVar3 = null;
                    }
                    ((Button) bVar3.f943c).setOnClickListener(new C1(this, 1));
                    Set set = d.f2060a;
                    Context applicationContext = getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    int iCoerceAtLeast = RangesKt.coerceAtLeast(ArraysKt___ArraysKt.indexOf((String[]) this.f3797j, d.d(applicationContext)), 0);
                    b bVar4 = this.f3794e;
                    if (bVar4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                        bVar4 = null;
                    }
                    ((Button) bVar4.f944d).setText(this.f3798k[iCoerceAtLeast]);
                    b bVar5 = this.f3794e;
                    if (bVar5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                        bVar5 = null;
                    }
                    ((Button) bVar5.f944d).setOnClickListener(new C1(this, 2));
                    Context applicationContext2 = getApplicationContext();
                    Intrinsics.checkNotNull(applicationContext2);
                    boolean z2 = d.n(applicationContext2) && !d.o(applicationContext2);
                    Context applicationContext3 = getApplicationContext();
                    Intrinsics.checkNotNull(applicationContext3);
                    if (!d.n(applicationContext3) || !d.o(applicationContext3)) {
                        if (d.n(applicationContext3)) {
                            d.a(applicationContext3);
                        }
                        if (z2) {
                            Intent intent = getIntent();
                            if ((intent != null ? intent.getData() : null) == null) {
                                LoginAlertDialog loginAlertDialog = LoginAlertDialog.INSTANCE;
                                LoginAlertDialog.Kind kind = LoginAlertDialog.Kind.INFO;
                                String string = getString(R.string.login_session_timeout_title);
                                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                String string2 = getString(R.string.login_session_timeout_msg);
                                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                                LoginAlertDialog.show$default(loginAlertDialog, this, kind, string, string2, null, null, null, false, null, 496, null);
                            }
                        }
                        m();
                        return;
                    }
                    Context applicationContext4 = getApplicationContext();
                    Intrinsics.checkNotNullParameter(applicationContext3, "<this>");
                    Intrinsics.checkNotNullParameter(applicationContext3, "<this>");
                    int i5 = d.s(applicationContext3).getInt("login_type", 0);
                    if (i5 == 0) {
                        str = "GUEST";
                    } else if (i5 == 1) {
                        str = "PATREON";
                    } else if (i5 != 2) {
                        str = i5 != 3 ? "UNKNOWN" : "ACCOUNT";
                    } else {
                        str = "OWNER";
                    }
                    Toast.makeText(applicationContext4, "Welcome back (" + str + ")", 1).show();
                    SessionVerifier.INSTANCE.verifyInBackground(applicationContext3, new l(applicationContext3, 1));
                    o();
                    return;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
    }
    @Override // p011e.AbstractActivityC0248j, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        DialogInterfaceC0245g dialogInterfaceC0245g = this.f;
        if (dialogInterfaceC0245g != null) {
            dialogInterfaceC0245g.dismiss();
        }
        super.onDestroy();
    }
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        long jN = n(intent);
        if (jN > 0) {
            this.f3795h = jN;
        }
        m();
    }
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.g) {
            return;
        }
        m();
    }
    public final void p() {
        Intent intent = new Intent(this, (Class<?>) HubActivity.class);
        long j2 = this.f3795h;
        if (j2 > 0) {
            intent.putExtra("extra_game_id", j2);
        }
        intent.addFlags(603979776);
        startActivity(intent);
        finish();
    }
    public final void q(String str, String str2, int i3, Integer num, String str3) {
        String str4;
        int iIntValue = num.intValue();
        if (i3 == 1 && iIntValue < 600) {
            LoginAlertDialog loginAlertDialog = LoginAlertDialog.INSTANCE;
            LoginAlertDialog.Kind kind = LoginAlertDialog.Kind.INFO;
            String string = getString(R.string.login_patreon_insufficient_title);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = getString(R.string.login_patreon_insufficient_msg, 6, Double.valueOf(((double) iIntValue) / 100.0d));
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            LoginAlertDialog.show$default(loginAlertDialog, this, kind, string, string2, null, null, null, false, new B1(this, 1), 112, null);
            return;
        }
        Context applicationContext = getApplicationContext();
        Set set = d.f2060a;
        Intrinsics.checkNotNull(applicationContext);
        d.y(applicationContext, true);
        d.A(applicationContext, i3 != 0);
        d.D(applicationContext, str);
        d.z(applicationContext, i3);
        d.B(applicationContext, str2);
        d.x(applicationContext, System.currentTimeMillis());
        d.C(applicationContext, str3);
        if (i3 != 1) {
            str4 = i3 != 2 ? "Guest access" : "Owner access granted";
        } else {
            str4 = "Patreon supporter ($" + (((double) iIntValue) / 100.0d) + "/month)";
        }
        Toast.makeText(getApplicationContext(), str + " — " + str4, 1).show();
        r(true);
        o();
    }
    public final void r(boolean z2) {
        b bVar = this.f3794e;
        b bVar2 = null;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            bVar = null;
        }
        ((Button) bVar.f945e).setEnabled(z2);
        b bVar3 = this.f3794e;
        if (bVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            bVar3 = null;
        }
        ((Button) bVar3.f943c).setEnabled(z2);
        b bVar4 = this.f3794e;
        if (bVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            bVar4 = null;
        }
        ((Button) bVar4.f945e).setAlpha(z2 ? 1.0f : 0.6f);
        b bVar5 = this.f3794e;
        if (bVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            bVar2 = bVar5;
        }
        ((Button) bVar2.f943c).setAlpha(z2 ? 1.0f : 0.6f);
    }
    public final void s(String str, boolean z2) {
        LoginAlertDialog loginAlertDialog = LoginAlertDialog.INSTANCE;
        LoginAlertDialog.Kind kind = LoginAlertDialog.Kind.ERROR;
        String string = getString(R.string.login_error_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        LoginAlertDialog.show$default(loginAlertDialog, this, kind, string, str, null, z2 ? getString(R.string.login_account_get_password) : null, new B1(this, 0), false, null, 400, null);
    }
    public final void t(String str) {
        LoginAlertDialog loginAlertDialog = LoginAlertDialog.INSTANCE;
        LoginAlertDialog.Kind kind = LoginAlertDialog.Kind.ERROR;
        String string = getString(R.string.login_error_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        LoginAlertDialog.show$default(loginAlertDialog, this, kind, string, str, null, null, null, false, null, 496, null);
    }
}
