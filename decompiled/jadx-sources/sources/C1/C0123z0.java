package C1;

import com.minhub.gamehub.hub.GameDetailActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: C1.z0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0123z0 extends Lambda implements Function0 {
    public final /* synthetic */ GameDetailActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0123z0(GameDetailActivity gameDetailActivity) {
        super(0);
        this.b = gameDetailActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return this.b.getDefaultViewModelProviderFactory();
    }
}
