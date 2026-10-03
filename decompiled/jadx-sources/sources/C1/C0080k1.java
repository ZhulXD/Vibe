package C1;

import V1.InterfaceC0207x;
import android.widget.Toast;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: C1.k1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0080k1 extends SuspendLambda implements Function2 {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HubActivity f634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f635d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0080k1(HubActivity hubActivity, long j2, Continuation continuation) {
        super(2, continuation);
        this.f634c = hubActivity;
        this.f635d = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0080k1(this.f634c, this.f635d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0080k1) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.b;
        long j2 = this.f635d;
        HubActivity hubActivity = this.f634c;
        try {
            if (i3 == 0) {
                ResultKt.throwOnFailure(obj);
                c2.c cVar = V1.H.b;
                C0077j1 c0077j1 = new C0077j1(j2, null);
                this.b = 1;
                obj = V1.A.e(cVar, c0077j1, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            OnlineCatalogItem onlineCatalogItem = (OnlineCatalogItem) obj;
            if (onlineCatalogItem != null) {
                int i4 = OnlineGameDetailActivity.f3801i;
                hubActivity.startActivity(com.bumptech.glide.d.l(hubActivity, onlineCatalogItem));
            } else {
                Toast.makeText(hubActivity, "Game not found (ID: " + j2 + ")", 1).show();
            }
        } catch (Exception e2) {
            Toast.makeText(hubActivity, "Cannot load game: " + e2.getMessage(), 1).show();
        }
        return Unit.INSTANCE;
    }
}
