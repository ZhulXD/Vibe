package C1;

import com.minhub.gamehub.hub.GameDetailActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H0 implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f438c;

    public /* synthetic */ H0(GameDetailActivity gameDetailActivity, int i3) {
        this.b = i3;
        this.f438c = gameDetailActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(S1.d.p(this.f438c));
            case 1:
                com.bumptech.glide.c.V(this.f438c);
                return Unit.INSTANCE;
            default:
                P.G g = this.f438c.f3775s;
                if (g != null) {
                    return g;
                }
                Intrinsics.throwUninitializedPropertyAccessException("pluginTouchHelper");
                return null;
        }
    }
}
