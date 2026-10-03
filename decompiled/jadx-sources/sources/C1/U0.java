package C1;

import V1.InterfaceC0207x;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.catalog.OnlineCatalogRepository;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class U0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Game f506d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U0(Game game, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f506d = game;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                U0 u2 = new U0(this.f506d, continuation, 0);
                u2.f505c = obj;
                return u2;
            default:
                U0 u3 = new U0(this.f506d, continuation, 1);
                u3.f505c = obj;
                return u3;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        InterfaceC0207x interfaceC0207x = (InterfaceC0207x) obj;
        Continuation continuation = (Continuation) obj2;
        switch (this.b) {
            case 0:
                break;
        }
        return ((U0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        int i3 = this.b;
        Game game = this.f506d;
        switch (i3) {
            case 0:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(new OnlineCatalogRepository(null, null, null, 7, null).fetchItem(game.getCatalogPostId()));
                    break;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    return null;
                }
                return objM9constructorimpl;
            default:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(new OnlineCatalogRepository(null, null, null, 7, null).fetchItem(game.getCatalogPostId()));
                    break;
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                    return null;
                }
                return objM9constructorimpl2;
        }
    }
}
