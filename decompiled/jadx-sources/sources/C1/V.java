package C1;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.KiriKiriGameActivity;
import com.minhub.gamehub.hub.AppLockActivity;
import com.minhub.gamehub.hub.ImageViewerActivity;
import com.minhub.gamehub.hub.OnlineDownloadsActivity;
import com.minhub.gamehub.hub.SettingsActivity;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import p064y1.AbstractC0371f;
import p064y1.C0368e;
import p064y1.EnumC0359b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class V implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f509c;

    public /* synthetic */ V(int i3, Object obj) {
        this.b = i3;
        this.f509c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        V1 v2 = null;
        Object obj = this.f509c;
        switch (i3) {
            case 0:
                AppLockActivity appLockActivity = (AppLockActivity) obj;
                V1 v3 = appLockActivity.f;
                if (v3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("ui");
                } else {
                    v2 = v3;
                }
                if (v2.f) {
                    return;
                }
                appLockActivity.m();
                return;
            case 1:
                int i4 = ImageViewerActivity.f3783e;
                ((ImageViewerActivity) obj).finish();
                return;
            case 2:
                int i5 = OnlineDownloadsActivity.f3799h;
                ((OnlineDownloadsActivity) obj).finish();
                return;
            case 3:
                int i6 = SettingsActivity.f;
                ((SettingsActivity) obj).finish();
                return;
            case 4:
                ((com.google.android.material.datepicker.n) obj).b();
                throw null;
            case 5:
                p010d1.d dVar = (p010d1.d) obj;
                EditText editText = dVar.f3881i;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                dVar.p();
                return;
            case 6:
                ((p010d1.i) obj).t();
                return;
            case 7:
                p010d1.v vVar = (p010d1.v) obj;
                EditText editText2 = vVar.f;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = vVar.f;
                if (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    vVar.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                } else {
                    vVar.f.setTransformationMethod(null);
                }
                if (selectionEnd >= 0) {
                    vVar.f.setSelection(selectionEnd);
                }
                vVar.p();
                return;
            case 8:
                N1.w wVar = (N1.w) obj;
                List list = AbstractC0371f.f6224a;
                C0368e c0368eA = AbstractC0371f.a(EnumC0359b.f);
                if (c0368eA == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA2 = AbstractC0371f.a(EnumC0359b.g);
                if (c0368eA2 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA3 = AbstractC0371f.a(EnumC0359b.f6185h);
                if (c0368eA3 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA4 = AbstractC0371f.a(EnumC0359b.f6186i);
                if (c0368eA4 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA5 = AbstractC0371f.a(EnumC0359b.f6187j);
                if (c0368eA5 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA6 = AbstractC0371f.a(EnumC0359b.f6188k);
                if (c0368eA6 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA7 = AbstractC0371f.a(EnumC0359b.f6189l);
                if (c0368eA7 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                wVar.e(CollectionsKt.listOf((Object[]) new C0368e[]{c0368eA, c0368eA2, c0368eA3, c0368eA4, c0368eA5, c0368eA6, c0368eA7}), false);
                return;
            case 9:
                ((D) obj).invoke();
                return;
            case 10:
                KiriKiriGameActivity kiriKiriGameActivity = (KiriKiriGameActivity) obj;
                int i7 = KiriKiriGameActivity.f3720e;
                View viewInflate = kiriKiriGameActivity.getLayoutInflater().inflate(R.layout.dialog_kiri_exit, (ViewGroup) null);
                Dialog dialog = new Dialog(kiriKiriGameActivity);
                dialog.requestWindowFeature(1);
                dialog.setContentView(viewInflate);
                viewInflate.findViewById(R.id.btn_kiri_exit_cancel).setOnClickListener(new V(11, dialog));
                viewInflate.findViewById(R.id.btn_kiri_exit_confirm).setOnClickListener(new p064y1.M0(2, dialog, kiriKiriGameActivity));
                Window window = dialog.getWindow();
                if (window != null) {
                    window.setBackgroundDrawable(new ColorDrawable(0));
                    window.setLayout(Math.min((int) (kiriKiriGameActivity.getResources().getDisplayMetrics().widthPixels * 0.9f), (int) (360 * kiriKiriGameActivity.getResources().getDisplayMetrics().density)), -2);
                }
                dialog.show();
                return;
            default:
                int i8 = KiriKiriGameActivity.f3720e;
                ((Dialog) obj).dismiss();
                return;
        }
    }
}
