package p064y1;

import android.content.Intent;
import androidx.fragment.app.FragmentActivity;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0 implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f6041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6042d;

    public /* synthetic */ C0(FragmentActivity fragmentActivity, int i3, int i4) {
        this.b = i4;
        this.f6041c = fragmentActivity;
        this.f6042d = i3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        int i4 = this.f6042d;
        FragmentActivity fragmentActivity = this.f6041c;
        switch (i3) {
            case 0:
                int i5 = GodotGameActivity.f3707q;
                ((GodotGameActivity) fragmentActivity).s(0, i4);
                break;
            case 1:
                int i6 = GodotGameActivity.f3707q;
                ((GodotGameActivity) fragmentActivity).s(1, i4);
                break;
            default:
                KiriKiriInstallActivity kiriKiriInstallActivity = (KiriKiriInstallActivity) fragmentActivity;
                int i7 = KiriKiriInstallActivity.f3784o;
                Intent intentPutExtra = new Intent(kiriKiriInstallActivity, (Class<?>) GameDetailActivity.class).putExtra("game_id", i4);
                Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
                kiriKiriInstallActivity.p(intentPutExtra);
                break;
        }
        return Unit.INSTANCE;
    }
}
