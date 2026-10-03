package org.godotengine.godot.utils;

import A1.C0033n;
import A1.C0036q;
import C1.E;
import C1.I1;
import C1.O1;
import C1.RunnableC0087n;
import C1.ViewOnClickListenerC0075j;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/godotengine/godot/utils/DialogUtils;", "", "<init>", "()V", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DialogUtils {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "DialogUtils";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0083 J\u0011\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0005H\u0083 J5\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J-\u0010\u0016\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0018J>\u0010\u0019\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u001eJ\u0018\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lorg/godotengine/godot/utils/DialogUtils$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "dialogCallback", "", "buttonIndex", "", "inputDialogCallback", "text", "showDialog", "activity", "Landroid/app/Activity;", "title", "message", "buttons", "", "showDialog$lib_templateRelease", "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "showInputDialog", "existingText", "showInputDialog$lib_templateRelease", "showSnackbar", "duration", "", "actionText", "action", "Lkotlin/Function0;", "addSwipeToDismiss", "view", "Landroid/view/View;", "popupWindow", "Landroid/widget/PopupWindow;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDialogUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogUtils.kt\norg/godotengine/godot/utils/DialogUtils$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,284:1\n13537#2,3:285\n*S KotlinDebug\n*F\n+ 1 DialogUtils.kt\norg/godotengine/godot/utils/DialogUtils$Companion\n*L\n112#1:285,3\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void addSwipeToDismiss(View view, PopupWindow popupWindow) {
            view.setOnTouchListener(new DialogUtils$Companion$addSwipeToDismiss$1(view, popupWindow));
        }

        @JvmStatic
        private final void dialogCallback(int buttonIndex) {
            DialogUtils.dialogCallback(buttonIndex);
        }

        @JvmStatic
        private final void inputDialogCallback(String text) {
            DialogUtils.inputDialogCallback(text);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Type inference failed for: r1v1, types: [A1.n, T] */
        public static final void showDialog$lambda$4(Activity activity, String str, String str2, String[] strArr, Ref.ObjectRef objectRef) {
            char c3;
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setTitle(str);
            builder.setMessage(str2);
            int dimensionPixelSize = activity.getResources().getDimensionPixelSize(R.dimen.button_height);
            int dimensionPixelSize2 = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_horizontal);
            int dimensionPixelSize3 = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_vertical);
            int dimensionPixelSize4 = activity.getResources().getDimensionPixelSize(R.dimen.button_padding);
            LinearLayout linearLayout = new LinearLayout(activity);
            boolean z2 = true;
            linearLayout.setOrientation(1);
            linearLayout.setPadding(dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize2, dimensionPixelSize3);
            LinearLayout linearLayout2 = new LinearLayout(activity);
            int i3 = 0;
            linearLayout2.setOrientation(0);
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            int i4 = (activity.getResources().getDisplayMetrics().widthPixels - (dimensionPixelSize2 * 2)) / 2;
            int length = strArr.length;
            int i5 = 0;
            int i6 = 0;
            while (i5 < length) {
                String str3 = strArr[i5];
                int i7 = i6 + 1;
                Button button = new Button(activity);
                button.setText(str3);
                button.setSingleLine(z2);
                button.setPadding(dimensionPixelSize4, dimensionPixelSize4, dimensionPixelSize4, dimensionPixelSize4);
                button.measure(i3, i3);
                int measuredWidth = button.getMeasuredWidth();
                boolean z3 = z2;
                if (measuredWidth > i4) {
                    i3 = -1;
                }
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, dimensionPixelSize);
                layoutParams.weight = measuredWidth > i4 ? 0.0f : 1.0f;
                button.setLayoutParams(layoutParams);
                if (measuredWidth > i4) {
                    if (linearLayout2.getChildCount() > 0) {
                        linearLayout.addView(linearLayout2);
                        linearLayout2 = new LinearLayout(activity);
                        linearLayout2.setOrientation(0);
                    }
                    linearLayout.addView(button);
                    c3 = 2;
                } else {
                    linearLayout2.addView(button);
                    c3 = 2;
                    if (linearLayout2.getChildCount() == 2) {
                        linearLayout.addView(linearLayout2);
                        linearLayout2 = new LinearLayout(activity);
                        linearLayout2.setOrientation(0);
                    }
                    if (i6 == strArr.length - 1 && linearLayout2.getChildCount() > 0) {
                        linearLayout.addView(linearLayout2);
                    }
                }
                button.setOnClickListener(new O1(i6, objectRef));
                i5++;
                i6 = i7;
                z2 = z3;
                i3 = 0;
            }
            builder.setView(linearLayout);
            AlertDialog alertDialogCreate = builder.create();
            objectRef.element = new C0033n(14, alertDialogCreate);
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showDialog$lambda$4$lambda$2$lambda$1(int i3, Ref.ObjectRef objectRef, View view) {
            DialogUtils.INSTANCE.dialogCallback(i3);
            ((Function0) objectRef.element).invoke();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit showDialog$lambda$4$lambda$3(AlertDialog alertDialog) {
            alertDialog.dismiss();
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showInputDialog$lambda$6(Activity activity, String str, String str2, EditText editText) {
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setMessage(str).setTitle(str2).setView(editText);
            builder.setPositiveButton(R.string.dialog_ok, new I1(1, editText));
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showInputDialog$lambda$6$lambda$5(EditText editText, DialogInterface dialog, int i3) {
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            DialogUtils.INSTANCE.inputDialogCallback(editText.getText().toString());
            dialog.dismiss();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void showSnackbar$default(Companion companion, Activity activity, String str, long j2, String str2, Function0 function0, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                j2 = 3000;
            }
            companion.showSnackbar(activity, str, j2, (i3 & 8) != 0 ? null : str2, (i3 & 16) != 0 ? null : function0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showSnackbar$lambda$9(Activity activity, String str, String str2, Function0 function0, long j2) {
            int dimensionPixelSize = activity.getResources().getDimensionPixelSize(R.dimen.snackbar_bottom_margin);
            View viewInflate = LayoutInflater.from(activity).inflate(R.layout.snackbar, (ViewGroup) null);
            PopupWindow popupWindow = new PopupWindow(viewInflate, -1, -2);
            ((TextView) viewInflate.findViewById(R.id.snackbar_text)).setText(str);
            Button button = (Button) viewInflate.findViewById(R.id.snackbar_action);
            if (str2 == null || function0 == null) {
                button.setVisibility(8);
            } else {
                button.setText(str2);
                button.setVisibility(0);
                button.setOnClickListener(new ViewOnClickListenerC0075j(22, function0, popupWindow));
            }
            Companion companion = DialogUtils.INSTANCE;
            Intrinsics.checkNotNull(viewInflate);
            companion.addSwipeToDismiss(viewInflate, popupWindow);
            popupWindow.showAtLocation(viewInflate, 80, 0, dimensionPixelSize);
            new Handler(Looper.getMainLooper()).postDelayed(new a(popupWindow, 0), j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showSnackbar$lambda$9$lambda$7(Function0 function0, PopupWindow popupWindow, View view) {
            function0.invoke();
            popupWindow.dismiss();
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [A1.q, T] */
        public final void showDialog$lib_templateRelease(Activity activity, String title, String message, String[] buttons) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(buttons, "buttons");
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new C0036q(17);
            activity.runOnUiThread(new E(activity, title, message, buttons, objectRef, 2));
        }

        public final void showInputDialog$lib_templateRelease(Activity activity, String title, String message, String existingText) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(existingText, "existingText");
            EditText editText = new EditText(activity);
            int dimensionPixelSize = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_horizontal);
            int dimensionPixelSize2 = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_vertical);
            editText.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2);
            editText.setText(existingText);
            activity.runOnUiThread(new RunnableC0087n(5, activity, message, title, editText));
        }

        public final void showSnackbar(final Activity activity, final String message, final long duration, final String actionText, final Function0<Unit> action) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(message, "message");
            activity.runOnUiThread(new Runnable() { // from class: org.godotengine.godot.utils.b
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUtils.Companion.showSnackbar$lambda$9(activity, message, actionText, action, duration);
                }
            });
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void dialogCallback(int i3);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void inputDialogCallback(String str);
}
