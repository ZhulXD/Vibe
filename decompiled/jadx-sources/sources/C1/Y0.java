package C1;

import V1.InterfaceC0207x;
import com.minhub.gamehub.data.Game;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Y0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Z0 f534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Game f535d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Y0(Z0 z2, Game game, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f534c = z2;
        this.f535d = game;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new Y0(this.f534c, this.f535d, continuation, 0);
            case 1:
                return new Y0(this.f534c, this.f535d, continuation, 1);
            default:
                return new Y0(this.f534c, this.f535d, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        InterfaceC0207x interfaceC0207x = (InterfaceC0207x) obj;
        Continuation continuation = (Continuation) obj2;
        switch (this.b) {
            case 0:
                break;
            case 1:
                break;
        }
        return ((Y0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i3 = this.b;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (i3) {
            case 0:
                ResultKt.throwOnFailure(obj);
                this.f534c.f542a.delete(this.f535d);
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                this.f534c.f542a.toggleFavorite(this.f535d);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                this.f534c.f542a.update(this.f535d);
                break;
        }
        return Unit.INSTANCE;
    }
}
