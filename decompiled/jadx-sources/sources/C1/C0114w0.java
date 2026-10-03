package C1;

import A1.C0013d;
import A1.C0016e0;
import A1.C0018f0;
import A1.C0020g0;
import A1.C0022h0;
import A1.C0024i0;
import A1.C0026j0;
import A1.C0028k0;
import A1.C0030l0;
import A1.C0043y;
import A1.EnumC0012c0;
import A1.InterfaceC0032m0;
import V1.AbstractC0201q;
import V1.InterfaceC0207x;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.WebView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.TranslationOverlayResult;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.game.SplashGameActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: C1.w0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0114w0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f707e;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0114w0(S1.c cVar, Game game, Object obj, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f706d = cVar;
        this.f707e = game;
        this.f = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new C0114w0((Game) this.f707e, (GameDetailActivity) this.f706d, (String) this.f, continuation, 0);
            case 1:
                return new C0114w0((GameDetailActivity) this.f706d, (Game) this.f707e, (OnlineTranslationPackage) this.f, continuation, 1);
            case 2:
                return new C0114w0((C0043y) this.f706d, (HubActivity) this.f, continuation, 2);
            case 3:
                C0114w0 c0114w0 = new C0114w0((Y1.c) this.f706d, (C0013d) this.f, continuation, 3);
                c0114w0.f707e = obj;
                return c0114w0;
            case 4:
                return new C0114w0((GameActivity) this.f706d, (Game) this.f707e, (String) this.f, continuation, 4);
            case 5:
                return new C0114w0((GameActivity) this.f706d, (Q1.d) this.f, (Game) this.f707e, continuation);
            case 6:
                return new C0114w0((S1.b) this.f707e, (WebView) this.f706d, (String) this.f, continuation, 6);
            default:
                return new C0114w0((SplashGameActivity) this.f706d, (Game) this.f707e, (String) this.f, continuation, 7);
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
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
        }
        return ((C0114w0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF;
        String strName;
        Object objE;
        Object objC;
        Object objA;
        Object objE2;
        int i3 = 3;
        Continuation continuation = null;
        switch (this.b) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) this.f706d;
                Game game = (Game) this.f707e;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f705c;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Log.d("GameLaunch", "detail.requestLaunch begin gameId=" + game.getId() + " engine=" + game.getEngine());
                    C0043y c0043yA = A1.B.f43a.a(gameDetailActivity, gameDetailActivity);
                    int id = game.getId();
                    String engine = game.getEngine();
                    String gamePath = game.getGamePath();
                    String processName = (String) this.f;
                    Intrinsics.checkNotNull(processName);
                    String requestId = "detail-" + System.nanoTime();
                    EnumC0012c0 source = EnumC0012c0.b;
                    Intrinsics.checkNotNullParameter(engine, "engine");
                    Intrinsics.checkNotNullParameter(gamePath, "gamePath");
                    Intrinsics.checkNotNullParameter(processName, "processName");
                    Intrinsics.checkNotNullParameter(requestId, "requestId");
                    Intrinsics.checkNotNullParameter(source, "source");
                    C0016e0 c0016e0 = new C0016e0(requestId, id, engine, gamePath, processName, 0L, source, 32);
                    this.f705c = 1;
                    objF = c0043yA.f(c0016e0, this);
                    if (objF == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i4 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objF = obj;
                }
                InterfaceC0032m0 result = (InterfaceC0032m0) objF;
                Log.d("GameLaunch", "detail.requestLaunch result=" + result + " gameId=" + game.getId());
                int i5 = GameDetailActivity.f3762w;
                Intrinsics.checkNotNullParameter(result, "result");
                boolean z2 = result instanceof C0024i0;
                if (!z2) {
                    if (result instanceof C0022h0) {
                        strName = ((C0022h0) result).b.name();
                    } else if (result instanceof C0018f0) {
                        strName = "UNKNOWN_SESSION";
                    } else if (result instanceof C0030l0) {
                        strName = "WAITING_FOR_CLOSE";
                    } else if (result instanceof C0026j0) {
                        strName = "RUNTIME_INSTALL_REQUIRED";
                    } else if (result instanceof C0028k0) {
                        strName = "SUPERSEDED";
                    } else if (Intrinsics.areEqual(result, C0020g0.f191a)) {
                        strName = "CANCELLED";
                    } else if (!z2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.game_launch_failed, strName), 1).show();
                }
                return Unit.INSTANCE;
            case 1:
                Game game2 = (Game) this.f707e;
                OnlineTranslationPackage onlineTranslationPackage = (OnlineTranslationPackage) this.f;
                GameDetailActivity gameDetailActivity2 = (GameDetailActivity) this.f706d;
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i6 = this.f705c;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    T0 t2 = new T0(gameDetailActivity2, game2, onlineTranslationPackage, null);
                    this.f705c = 1;
                    objE = V1.A.e(cVar, t2, this);
                    if (objE == coroutine_suspended2) {
                        return coroutine_suspended2;
                    }
                } else {
                    if (i6 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objE = obj;
                }
                TranslationOverlayResult translationOverlayResult = (TranslationOverlayResult) objE;
                gameDetailActivity2.f3769m = false;
                Intrinsics.checkNotNullParameter("", "<set-?>");
                gameDetailActivity2.f3770n = "";
                if (translationOverlayResult.getSuccess()) {
                    Game game3 = gameDetailActivity2.g;
                    Game gameCopy$default = Game.copy$default(game3 == null ? game2 : game3, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, onlineTranslationPackage.getLabel(), onlineTranslationPackage.getCode(), false, 0L, null, null, null, 131071999, null);
                    gameDetailActivity2.g = gameCopy$default;
                    gameDetailActivity2.q().a(gameCopy$default);
                    com.bumptech.glide.d.d(gameDetailActivity2, gameCopy$default);
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.game_detail_translation_install_success, onlineTranslationPackage.getLabel(), Boxing.boxInt(translationOverlayResult.getOverwrittenFiles()), Boxing.boxInt(translationOverlayResult.getAddedFiles())), 1).show();
                } else {
                    Game game4 = gameDetailActivity2.g;
                    if (game4 != null) {
                        game2 = game4;
                    }
                    com.bumptech.glide.d.d(gameDetailActivity2, game2);
                    String message = translationOverlayResult.getMessage();
                    if (StringsKt.isBlank(message)) {
                        message = gameDetailActivity2.getString(R.string.download_status_failed_generic);
                        Intrinsics.checkNotNullExpressionValue(message, "getString(...)");
                    }
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.game_detail_translation_install_failed, message), 1).show();
                }
                return Unit.INSTANCE;
            case 2:
                C0043y c0043y = (C0043y) this.f706d;
                Object coroutine_suspended3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i7 = this.f705c;
                if (i7 != 0) {
                    if (i7 == 1) {
                        ResultKt.throwOnFailure(obj);
                        objC = obj;
                    } else {
                        if (i7 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        objA = obj;
                    }
                    HubActivity.m((HubActivity) this.f, (InterfaceC0032m0) objA);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                this.f705c = 1;
                objC = c0043y.c(this);
                if (objC == coroutine_suspended3) {
                    return coroutine_suspended3;
                }
                String str = (String) objC;
                if (str != null) {
                    this.f707e = SpillingKt.nullOutSpilledVariable(str);
                    this.f705c = 2;
                    objA = c0043y.a(str, this);
                    if (objA == coroutine_suspended3) {
                        return coroutine_suspended3;
                    }
                    HubActivity.m((HubActivity) this.f, (InterfaceC0032m0) objA);
                }
                return Unit.INSTANCE;
            case 3:
                Object coroutine_suspended4 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i8 = this.f705c;
                if (i8 == 0) {
                    ResultKt.throwOnFailure(obj);
                    InterfaceC0207x interfaceC0207x = (InterfaceC0207x) this.f707e;
                    Y1.c cVar2 = (Y1.c) this.f706d;
                    C0013d c0013d = (C0013d) this.f;
                    CoroutineContext coroutineContext = (CoroutineContext) c0013d.f177c;
                    Function2 c0074i1 = new C0074i1(c0013d, continuation, 4);
                    X1.f.f2367a.getClass();
                    X1.b bVar = new X1.b(X1.e.b);
                    CoroutineContext coroutineContextA = AbstractC0201q.a(interfaceC0207x.getCoroutineContext(), coroutineContext, true);
                    c2.d dVar = V1.H.f2265a;
                    if (coroutineContextA != dVar && coroutineContextA.get(ContinuationInterceptor.INSTANCE) == null) {
                        coroutineContextA = coroutineContextA.plus(dVar);
                    }
                    X1.o oVar = new X1.o(coroutineContextA, bVar);
                    oVar.L(3, oVar, c0074i1);
                    this.f705c = 1;
                    Object objA2 = Y1.i.a(cVar2, oVar, true, this);
                    if (objA2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objA2 = Unit.INSTANCE;
                    }
                    if (objA2 == coroutine_suspended4) {
                        return coroutine_suspended4;
                    }
                } else {
                    if (i8 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            case 4:
                Game game5 = (Game) this.f707e;
                Object coroutine_suspended5 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i9 = this.f705c;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    A1.B b = A1.B.f43a;
                    GameActivity gameActivity = (GameActivity) this.f706d;
                    C0043y c0043yA2 = b.a(gameActivity, gameActivity);
                    int id2 = game5.getId();
                    String engine2 = game5.getEngine();
                    String gamePath2 = game5.getGamePath();
                    String processName2 = (String) this.f;
                    Intrinsics.checkNotNull(processName2);
                    String requestId2 = "native-redispatch-" + System.nanoTime();
                    EnumC0012c0 source2 = EnumC0012c0.f175d;
                    Intrinsics.checkNotNullParameter(engine2, "engine");
                    Intrinsics.checkNotNullParameter(gamePath2, "gamePath");
                    Intrinsics.checkNotNullParameter(processName2, "processName");
                    Intrinsics.checkNotNullParameter(requestId2, "requestId");
                    Intrinsics.checkNotNullParameter(source2, "source");
                    C0016e0 c0016e1 = new C0016e0(requestId2, id2, engine2, gamePath2, processName2, 0L, source2, 32);
                    this.f705c = 1;
                    if (c0043yA2.f(c0016e1, this) == coroutine_suspended5) {
                        return coroutine_suspended5;
                    }
                } else {
                    if (i9 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            case 5:
                Object coroutine_suspended6 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.f705c;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar3 = V1.H.b;
                    p064y1.L l2 = new p064y1.L((Game) this.f707e, (GameActivity) this.f706d, (Continuation) null);
                    this.f705c = 1;
                    objE2 = V1.A.e(cVar3, l2, this);
                    if (objE2 == coroutine_suspended6) {
                        return coroutine_suspended6;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objE2 = obj;
                }
                Q1.a value = (Q1.a) objE2;
                if (((GameActivity) this.f706d).y((Q1.d) this.f)) {
                    Q1.d dVar2 = (Q1.d) this.f;
                    synchronized (dVar2) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (dVar2.f1850c) {
                            dVar2.f1856k = value;
                        }
                        break;
                    }
                }
                return Unit.INSTANCE;
            case 6:
                Object coroutine_suspended7 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i11 = this.f705c;
                if (i11 == 0) {
                    ResultKt.throwOnFailure(obj);
                    try {
                        p064y1.L1.A(((S1.b) this.f707e).f2056a);
                        break;
                    } catch (Exception unused) {
                    }
                    c2.d dVar3 = V1.H.f2265a;
                    W1.d dVar4 = a2.p.f2593a;
                    O0 o2 = new O0((WebView) this.f706d, (String) this.f, continuation, i3);
                    this.f705c = 1;
                    if (V1.A.e(dVar4, o2, this) == coroutine_suspended7) {
                        return coroutine_suspended7;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            default:
                Game game6 = (Game) this.f707e;
                Object coroutine_suspended8 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i12 = this.f705c;
                if (i12 == 0) {
                    ResultKt.throwOnFailure(obj);
                    A1.B b3 = A1.B.f43a;
                    SplashGameActivity splashGameActivity = (SplashGameActivity) this.f706d;
                    C0043y c0043yA3 = b3.a(splashGameActivity, splashGameActivity);
                    int id3 = game6.getId();
                    String engine3 = game6.getEngine();
                    String gamePath3 = game6.getGamePath();
                    String processName3 = (String) this.f;
                    Intrinsics.checkNotNull(processName3);
                    String requestId3 = "splash-" + System.nanoTime();
                    EnumC0012c0 source3 = EnumC0012c0.f174c;
                    Intrinsics.checkNotNullParameter(engine3, "engine");
                    Intrinsics.checkNotNullParameter(gamePath3, "gamePath");
                    Intrinsics.checkNotNullParameter(processName3, "processName");
                    Intrinsics.checkNotNullParameter(requestId3, "requestId");
                    Intrinsics.checkNotNullParameter(source3, "source");
                    C0016e0 c0016e2 = new C0016e0(requestId3, id3, engine3, gamePath3, processName3, 0L, source3, 32);
                    this.f705c = 1;
                    if (c0043yA3.f(c0016e2, this) == coroutine_suspended8) {
                        return coroutine_suspended8;
                    }
                } else {
                    if (i12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0114w0(GameActivity gameActivity, Q1.d dVar, Game game, Continuation continuation) {
        super(2, continuation);
        this.b = 5;
        this.f706d = gameActivity;
        this.f = dVar;
        this.f707e = game;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0114w0(Object obj, KeyEvent.Callback callback, String str, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f707e = obj;
        this.f706d = callback;
        this.f = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0114w0(Object obj, Object obj2, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f706d = obj;
        this.f = obj2;
    }
}
