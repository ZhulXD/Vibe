package C1;

import V1.InterfaceC0207x;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.GameDetailActivity;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import p011e.DialogInterfaceC0245g;
import p064y1.EnumC0420v1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E0 extends SuspendLambda implements Function2 {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceC0245g f416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ EnumC0420v1 f417d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f418e;
    public final /* synthetic */ GameDetailActivity f;
    public final /* synthetic */ L1.a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ProgressBar f419h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ TextView f420i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f421j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E0(DialogInterfaceC0245g dialogInterfaceC0245g, EnumC0420v1 enumC0420v1, String str, GameDetailActivity gameDetailActivity, L1.a aVar, ProgressBar progressBar, TextView textView, String str2, Continuation continuation) {
        super(2, continuation);
        this.f416c = dialogInterfaceC0245g;
        this.f417d = enumC0420v1;
        this.f418e = str;
        this.f = gameDetailActivity;
        this.g = aVar;
        this.f419h = progressBar;
        this.f420i = textView;
        this.f421j = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new E0(this.f416c, this.f417d, this.f418e, this.f, this.g, this.f419h, this.f420i, this.f421j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((E0) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.b;
        GameDetailActivity gameDetailActivity = this.f;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            c2.c cVar = V1.H.b;
            D0 d3 = new D0(this.f417d, this.f418e, gameDetailActivity, this.g, this.f419h, this.f420i, (Continuation) null);
            this.b = 1;
            obj = V1.A.e(cVar, d3, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Object value = ((Result) obj).getValue();
        this.f416c.dismiss();
        if (Result.m16isSuccessimpl(value)) {
            Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.engine_plugin_install_success, this.f421j), 0).show();
            Game game = gameDetailActivity.g;
            if (game != null) {
                try {
                    com.bumptech.glide.c.c(gameDetailActivity, game, true);
                    Result.m9constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion = Result.INSTANCE;
                    Result.m9constructorimpl(ResultKt.createFailure(th));
                }
            }
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(value);
        if (thM12exceptionOrNullimpl != null) {
            String message = thM12exceptionOrNullimpl.getMessage();
            if (message == null) {
                message = "";
            }
            Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.engine_plugin_install_failed, message), 1).show();
        }
        return Unit.INSTANCE;
    }
}
