package C1;

import V1.InterfaceC0207x;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.TranslationOverlayInstaller;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.io.File;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: C1.r0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0099r0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Game f675d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0099r0(GameDetailActivity gameDetailActivity, Game game, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f674c = gameDetailActivity;
        this.f675d = game;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new C0099r0(this.f674c, this.f675d, continuation, 0);
            default:
                return new C0099r0(this.f674c, this.f675d, continuation, 1);
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
        return ((C0099r0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i3 = this.b;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (i3) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Z0 z0Q = this.f674c.q();
                Game game = this.f675d;
                z0Q.a(Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, null, null, !game.isPortraitGame(), 0L, null, null, null, 130023423, null));
                return Unit.INSTANCE;
            default:
                ResultKt.throwOnFailure(obj);
                GameDetailActivity gameDetailActivity = this.f674c;
                Game game2 = this.f675d;
                File fileA0 = com.bumptech.glide.d.a0(gameDetailActivity, game2);
                return (GameKt.getEngineEnum(game2) == GameEngine.RENPY8 || (GameKt.getEngineEnum(game2) == GameEngine.RENPY7 && new File(game2.getGamePath(), "game.zip").exists())) ? TranslationOverlayInstaller.INSTANCE.restoreRenpyGameZip(new File(game2.getGamePath()), fileA0) : TranslationOverlayInstaller.INSTANCE.restoreOriginalFiles(new File(game2.getGamePath()), fileA0);
        }
    }
}
