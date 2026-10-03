package C1;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.LoginActivity;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: renamed from: C1.z1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0124z1 implements View.OnClickListener {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f722e;
    public final /* synthetic */ Object f;

    public /* synthetic */ ViewOnClickListenerC0124z1(EditText editText, LoginActivity loginActivity, DialogInterfaceC0245g dialogInterfaceC0245g, int i3) {
        this.f722e = editText;
        this.f720c = loginActivity;
        this.f = dialogInterfaceC0245g;
        this.f721d = i3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        int i4 = this.f721d;
        Object obj = this.f;
        LoginActivity loginActivity = this.f720c;
        Object obj2 = this.f722e;
        switch (i3) {
            case 0:
                Context context = (Context) obj;
                int i5 = LoginActivity.f3793l;
                ((PopupWindow) obj2).dismiss();
                String str = loginActivity.f3797j[i4];
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNull(context);
                if (!Intrinsics.areEqual(str, S1.d.d(context))) {
                    S1.d.w(context, str);
                    loginActivity.recreate();
                }
                break;
            default:
                DialogInterfaceC0245g dialogInterfaceC0245g = (DialogInterfaceC0245g) obj;
                int i6 = LoginActivity.f3793l;
                String string = StringsKt.trim((CharSequence) ((EditText) obj2).getText().toString()).toString();
                if (string.length() == 0) {
                    Toast.makeText(loginActivity, loginActivity.getString(R.string.login_account_credential_empty), 0).show();
                } else {
                    for (int i7 = 0; i7 < string.length(); i7++) {
                        if (!Character.isDigit(string.charAt(i7))) {
                            String string2 = loginActivity.getString(R.string.login_pw_format_letters);
                            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                            loginActivity.s(string2, true);
                        }
                        break;
                    }
                    if (string.length() != 4) {
                        String string3 = loginActivity.getString(R.string.login_pw_format_length, Integer.valueOf(string.length()));
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        loginActivity.s(string3, true);
                    } else {
                        dialogInterfaceC0245g.dismiss();
                        String str2 = "game" + i4;
                        loginActivity.r(false);
                        String string4 = loginActivity.getString(R.string.login_account_verifying);
                        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                        DialogInterfaceC0245g dialogInterfaceC0245g2 = loginActivity.f;
                        if (dialogInterfaceC0245g2 != null) {
                            dialogInterfaceC0245g2.dismiss();
                        }
                        O0.b bVar = new O0.b(loginActivity, 0);
                        C0240b c0240b = (C0240b) bVar.f4145c;
                        c0240b.f = string4;
                        c0240b.f4105m = false;
                        DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
                        loginActivity.f = dialogInterfaceC0245gC;
                        dialogInterfaceC0245gC.show();
                        Thread thread = new Thread(new A1((Object) loginActivity, (Object) str2, (Object) string, 0));
                        thread.setName("account-verify");
                        thread.start();
                    }
                }
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0124z1(PopupWindow popupWindow, LoginActivity loginActivity, int i3, Context context) {
        this.f722e = popupWindow;
        this.f720c = loginActivity;
        this.f721d = i3;
        this.f = context;
    }
}
