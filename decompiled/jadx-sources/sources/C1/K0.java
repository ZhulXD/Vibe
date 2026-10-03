package C1;

import V1.InterfaceC0207x;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameMetadataSync;
import com.minhub.gamehub.data.RpgMakerPluginConfig;
import com.minhub.gamehub.data.RpgMakerPluginConfigStore;
import java.io.File;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ X1 f457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Game f458e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K0(File file, X1 x2, Game game, Continuation continuation) {
        super(2, continuation);
        this.f456c = file;
        this.f457d = x2;
        this.f458e = game;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        K0 k2 = new K0(this.f456c, this.f457d, this.f458e, continuation);
        k2.b = obj;
        return k2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((K0) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM9constructorimpl;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        File file = this.f456c;
        X1 x2 = this.f457d;
        Game game = this.f458e;
        try {
            Result.Companion companion = Result.INSTANCE;
            RpgMakerPluginConfigStore rpgMakerPluginConfigStore = RpgMakerPluginConfigStore.INSTANCE;
            RpgMakerPluginConfigStore.save$default(rpgMakerPluginConfigStore, file, x2.f529d, null, 4, null);
            GameMetadataSync gameMetadataSync = GameMetadataSync.INSTANCE;
            p023i1.l lVar = new p023i1.l();
            List<RpgMakerPluginConfig> configs = x2.f529d;
            p023i1.l lVar2 = X0.f526a;
            Intrinsics.checkNotNullParameter(configs, "configs");
            String strG = lVar.g(rpgMakerPluginConfigStore.enabledPluginNames(configs));
            Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
            objM9constructorimpl = Result.m9constructorimpl(GameMetadataSync.syncFromDisk$default(gameMetadataSync, Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, strG, null, null, null, null, false, 0L, null, null, null, 134086655, null), null, 2, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m8boximpl(objM9constructorimpl);
    }
}
