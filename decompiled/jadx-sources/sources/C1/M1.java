package C1;

import V1.InterfaceC0207x;
import android.content.Context;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.OnlineCatalogRepository;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ OnlineGameDetailActivity f471d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ M1(OnlineGameDetailActivity onlineGameDetailActivity, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f471d = onlineGameDetailActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                M1 m2 = new M1(this.f471d, continuation, 0);
                m2.f470c = obj;
                return m2;
            default:
                M1 m3 = new M1(this.f471d, continuation, 1);
                m3.f470c = obj;
                return m3;
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
        return ((M1) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        int i3 = this.b;
        OnlineGameDetailActivity onlineGameDetailActivity = this.f471d;
        OnlineCatalogItem onlineCatalogItem = null;
        switch (i3) {
            case 0:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Context applicationContext = onlineGameDetailActivity.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    OnlineCatalogItem onlineCatalogItem2 = onlineGameDetailActivity.f;
                    if (onlineCatalogItem2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("item");
                    } else {
                        onlineCatalogItem = onlineCatalogItem2;
                    }
                    objM9constructorimpl = Result.m9constructorimpl(Boxing.boxLong(OnlineCatalogImportSupportKt.importStreamGame(applicationContext, onlineCatalogItem)));
                    break;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                return Result.m12exceptionOrNullimpl(objM9constructorimpl) == null ? objM9constructorimpl : Boxing.boxLong(-1L);
            default:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    OnlineCatalogRepository onlineCatalogRepository = new OnlineCatalogRepository(null, null, null, 7, null);
                    OnlineCatalogItem onlineCatalogItem3 = onlineGameDetailActivity.f;
                    if (onlineCatalogItem3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("item");
                        onlineCatalogItem3 = null;
                    }
                    objM9constructorimpl2 = Result.m9constructorimpl(onlineCatalogRepository.fetchItem(onlineCatalogItem3.getPostId()));
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
