package C1;

import V1.InterfaceC0207x;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.GameDetailActivity;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import p011e.C0240b;

/* JADX INFO: renamed from: C1.v0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0111v0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f699d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Game f700e;
    public final /* synthetic */ Context f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0111v0(GameDetailActivity gameDetailActivity, Context context, Game game, Continuation continuation) {
        super(2, continuation);
        String str = G1.g.f997a;
        this.f699d = gameDetailActivity;
        this.f = context;
        this.f700e = game;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i3 = this.b;
        Context context = this.f;
        Game game = this.f700e;
        GameDetailActivity gameDetailActivity = this.f699d;
        switch (i3) {
            case 0:
                String str = G1.g.f997a;
                return new C0111v0(gameDetailActivity, context, game, continuation);
            default:
                String str2 = G1.g.f997a;
                return new C0111v0(gameDetailActivity, game, context, continuation);
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
        return ((C0111v0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i3 = this.b;
        final GameDetailActivity gameDetailActivity = this.f699d;
        final Game game = this.f700e;
        final Context context = this.f;
        switch (i3) {
            case 0:
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f698c;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    String str = G1.g.f997a;
                    C0108u0 c0108u0 = new C0108u0(context, game, null, 0);
                    this.f698c = 1;
                    obj = V1.A.e(cVar, c0108u0, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i4 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                gameDetailActivity.n().f5735e.setEnabled(true);
                if (!gameDetailActivity.isFinishing() && !gameDetailActivity.isDestroyed()) {
                    Toast.makeText(gameDetailActivity, zBooleanValue ? R.string.game_patch_done : R.string.game_patch_failed, 1).show();
                }
                return Unit.INSTANCE;
            default:
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i5 = this.f698c;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar2 = V1.H.b;
                    String str2 = G1.g.f997a;
                    C0108u0 c0108u1 = new C0108u0(context, game, null, 1);
                    this.f698c = 1;
                    obj = V1.A.e(cVar2, c0108u1, this);
                    if (obj == coroutine_suspended2) {
                        return coroutine_suspended2;
                    }
                } else {
                    if (i5 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                G1.e eVar = (G1.e) obj;
                final G1.b bVar = eVar instanceof G1.b ? (G1.b) eVar : null;
                if (bVar == null || bVar.b || gameDetailActivity.isFinishing() || gameDetailActivity.isDestroyed()) {
                    gameDetailActivity.n().f5735e.setEnabled(true);
                    return Unit.INSTANCE;
                }
                O0.b bVar2 = new O0.b(gameDetailActivity, 0);
                C0240b c0240b = (C0240b) bVar2.f4145c;
                bVar2.j(R.string.game_patch_title);
                c0240b.f = gameDetailActivity.getString(R.string.game_patch_message, game.getTitle(), bVar.f993a);
                String str3 = G1.g.f997a;
                bVar2.h(R.string.game_patch_download, new DialogInterfaceOnClickListenerC0102s0(gameDetailActivity, context, game));
                bVar2.f(R.string.ota_update_cancel, new DialogInterface.OnClickListener() { // from class: C1.t0
                    {
                        String str4 = G1.g.f997a;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        String str4 = G1.g.f997a;
                        Context ctx = context;
                        Intrinsics.checkNotNull(ctx);
                        long catalogPostId = game.getCatalogPostId();
                        String version = bVar.f993a;
                        Intrinsics.checkNotNullParameter(ctx, "ctx");
                        Intrinsics.checkNotNullParameter(version, "version");
                        ctx.getSharedPreferences(G1.g.f997a, 0).edit().putString("declined_" + catalogPostId, version).apply();
                        gameDetailActivity.n().f5735e.setEnabled(true);
                        dialogInterface.dismiss();
                    }
                });
                c0240b.f4105m = false;
                bVar2.e();
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0111v0(GameDetailActivity gameDetailActivity, Game game, Context context, Continuation continuation) {
        super(2, continuation);
        String str = G1.g.f997a;
        this.f699d = gameDetailActivity;
        this.f700e = game;
        this.f = context;
    }
}
