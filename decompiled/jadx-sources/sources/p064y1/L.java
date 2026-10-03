package p064y1;

import C1.Z0;
import I1.a;
import I1.c;
import I1.e;
import V1.InterfaceC0207x;
import android.os.Build;
import androidx.core.os.EnvironmentCompat;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.catalog.h;
import java.io.File;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class L extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Game f6097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6098d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L(Game game, GameActivity gameActivity, Continuation continuation) {
        super(2, continuation);
        this.f6097c = game;
        this.f6098d = gameActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new L(this.f6098d, this.f6097c, continuation);
            default:
                return new L(this.f6097c, this.f6098d, continuation);
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
        return ((L) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00da  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a aVar;
        int i3 = this.b;
        GameActivity gameActivity = this.f6098d;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (i3) {
            case 0:
                ResultKt.throwOnFailure(obj);
                int i4 = GameActivity.f3676L;
                Z0 z2 = (Z0) gameActivity.f3691k.getValue();
                Game game = this.f6097c;
                z2.a(Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, game.getSaveCount() + 1, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134201343, null));
                gameActivity.f3695o = Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, game.getSaveCount() + 1, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134201343, null);
                return Unit.INSTANCE;
            default:
                ResultKt.throwOnFailure(obj);
                int i5 = Build.VERSION.SDK_INT;
                Game game2 = this.f6097c;
                String gameId = String.valueOf(game2.getId());
                String path = game2.getGamePath();
                String engine = game2.getEngine();
                File privateRoot = new File(gameActivity.getFilesDir(), "runtime-locks");
                String streamUrl = game2.getStreamUrl();
                h resolveRoot = new h(15);
                Intrinsics.checkNotNullParameter(gameId, "gameId");
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(privateRoot, "privateRoot");
                Intrinsics.checkNotNullParameter(streamUrl, "streamUrl");
                Intrinsics.checkNotNullParameter(resolveRoot, "resolveRoot");
                if (i5 < 26) {
                    return Q1.a.f1836c;
                }
                if (StringsKt.isBlank(streamUrl)) {
                    Intrinsics.checkNotNullParameter(path, "path");
                    if (!StringsKt.isBlank(path) && new File(path).isAbsolute() && !new Regex("^[A-Za-z][A-Za-z0-9+.-]*://").containsMatchIn(path)) {
                        try {
                            File content = (File) resolveRoot.invoke(new File(path));
                            if (!content.isDirectory()) {
                                return Q1.a.f1837d;
                            }
                            Intrinsics.checkNotNullParameter(gameId, "gameId");
                            Intrinsics.checkNotNullParameter(content, "content");
                            String canonicalPath = content.getCanonicalPath();
                            Intrinsics.checkNotNullExpressionValue(canonicalPath, "getCanonicalPath(...)");
                            c identity = new c(gameId, canonicalPath);
                            I1.h hVar = new I1.h(privateRoot);
                            if (engine == null) {
                                engine = EnvironmentCompat.MEDIA_UNKNOWN;
                            } else {
                                if (!SetsKt.setOf((Object[]) new String[]{"MV", "MZ", "TYRANO", "HTML", "BROWSE", "VXACE", "RENPY7", "RENPY8", "KIRI", "GODOT"}).contains(engine)) {
                                    engine = null;
                                }
                                if (engine == null) {
                                    engine = EnvironmentCompat.MEDIA_UNKNOWN;
                                }
                            }
                            Intrinsics.checkNotNullParameter(identity, "identity");
                            try {
                                aVar = (a) hVar.e(new e(hVar, identity, engine, 0));
                                break;
                            } catch (Exception unused) {
                                aVar = a.f1172e;
                            }
                            int iOrdinal = aVar.ordinal();
                            if (iOrdinal == 0) {
                                return Q1.a.f1838e;
                            }
                            if (iOrdinal == 1) {
                                return Q1.a.f;
                            }
                            if (iOrdinal == 2) {
                                return Q1.a.g;
                            }
                            if (iOrdinal == 3) {
                                return Q1.a.f1839h;
                            }
                            throw new NoWhenBranchMatchedException();
                        } catch (Exception unused2) {
                            return Q1.a.f1840i;
                        }
                    }
                }
                return Q1.a.f1837d;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L(GameActivity gameActivity, Game game, Continuation continuation) {
        super(2, continuation);
        this.f6098d = gameActivity;
        this.f6097c = game;
    }
}
