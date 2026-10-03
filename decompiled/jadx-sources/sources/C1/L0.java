package C1;

import V1.InterfaceC0207x;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.io.File;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class L0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Game f464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f465e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ L0(Object obj, Object obj2, Game game, Object obj3, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f465e = obj;
        this.f = obj2;
        this.f464d = game;
        this.g = obj3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new L0((File) this.f465e, (X1) this.f, this.f464d, (GameDetailActivity) this.g, continuation, 0);
            default:
                return new L0((GameActivity) this.f465e, (Q1.d) this.f, this.f464d, (G1.s) this.g, continuation, 1);
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
        return ((L0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE;
        Object objE2;
        switch (this.b) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) this.g;
                Game game = this.f464d;
                X1 x2 = (X1) this.f;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i3 = this.f463c;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    K0 k2 = new K0((File) this.f465e, x2, game, null);
                    this.f463c = 1;
                    objE = V1.A.e(cVar, k2, this);
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
                Object value = ((Result) objE).getValue();
                File file = (File) this.f465e;
                if (Result.m16isSuccessimpl(value)) {
                    Game game2 = (Game) value;
                    int id = game2.getId();
                    List list = x2.f529d;
                    gameDetailActivity.f3773q = new X1(id, file, list, list, null, gameDetailActivity.getString(R.string.game_detail_plugins_saved), 16);
                    gameDetailActivity.g = game2;
                    gameDetailActivity.q().a(game2);
                    X1 x3 = gameDetailActivity.f3773q;
                    if (x3 != null) {
                        com.bumptech.glide.c.G(gameDetailActivity, game2, x3);
                        Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.game_detail_plugins_saved), 0).show();
                    }
                }
                if (Result.m12exceptionOrNullimpl(value) != null) {
                    X1 x4 = gameDetailActivity.f3773q;
                    if (x4 != null) {
                        x2 = x4;
                    }
                    X1 x1A = X1.a(x2, null, gameDetailActivity.getString(R.string.game_detail_plugins_save_failed), 31);
                    gameDetailActivity.f3773q = x1A;
                    com.bumptech.glide.c.G(gameDetailActivity, game, x1A);
                    Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.game_detail_plugins_save_failed), 0).show();
                }
                return Unit.INSTANCE;
            default:
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f463c;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar2 = V1.H.b;
                    T0 t2 = new T0(this.f464d, (G1.s) this.g, null);
                    this.f463c = 1;
                    objE2 = V1.A.e(cVar2, t2, this);
                    if (objE2 == coroutine_suspended2) {
                        return coroutine_suspended2;
                    }
                } else {
                    if (i4 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objE2 = obj;
                }
                H1.b bVar = (H1.b) objE2;
                if (((GameActivity) this.f465e).y((Q1.d) this.f)) {
                    Q1.d dVar = (Q1.d) this.f;
                    synchronized (dVar) {
                        if (dVar.f1850c) {
                            dVar.b = bVar;
                        }
                        break;
                    }
                }
                return Unit.INSTANCE;
        }
    }
}
