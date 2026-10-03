package C1;

import com.minhub.gamehub.hub.AddGameActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: C1.s, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0101s extends Lambda implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f677c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0101s(AddGameActivity addGameActivity, int i3) {
        super(0);
        this.b = i3;
        this.f677c = addGameActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return this.f677c.getViewModelStore();
            default:
                return this.f677c.getDefaultViewModelCreationExtras();
        }
    }
}
