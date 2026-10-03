package E1;

import V1.InterfaceC0207x;
import android.content.Context;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import p011e.DialogInterfaceC0245g;
import p064y1.EnumC0420v1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends SuspendLambda implements Function2 {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceC0245g f928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ EnumC0420v1 f929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f930e;
    public final /* synthetic */ Context f;
    public final /* synthetic */ L1.a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ w f931h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ProgressBar f932i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ TextView f933j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ String f934k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ Function0 f935l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(DialogInterfaceC0245g dialogInterfaceC0245g, EnumC0420v1 enumC0420v1, String str, Context context, L1.a aVar, w wVar, ProgressBar progressBar, TextView textView, String str2, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f928c = dialogInterfaceC0245g;
        this.f929d = enumC0420v1;
        this.f930e = str;
        this.f = context;
        this.g = aVar;
        this.f931h = wVar;
        this.f932i = progressBar;
        this.f933j = textView;
        this.f934k = str2;
        this.f935l = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new v(this.f928c, this.f929d, this.f930e, this.f, this.g, this.f931h, this.f932i, this.f933j, this.f934k, this.f935l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((v) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.b;
        Context context = this.f;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            c2.c cVar = V1.H.b;
            u uVar = new u(this.f929d, this.f930e, context, this.g, this.f931h, this.f932i, this.f933j, null);
            this.b = 1;
            obj = V1.A.e(cVar, uVar, this);
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
        this.f928c.dismiss();
        boolean zM16isSuccessimpl = Result.m16isSuccessimpl(value);
        w wVar = this.f931h;
        if (zM16isSuccessimpl) {
            Toast.makeText(context, wVar.getString(R.string.engine_plugin_install_success, this.f934k), 0).show();
            this.f935l.invoke();
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(value);
        if (thM12exceptionOrNullimpl != null) {
            Log.e("PluginsSettings", "Install " + this.f929d + " (build=" + this.g + ") failed", thM12exceptionOrNullimpl);
            String message = thM12exceptionOrNullimpl.getMessage();
            if (message == null) {
                message = "";
            }
            Toast.makeText(context, wVar.getString(R.string.engine_plugin_install_failed, message), 1).show();
        }
        return Unit.INSTANCE;
    }
}
