package C1;

import com.minhub.gamehub.hub.HubActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: C1.m1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0086m1 extends Lambda implements Function0 {
    public final /* synthetic */ HubActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0086m1(HubActivity hubActivity) {
        super(0);
        this.b = hubActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return this.b.getDefaultViewModelProviderFactory();
    }
}
