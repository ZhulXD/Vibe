package C1;

import android.widget.Toast;
import com.minhub.gamehub.hub.AppLockActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class X extends com.bumptech.glide.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppLockActivity f525c;

    public X(AppLockActivity appLockActivity) {
        this.f525c = appLockActivity;
    }

    @Override // com.bumptech.glide.c
    public final void A(androidx.biometric.s result) {
        Intrinsics.checkNotNullParameter(result, "result");
        AppLockActivity appLockActivity = this.f525c;
        V1 v2 = appLockActivity.f;
        if (v2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
            v2 = null;
        }
        v2.g(new W(appLockActivity, 4));
    }

    @Override // com.bumptech.glide.c
    public final void z(int i3, CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (i3 == 10 || i3 == 13) {
            return;
        }
        Toast.makeText(this.f525c, msg, 0).show();
    }
}
