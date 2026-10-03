package C1;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.LoginActivity;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.ranges.RangesKt___RangesKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f402c;

    public /* synthetic */ C1(LoginActivity loginActivity, int i3) {
        this.b = i3;
        this.f402c = loginActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        F.b bVar;
        int i3 = this.b;
        LoginActivity loginActivity = this.f402c;
        switch (i3) {
            case 0:
                loginActivity.g = false;
                loginActivity.r(false);
                new Thread(new RunnableC0068g1(1, loginActivity)).start();
                break;
            case 1:
                int i4 = LoginActivity.f3793l;
                loginActivity.r(false);
                SharedPreferences sharedPreferences = loginActivity.getSharedPreferences("login_prefs", 0);
                int iRandom = sharedPreferences.getInt("account_number", -1);
                long j2 = sharedPreferences.getLong("account_number_time", 0L);
                if (iRandom == -1 || System.currentTimeMillis() - j2 >= 600000) {
                    iRandom = RangesKt___RangesKt.random(new IntRange(1, 9), Random.INSTANCE);
                    sharedPreferences.edit().putInt("account_number", iRandom).putLong("account_number_time", System.currentTimeMillis()).apply();
                }
                View viewInflate = loginActivity.getLayoutInflater().inflate(R.layout.dialog_account_login, (ViewGroup) null);
                ((TextView) viewInflate.findViewById(R.id.tv_account_number)).setText(String.valueOf(iRandom));
                ((TextView) viewInflate.findViewById(R.id.tv_hint)).setText(loginActivity.getString(R.string.login_account_web_hint, Integer.valueOf(iRandom)));
                ((EditText) viewInflate.findViewById(R.id.et_username)).setText("game" + iRandom);
                EditText editText = (EditText) viewInflate.findViewById(R.id.et_password);
                O0.b bVar2 = new O0.b(loginActivity, 0);
                ((C0240b) bVar2.f4145c).f4112t = viewInflate;
                DialogInterfaceC0245g dialogInterfaceC0245gC = bVar2.c();
                Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
                Window window = dialogInterfaceC0245gC.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(android.R.color.transparent);
                }
                dialogInterfaceC0245gC.setCancelable(false);
                viewInflate.findViewById(R.id.btn_login).setOnClickListener(new ViewOnClickListenerC0124z1(editText, loginActivity, dialogInterfaceC0245gC, iRandom));
                viewInflate.findViewById(R.id.btn_get_password).setOnClickListener(new C1(loginActivity, 3));
                viewInflate.findViewById(R.id.btn_cancel).setOnClickListener(new ViewOnClickListenerC0075j(7, loginActivity, dialogInterfaceC0245gC));
                dialogInterfaceC0245gC.show();
                break;
            case 2:
                int i5 = LoginActivity.f3793l;
                Context applicationContext = loginActivity.getApplicationContext();
                String[] strArr = loginActivity.f3797j;
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNull(applicationContext);
                int iCoerceAtLeast = RangesKt.coerceAtLeast(ArraysKt___ArraysKt.indexOf((String[]) strArr, S1.d.d(applicationContext)), 0);
                LinearLayout linearLayout = new LinearLayout(loginActivity);
                linearLayout.setOrientation(1);
                linearLayout.setBackground(loginActivity.getDrawable(R.drawable.bg_dialog_account));
                linearLayout.setPadding(0, 8, 0, 8);
                PopupWindow popupWindow = new PopupWindow((View) linearLayout, -2, -2, true);
                popupWindow.setElevation(16.0f);
                String[] strArr2 = loginActivity.f3798k;
                int length = strArr2.length;
                int i6 = 0;
                int i7 = 0;
                while (i6 < length) {
                    String str = strArr2[i6];
                    int i8 = i7 + 1;
                    TextView textView = new TextView(loginActivity);
                    textView.setText(str);
                    textView.setTextSize(14.0f);
                    textView.setTextColor(loginActivity.getColor(i7 == iCoerceAtLeast ? R.color.accent : R.color.text_pri));
                    textView.setPadding(48, 26, 72, 26);
                    textView.setOnClickListener(new ViewOnClickListenerC0124z1(popupWindow, loginActivity, i7, applicationContext));
                    linearLayout.addView(textView);
                    i6++;
                    i7 = i8;
                }
                F.b bVar3 = loginActivity.f3794e;
                if (bVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    bVar = null;
                } else {
                    bVar = bVar3;
                }
                popupWindow.showAsDropDown((Button) bVar.f944d, 0, 6);
                break;
            default:
                int i9 = LoginActivity.f3793l;
                try {
                    loginActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://h-game18.xyz/get-password-new/")));
                } catch (Exception e2) {
                    Log.e("LoginActivity", "Cannot open password page", e2);
                }
                break;
        }
    }
}
