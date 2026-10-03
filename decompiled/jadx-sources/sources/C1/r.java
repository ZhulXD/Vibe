package C1;

import com.minhub.gamehub.hub.AddGameActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r extends Lambda implements Function0 {
    public final /* synthetic */ AddGameActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(AddGameActivity addGameActivity) {
        super(0);
        this.b = addGameActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return this.b.getDefaultViewModelProviderFactory();
    }
}
