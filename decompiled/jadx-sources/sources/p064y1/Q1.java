package p064y1;

import com.minhub.gamehub.game.SplashGameActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Q1 extends Lambda implements Function0 {
    public final /* synthetic */ SplashGameActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q1(SplashGameActivity splashGameActivity) {
        super(0);
        this.b = splashGameActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return this.b.getDefaultViewModelProviderFactory();
    }
}
