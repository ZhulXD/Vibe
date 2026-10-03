package C1;

import V1.InterfaceC0207x;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.TranslationOverlayResult;
import com.minhub.gamehub.hub.GameDetailActivity;
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
public final class V0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Game f512e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V0(GameDetailActivity gameDetailActivity, Game game, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f511d = gameDetailActivity;
        this.f512e = game;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new V0(this.f511d, this.f512e, continuation, 0);
            case 1:
                return new V0(this.f511d, this.f512e, continuation, 1);
            default:
                return new V0(this.f511d, this.f512e, continuation, 2);
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
        return ((V0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE;
        Object objE2;
        Object objE3;
        switch (this.b) {
            case 0:
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i3 = this.f510c;
                Game game = this.f512e;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    U0 u2 = new U0(game, null, 0);
                    this.f510c = 1;
                    objE = V1.A.e(cVar, u2, this);
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
                OnlineCatalogItem onlineCatalogItem = (OnlineCatalogItem) objE;
                if (onlineCatalogItem == null) {
                    return Unit.INSTANCE;
                }
                String strG = new p023i1.l().g(onlineCatalogItem.getTranslations());
                GameDetailActivity gameDetailActivity = this.f511d;
                Game game2 = gameDetailActivity.g;
                if (game2 == null) {
                    game2 = game;
                }
                if (Intrinsics.areEqual(strG, game2.getTranslationPackagesJson())) {
                    return Unit.INSTANCE;
                }
                Intrinsics.checkNotNull(strG);
                Game gameCopy$default = Game.copy$default(game2, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, strG, null, null, false, 0L, null, null, null, 133693439, null);
                gameDetailActivity.g = gameCopy$default;
                gameDetailActivity.q().a(gameCopy$default);
                com.bumptech.glide.d.d(gameDetailActivity, gameCopy$default);
                return Unit.INSTANCE;
            case 1:
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f510c;
                Game game3 = this.f512e;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar2 = V1.H.b;
                    U0 u3 = new U0(game3, null, 1);
                    this.f510c = 1;
                    objE2 = V1.A.e(cVar2, u3, this);
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
                OnlineCatalogItem onlineCatalogItem2 = (OnlineCatalogItem) objE2;
                GameDetailActivity gameDetailActivity2 = this.f511d;
                gameDetailActivity2.n().f5738j.setEnabled(true);
                if (onlineCatalogItem2 == null) {
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.game_detail_translation_refresh_failed), 0).show();
                    return Unit.INSTANCE;
                }
                String strG2 = new p023i1.l().g(onlineCatalogItem2.getTranslations());
                Game game4 = gameDetailActivity2.g;
                Game game5 = game4 == null ? game3 : game4;
                if (Intrinsics.areEqual(strG2, game5.getTranslationPackagesJson())) {
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.game_detail_translation_refresh_no_change), 0).show();
                    return Unit.INSTANCE;
                }
                Intrinsics.checkNotNull(strG2);
                Game gameCopy$default2 = Game.copy$default(game5, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, strG2, null, null, false, 0L, null, null, null, 133693439, null);
                gameDetailActivity2.g = gameCopy$default2;
                gameDetailActivity2.q().a(gameCopy$default2);
                gameDetailActivity2.f3772p = gameCopy$default2.getId();
                com.bumptech.glide.d.d(gameDetailActivity2, gameCopy$default2);
                Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.game_detail_translation_refresh_updated), 0).show();
                return Unit.INSTANCE;
            default:
                Object coroutine_suspended3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i5 = this.f510c;
                Game game6 = this.f512e;
                GameDetailActivity gameDetailActivity3 = this.f511d;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar3 = V1.H.b;
                    C0099r0 c0099r0 = new C0099r0(gameDetailActivity3, game6, null, 1);
                    this.f510c = 1;
                    objE3 = V1.A.e(cVar3, c0099r0, this);
                    if (objE3 == coroutine_suspended3) {
                        return coroutine_suspended3;
                    }
                } else {
                    if (i5 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objE3 = obj;
                }
                TranslationOverlayResult translationOverlayResult = (TranslationOverlayResult) objE3;
                gameDetailActivity3.f3769m = false;
                Intrinsics.checkNotNullParameter("", "<set-?>");
                gameDetailActivity3.f3770n = "";
                if (translationOverlayResult.getSuccess()) {
                    Game game7 = gameDetailActivity3.g;
                    Game gameCopy$default3 = Game.copy$default(game7 == null ? game6 : game7, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, "", "", false, 0L, null, null, null, 131071999, null);
                    gameDetailActivity3.g = gameCopy$default3;
                    gameDetailActivity3.q().a(gameCopy$default3);
                    com.bumptech.glide.d.d(gameDetailActivity3, gameCopy$default3);
                    Toast.makeText(gameDetailActivity3, gameDetailActivity3.getString(R.string.game_detail_translation_restore_success), 1).show();
                } else {
                    Game game8 = gameDetailActivity3.g;
                    if (game8 != null) {
                        game6 = game8;
                    }
                    com.bumptech.glide.d.d(gameDetailActivity3, game6);
                    String message = translationOverlayResult.getMessage();
                    if (StringsKt.isBlank(message)) {
                        message = gameDetailActivity3.getString(R.string.download_status_failed_generic);
                        Intrinsics.checkNotNullExpressionValue(message, "getString(...)");
                    }
                    Toast.makeText(gameDetailActivity3, gameDetailActivity3.getString(R.string.game_detail_translation_restore_failed, message), 1).show();
                }
                return Unit.INSTANCE;
        }
    }
}
