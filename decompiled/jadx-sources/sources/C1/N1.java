package C1;

import V1.InterfaceC0207x;
import android.content.Context;
import android.widget.TextView;
import com.minhub.gamehub.data.GameRepository;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class N1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f477d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N1(int i3, Context context, Continuation continuation) {
        super(2, continuation);
        this.f477d = context;
        this.f476c = i3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new N1((OnlineGameDetailActivity) this.f477d, continuation);
            default:
                return new N1(this.f476c, this.f477d, continuation);
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
        return ((N1) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE;
        OnlineCatalogItem onlineCatalogItem;
        switch (this.b) {
            case 0:
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) this.f477d;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i3 = this.f476c;
                OnlineCatalogItem onlineCatalogItem2 = null;
                Object[] objArr = 0;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    M1 m2 = new M1(onlineGameDetailActivity, objArr == true ? 1 : 0, 1);
                    this.f476c = 1;
                    objE = V1.A.e(cVar, m2, this);
                    if (objE == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i3 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objE = obj;
                }
                OnlineCatalogItem onlineCatalogItem3 = (OnlineCatalogItem) objE;
                if (onlineCatalogItem3 != null && !StringsKt.isBlank(onlineCatalogItem3.getContentHtml())) {
                    OnlineCatalogItem onlineCatalogItem4 = onlineGameDetailActivity.f;
                    if (onlineCatalogItem4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("item");
                        onlineCatalogItem = null;
                    } else {
                        onlineCatalogItem = onlineCatalogItem4;
                    }
                    onlineGameDetailActivity.f = OnlineCatalogItem.copy$default(onlineCatalogItem, 0L, null, null, null, null, null, onlineCatalogItem3.getContentHtml(), null, null, null, null, null, null, null, null, null, null, 131007, null);
                    p058w1.f fVar = onlineGameDetailActivity.f3802e;
                    if (fVar == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                        fVar = null;
                    }
                    TextView textView = fVar.f5781x;
                    OnlineCatalogItem onlineCatalogItem5 = onlineGameDetailActivity.f;
                    if (onlineCatalogItem5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("item");
                    } else {
                        onlineCatalogItem2 = onlineCatalogItem5;
                    }
                    textView.setText(p000a.a.C(onlineCatalogItem2));
                }
                return Unit.INSTANCE;
            default:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                Context context = this.f477d;
                Intrinsics.checkNotNull(context);
                new GameRepository(context).addPlaytime(this.f476c, 0);
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N1(OnlineGameDetailActivity onlineGameDetailActivity, Continuation continuation) {
        super(2, continuation);
        this.f477d = onlineGameDetailActivity;
    }
}
