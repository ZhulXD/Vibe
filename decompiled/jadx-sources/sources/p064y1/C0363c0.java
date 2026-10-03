package p064y1;

import A1.n0;
import L1.a;
import O0.b;
import V1.A;
import V1.H;
import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.game.KiriKiriGameActivity;
import com.minhub.gamehub.game.VxAceGameActivity;
import f2.c;
import java.io.File;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import p011e.C0240b;

/* JADX INFO: renamed from: y1.c0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0363c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0363c0 f6201a = new C0363c0();
    public static final C0363c0 b = new C0363c0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile byte[] f6202c;

    public static void a(Intent intent, Intent intent2) {
        Object obj;
        String[] strArr = {"com.minhub.gamehub.session.id", "com.minhub.gamehub.session.token"};
        for (int i3 = 0; i3 < 2; i3++) {
            if (!intent.hasExtra(strArr[i3])) {
                return;
            }
        }
        String[] strArr2 = {"com.minhub.gamehub.session.id", "com.minhub.gamehub.session.token", "com.minhub.gamehub.session.engine", "com.minhub.gamehub.session.process", "com.minhub.gamehub.session.pid"};
        for (int i4 = 0; i4 < 5; i4++) {
            String str = strArr2[i4];
            Bundle extras = intent.getExtras();
            if (extras != null && (obj = extras.get(str)) != null) {
                if (obj instanceof String) {
                    intent2.putExtra(str, (String) obj);
                } else if (obj instanceof Integer) {
                    intent2.putExtra(str, ((Number) obj).intValue());
                }
            }
        }
    }

    public static N0 b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        C0363c0 c0363c0 = N0.f6105d;
        Object obj = null;
        String string = context.getSharedPreferences("minhub_prefs", 0).getString("godot_max_fps", null);
        c0363c0.getClass();
        for (Object obj2 : N0.f6107h) {
            if (Intrinsics.areEqual(((N0) obj2).b, string)) {
                obj = obj2;
                break;
            }
        }
        N0 n0 = (N0) obj;
        return n0 == null ? N0.CAP_60 : n0;
    }

    public static O0 d(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        C0363c0 c0363c0 = O0.f6110c;
        Object obj = null;
        String string = context.getSharedPreferences("minhub_prefs", 0).getString("godot_renderer", null);
        c0363c0.getClass();
        for (Object obj2 : O0.g) {
            if (Intrinsics.areEqual(((O0) obj2).b, string)) {
                obj = obj2;
                break;
            }
        }
        O0 o2 = (O0) obj;
        return o2 == null ? O0.VULKAN : o2;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0299  */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public Object c(Activity activity, Game game, n0 n0Var, ContinuationImpl continuationImpl) {
        C0360b0 c0360b0;
        EnumC0411s1 enumC0411s1;
        Object objM9constructorimpl;
        Activity context = activity;
        n0 n0Var2 = n0Var;
        if (continuationImpl instanceof C0360b0) {
            c0360b0 = (C0360b0) continuationImpl;
            int i3 = c0360b0.f6195h;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0360b0.f6195h = i3 - Integer.MIN_VALUE;
            } else {
                c0360b0 = new C0360b0(this, continuationImpl);
            }
        } else {
            c0360b0 = new C0360b0(this, continuationImpl);
        }
        Object objE = c0360b0.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c0360b0.f6195h;
        boolean zBooleanValue = true;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objE);
            Intent intent = new Intent(context, (Class<?>) GameActivity.class);
            intent.putExtra("com.minhub.gamehub.session.id", n0Var2.f207a);
            intent.putExtra("com.minhub.gamehub.session.token", n0Var2.b);
            intent.putExtra("com.minhub.gamehub.session.engine", n0Var2.f208c);
            intent.putExtra("com.minhub.gamehub.session.process", n0Var2.f209d);
            intent.putExtra("com.minhub.gamehub.session.pid", 0);
            Log.d("GameLaunch", "coordinator dispatch begin request=" + n0Var2.f207a + " game=" + game.getId() + " engine=" + game.getEngine());
            Intrinsics.checkNotNullParameter(game, "game");
            int i5 = S1.f6136a[GameKt.getEngineEnum(game).ordinal()];
            if (i5 == 1) {
                enumC0411s1 = EnumC0411s1.f6347c;
            } else if (i5 == 2) {
                enumC0411s1 = EnumC0411s1.f6348d;
            } else if (i5 != 3) {
                enumC0411s1 = (i5 == 4 || i5 == 5) ? EnumC0411s1.f : EnumC0411s1.b;
            } else {
                enumC0411s1 = EnumC0411s1.f6349e;
            }
            int iOrdinal = enumC0411s1.ordinal();
            if (iOrdinal == 0) {
                context.startActivity(intent.putExtra("game_id", game.getId()));
            } else {
                if (iOrdinal == 1) {
                    C0429y1 c0429y1 = C0429y1.f6409a;
                    if (C0429y1.k(null, context, EnumC0420v1.VXACE)) {
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            p2.a(context);
                            objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                        }
                        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
                        if (thM12exceptionOrNullimpl != null) {
                            Log.e("GameLaunch", "VX Ace libs failed", thM12exceptionOrNullimpl);
                        }
                        if (Result.m16isSuccessimpl(objM9constructorimpl)) {
                            Intent intent2 = new Intent(context, (Class<?>) VxAceGameActivity.class);
                            intent2.putExtra("game_id", game.getId());
                            intent2.putExtra(VxAceGameActivity.EXTRA_GAME_PATH, game.getGamePath());
                            a(intent, intent2);
                            context.startActivity(intent2);
                        }
                    }
                    b bVar = new b(context, 0);
                    C0240b c0240b = (C0240b) bVar.f4145c;
                    c0240b.f4098d = "Runtime unavailable";
                    c0240b.f = "The VX Ace runtime is not installed or could not be loaded. Open the game page to download the engine support pack.";
                    bVar.h(R.string.ok, new c(context, 1));
                    c0240b.f4105m = false;
                    bVar.e();
                    return Boxing.boxBoolean(false);
                }
                if (iOrdinal != 2) {
                    if (iOrdinal == 3) {
                        Regex regex = W0.f6153a;
                        L1.c cVarC = W0.c(GameEngine.GODOT, game.getGamePath());
                        if (cVarC != null) {
                            a build = cVarC.f1286a;
                            Intrinsics.checkNotNullParameter(context, "context");
                            Intrinsics.checkNotNullParameter(build, "build");
                            C0429y1 c0429y2 = C0429y1.f6409a;
                            if (C0429y1.k(build, context, EnumC0420v1.GODOT)) {
                                Intent intent3 = new Intent(context, (Class<?>) GodotGameActivity.class);
                                intent3.putExtra("godot_game_path", game.getGamePath());
                                intent3.putExtra("game_id", game.getId());
                                intent3.putExtra("godotRuntimeKey", build.a());
                                a(intent, intent3);
                                context.startActivity(intent3);
                            } else {
                                b bVar2 = new b(context, 0);
                                C0240b c0240b2 = (C0240b) bVar2.f4145c;
                                c0240b2.f4098d = "Runtime unavailable";
                                c0240b2.f = "The Godot runtime is not installed or could not be verified safely.";
                                bVar2.h(R.string.ok, new c(context, 4));
                                c0240b2.f4105m = false;
                                bVar2.e();
                            }
                        } else {
                            b bVar3 = new b(context, 0);
                            C0240b c0240b3 = (C0240b) bVar3.f4145c;
                            c0240b3.f4098d = "Runtime unavailable";
                            c0240b3.f = "The Godot game has no recognized runtime identity.";
                            bVar3.h(R.string.ok, new c(context, 3));
                            c0240b3.f4105m = false;
                            bVar3.e();
                        }
                        zBooleanValue = false;
                    } else {
                        if (iOrdinal != 4) {
                            throw new NoWhenBranchMatchedException();
                        }
                        c0360b0.b = context;
                        c0360b0.f6192c = SpillingKt.nullOutSpilledVariable(game);
                        c0360b0.f6193d = n0Var2;
                        c0360b0.f6194e = SpillingKt.nullOutSpilledVariable(intent);
                        c0360b0.f6195h = 1;
                        objE = A.e(H.b, new C0357a0(game, context, intent, null), c0360b0);
                        if (objE == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else if (new File(context.getApplicationInfo().nativeLibraryDir, "libkrkr2yuri.so").exists()) {
                    Intent intent4 = new Intent(context, (Class<?>) KiriKiriGameActivity.class);
                    intent4.putExtra("kiri_game_path", game.getGamePath());
                    intent4.putExtra("game_id", game.getId());
                    a(intent, intent4);
                    context.startActivity(intent4);
                } else {
                    b bVar4 = new b(context, 0);
                    C0240b c0240b4 = (C0240b) bVar4.f4145c;
                    c0240b4.f4098d = context.getString(com.minhub.gamehub.R.string.kiri_not_supported_title);
                    c0240b4.f = context.getString(com.minhub.gamehub.R.string.kiri_not_supported_msg);
                    bVar4.h(R.string.ok, new c(context, 2));
                    c0240b4.f4105m = false;
                    bVar4.e();
                    zBooleanValue = false;
                }
            }
            Log.d("GameLaunch", "coordinator dispatch result request=" + n0Var2.f207a + " dispatched=" + zBooleanValue);
            if (zBooleanValue) {
                context.finish();
            }
            return Boxing.boxBoolean(zBooleanValue);
        }
        if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        n0 n0Var3 = c0360b0.f6193d;
        Activity activity2 = c0360b0.b;
        ResultKt.throwOnFailure(objE);
        n0Var2 = n0Var3;
        context = activity2;
        zBooleanValue = ((Boolean) objE).booleanValue();
        Log.d("GameLaunch", "coordinator dispatch result request=" + n0Var2.f207a + " dispatched=" + zBooleanValue);
        if (zBooleanValue) {
            context.finish();
        }
        return Boxing.boxBoolean(zBooleanValue);
    }
}
