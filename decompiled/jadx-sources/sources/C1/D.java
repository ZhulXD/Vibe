package C1;

import com.minhub.gamehub.hub.AddGameActivity;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class D implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Serializable f404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f405e;

    public /* synthetic */ D(Serializable serializable, Object obj, int i3, int i4) {
        this.b = i4;
        this.f404d = serializable;
        this.f405e = obj;
        this.f403c = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                Ref.IntRef intRef = (Ref.IntRef) this.f404d;
                AddGameActivity addGameActivity = (AddGameActivity) this.f405e;
                intRef.element++;
                addGameActivity.f.post(new H(addGameActivity, intRef, this.f403c, 0));
                break;
            default:
                Ref.ObjectRef objectRef = (Ref.ObjectRef) this.f404d;
                Function1 function1 = (Function1) this.f405e;
                DialogInterfaceC0245g dialogInterfaceC0245g = (DialogInterfaceC0245g) objectRef.element;
                if (dialogInterfaceC0245g != null) {
                    dialogInterfaceC0245g.dismiss();
                }
                function1.invoke(Integer.valueOf(this.f403c));
                break;
        }
        return Unit.INSTANCE;
    }
}
