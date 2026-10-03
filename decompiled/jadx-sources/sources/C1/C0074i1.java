package C1;

import A1.C0013d;
import A1.C0043y;
import A1.InterfaceC0032m0;
import V1.InterfaceC0207x;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: renamed from: C1.i1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0074i1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f620e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0074i1(GameActivity gameActivity, Game game, int i3, Continuation continuation) {
        super(2, continuation);
        this.b = 5;
        this.f620e = gameActivity;
        this.f619d = game;
        this.f618c = i3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new C0074i1((C0043y) this.f620e, (HubActivity) this.f619d, continuation, 0);
            case 1:
                return new C0074i1((HubActivity) this.f619d, continuation, 1);
            case 2:
                return new C0074i1((OnlineGameDetailActivity) this.f620e, (Button) this.f619d, continuation, 2);
            case 3:
                return new C0074i1((E1.w) this.f620e, (Context) this.f619d, continuation, 3);
            case 4:
                C0074i1 c0074i1 = new C0074i1((C0013d) this.f619d, continuation, 4);
                c0074i1.f620e = obj;
                return c0074i1;
            default:
                return new C0074i1((GameActivity) this.f620e, (Game) this.f619d, this.f618c, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return ((C0074i1) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            case 1:
                return ((C0074i1) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            case 2:
                return ((C0074i1) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            case 3:
                return ((C0074i1) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            case 4:
                return ((C0074i1) create((X1.p) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            default:
                return ((C0074i1) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objG;
        C0043y c0043yA;
        Object objC;
        Object objE;
        Object objE2;
        int i3 = this.b;
        int i4 = 0;
        Continuation continuation = null;
        Object obj2 = this.f619d;
        int i5 = 1;
        switch (i3) {
            case 0:
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i6 = this.f618c;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0043y c0043y = (C0043y) this.f620e;
                    this.f618c = 1;
                    objG = c0043y.g(this);
                    if (objG == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i6 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objG = obj;
                }
                HubActivity.m((HubActivity) obj2, (InterfaceC0032m0) objG);
                return Unit.INSTANCE;
            case 1:
                HubActivity hubActivity = (HubActivity) obj2;
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i7 = this.f618c;
                if (i7 != 0) {
                    if (i7 == 1) {
                        c0043yA = (C0043y) this.f620e;
                        ResultKt.throwOnFailure(obj);
                        objC = obj;
                    } else {
                        if (i7 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                c0043yA = A1.B.f43a.a(hubActivity, hubActivity);
                this.f620e = c0043yA;
                this.f618c = 1;
                objC = c0043yA.c(this);
                if (objC == coroutine_suspended2) {
                    return coroutine_suspended2;
                }
                if (objC == null) {
                    return Unit.INSTANCE;
                }
                c2.d dVar = V1.H.f2265a;
                W1.d dVar2 = a2.p.f2593a;
                O0 o2 = new O0(hubActivity, c0043yA, continuation, i5);
                this.f620e = SpillingKt.nullOutSpilledVariable(c0043yA);
                this.f618c = 2;
                if (V1.A.e(dVar2, o2, this) == coroutine_suspended2) {
                    return coroutine_suspended2;
                }
                return Unit.INSTANCE;
            case 2:
                Button button = (Button) obj2;
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) this.f620e;
                Object coroutine_suspended3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i8 = this.f618c;
                if (i8 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    M1 m2 = new M1(onlineGameDetailActivity, continuation, i4);
                    this.f618c = 1;
                    objE = V1.A.e(cVar, m2, this);
                    if (objE == coroutine_suspended3) {
                        return coroutine_suspended3;
                    }
                } else {
                    if (i8 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objE = obj;
                }
                if (((Number) objE).longValue() > 0) {
                    int i9 = OnlineGameDetailActivity.f3801i;
                    onlineGameDetailActivity.o();
                } else {
                    button.setEnabled(true);
                    button.setText(onlineGameDetailActivity.getString(R.string.stream_game_add_to_library));
                    Toast.makeText(onlineGameDetailActivity, onlineGameDetailActivity.getString(R.string.stream_game_add_error), 0).show();
                }
                return Unit.INSTANCE;
            case 3:
                E1.w wVar = (E1.w) this.f620e;
                Context context = (Context) obj2;
                Object coroutine_suspended4 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.f618c;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar2 = V1.H.b;
                    C0083l1 c0083l1 = new C0083l1(i5, context, continuation);
                    this.f618c = 1;
                    objE2 = V1.A.e(cVar2, c0083l1, this);
                    if (objE2 == coroutine_suspended4) {
                        return coroutine_suspended4;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objE2 = obj;
                }
                G1.i iVar = (G1.i) objE2;
                if (wVar.b == null) {
                    return Unit.INSTANCE;
                }
                wVar.b(context);
                M1.g gVar = wVar.b;
                Intrinsics.checkNotNull(gVar);
                ((Button) gVar.f1362a).setEnabled(true);
                int iB = G1.m.b(context);
                View viewInflate = wVar.getLayoutInflater().inflate(R.layout.dialog_patch_result, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_patch_badge);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_patch_dialog_title);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_patch_dialog_message);
                int iOrdinal = iVar.ordinal();
                int i11 = R.color.accent;
                String str = "↑";
                if (iOrdinal == 0) {
                    textView2.setText(wVar.getString(R.string.settings_patch_dlg_updated_title));
                    textView3.setText(wVar.getString(R.string.settings_patch_updated, Integer.valueOf(iB)));
                } else if (iOrdinal == 1) {
                    textView2.setText(wVar.getString(R.string.settings_patch_dlg_uptodate_title));
                    textView3.setText(iB > 0 ? wVar.getString(R.string.settings_patch_dlg_uptodate_msg, Integer.valueOf(iB)) : wVar.getString(R.string.settings_patch_dlg_uptodate_msg_none));
                    str = "✓";
                    i11 = R.color.success;
                } else if (iOrdinal == 2) {
                    textView2.setText(wVar.getString(R.string.settings_patch_dlg_app_old_title));
                    textView3.setText(wVar.getString(R.string.settings_patch_app_old));
                } else {
                    if (iOrdinal != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    textView2.setText(wVar.getString(R.string.settings_patch_dlg_failed_title));
                    textView3.setText(wVar.getString(R.string.settings_patch_failed));
                    str = "!";
                    i11 = R.color.danger;
                }
                textView.setText(str);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(1);
                gradientDrawable.setColor(context.getColor(i11));
                textView.setBackground(gradientDrawable);
                O0.b bVar = new O0.b(context, 0);
                ((C0240b) bVar.f4145c).f4112t = viewInflate;
                DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
                Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
                Window window = dialogInterfaceC0245gC.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(android.R.color.transparent);
                }
                ((Button) viewInflate.findViewById(R.id.btn_patch_dialog_ok)).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 5));
                dialogInterfaceC0245gC.show();
                return Unit.INSTANCE;
            case 4:
                Object coroutine_suspended5 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i12 = this.f618c;
                if (i12 == 0) {
                    ResultKt.throwOnFailure(obj);
                    X1.p pVar = (X1.p) this.f620e;
                    this.f618c = 1;
                    if (((C0013d) obj2).h(pVar, this) == coroutine_suspended5) {
                        return coroutine_suspended5;
                    }
                } else {
                    if (i12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            default:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                GameActivity gameActivity = (GameActivity) this.f620e;
                int i13 = GameActivity.f3676L;
                Game game = (Game) obj2;
                ((Z0) gameActivity.f3691k.getValue()).a(Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, game.getPlaytimeMinutes() + this.f618c, System.currentTimeMillis(), 0, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134205439, null));
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0074i1(Object obj, Object obj2, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f620e = obj;
        this.f619d = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0074i1(Object obj, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f619d = obj;
    }
}
