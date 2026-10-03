package C1;

import com.minhub.gamehub.hub.HubActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: C1.n1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0089n1 extends Lambda implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HubActivity f658c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0089n1(HubActivity hubActivity, int i3) {
        super(0);
        this.b = i3;
        this.f658c = hubActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return this.f658c.getViewModelStore();
            default:
                return this.f658c.getDefaultViewModelCreationExtras();
        }
    }
}
