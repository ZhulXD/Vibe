package com.minhub.gamehub.hub.auth;

import A1.C0029l;
import C1.ViewOnClickListenerC0075j;
import C1.ViewOnClickListenerC0122z;
import O0.b;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.minhub.gamehub.R;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003Js\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;", "", "<init>", "()V", "Landroid/app/Activity;", "activity", "Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;", "kind", "", "title", "message", "primaryText", "neutralText", "Lkotlin/Function0;", "", "onNeutral", "", "cancelable", "onPrimary", "Le/g;", "show", "(Landroid/app/Activity;Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;)Le/g;", "errorName", "showConnectionError", "(Landroid/app/Activity;Ljava/lang/String;)Le/g;", "Kind", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLoginAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAlertDialog.kt\ncom/minhub/gamehub/hub/auth/LoginAlertDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"})
public final class LoginAlertDialog {
    public static final LoginAlertDialog INSTANCE = new LoginAlertDialog();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;", "", "<init>", "(Ljava/lang/String;I)V", "ERROR", "SUCCESS", "INFO", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public enum Kind {
        ERROR,
        SUCCESS,
        INFO;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<Kind> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Kind.values().length];
            try {
                iArr[Kind.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Kind.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Kind.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private LoginAlertDialog() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DialogInterfaceC0245g show$default(LoginAlertDialog loginAlertDialog, Activity activity, Kind kind, String str, String str2, String str3, String str4, Function0 function0, boolean z2, Function0 function1, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            str3 = null;
        }
        if ((i3 & 32) != 0) {
            str4 = null;
        }
        if ((i3 & 64) != 0) {
            function0 = null;
        }
        if ((i3 & 128) != 0) {
            z2 = true;
        }
        if ((i3 & 256) != 0) {
            function1 = null;
        }
        return loginAlertDialog.show(activity, kind, str, str2, str3, str4, function0, z2, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$1$lambda$0(DialogInterfaceC0245g dialogInterfaceC0245g, Function0 function0, View view) {
        dialogInterfaceC0245g.dismiss();
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$2(DialogInterfaceC0245g dialogInterfaceC0245g, Function0 function0, View view) {
        dialogInterfaceC0245g.dismiss();
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence showConnectionError$lambda$4(Activity activity, int i3) {
        String string = activity.getString(i3);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConnectionError$lambda$5(Activity activity, String str, View view) {
        Object systemService = activity.getSystemService("clipboard");
        ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(ClipData.newPlainText("MinHub login error", str));
        }
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) view).setText(activity.getString(R.string.login_conn_error_copied));
    }

    public final DialogInterfaceC0245g show(Activity activity, Kind kind, String title, String message, String primaryText, String neutralText, final Function0<Unit> onNeutral, boolean cancelable, final Function0<Unit> onPrimary) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_login_alert, (ViewGroup) null);
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.badge_container);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_badge_icon);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_alert_label);
        int i3 = WhenMappings.$EnumSwitchMapping$0[kind.ordinal()];
        if (i3 == 1) {
            frameLayout.setBackgroundResource(R.drawable.bg_badge_success);
            textView.setText("✓");
            textView2.setTextColor(-14498466);
        } else if (i3 == 2) {
            textView.setText("!");
        } else {
            if (i3 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            textView.setText("i");
        }
        ((TextView) viewInflate.findViewById(R.id.tv_alert_title)).setText(title);
        ((TextView) viewInflate.findViewById(R.id.tv_alert_message)).setText(message);
        b bVar = new b(activity, 0);
        ((C0240b) bVar.f4145c).f4112t = viewInflate;
        final DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
        Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
        Window window = dialogInterfaceC0245gC.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        dialogInterfaceC0245gC.setCancelable(cancelable);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.btn_alert_primary);
        if (primaryText != null && !StringsKt.isBlank(primaryText)) {
            textView3.setText(primaryText);
        }
        final int i4 = 0;
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.minhub.gamehub.hub.auth.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        LoginAlertDialog.show$lambda$1$lambda$0(dialogInterfaceC0245gC, onPrimary, view);
                        break;
                    default:
                        LoginAlertDialog.show$lambda$2(dialogInterfaceC0245gC, onPrimary, view);
                        break;
                }
            }
        });
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.btn_alert_neutral);
        if (neutralText != null && !StringsKt.isBlank(neutralText)) {
            textView4.setVisibility(0);
            textView4.setText(neutralText);
            final int i5 = 1;
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.minhub.gamehub.hub.auth.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i5) {
                        case 0:
                            LoginAlertDialog.show$lambda$1$lambda$0(dialogInterfaceC0245gC, onNeutral, view);
                            break;
                        default:
                            LoginAlertDialog.show$lambda$2(dialogInterfaceC0245gC, onNeutral, view);
                            break;
                    }
                }
            });
        }
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            dialogInterfaceC0245gC.show();
        }
        return dialogInterfaceC0245gC;
    }

    public final DialogInterfaceC0245g showConnectionError(Activity activity, String errorName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(errorName, "errorName");
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_login_conn_error, (ViewGroup) null);
        String string = StringsKt.trim((CharSequence) errorName).toString();
        if (StringsKt.isBlank(string)) {
            string = "Unknown error";
        }
        ((TextView) viewInflate.findViewById(R.id.tv_conn_error_name)).setText(string);
        ((TextView) viewInflate.findViewById(R.id.tv_conn_error_tips)).setText(CollectionsKt.o(CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.login_conn_error_tip1), Integer.valueOf(R.string.login_conn_error_tip2), Integer.valueOf(R.string.login_conn_error_tip3)}), "\n", null, null, new C0029l(activity, 2), 30));
        b bVar = new b(activity, 0);
        ((C0240b) bVar.f4145c).f4112t = viewInflate;
        DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
        Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
        Window window = dialogInterfaceC0245gC.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        ((TextView) viewInflate.findViewById(R.id.btn_conn_error_copy)).setOnClickListener(new ViewOnClickListenerC0075j(21, activity, string));
        ((TextView) viewInflate.findViewById(R.id.btn_conn_error_close)).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 7));
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            dialogInterfaceC0245gC.show();
        }
        return dialogInterfaceC0245gC;
    }
}
