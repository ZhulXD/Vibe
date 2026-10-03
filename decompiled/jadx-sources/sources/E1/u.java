package E1;

import V1.InterfaceC0207x;
import android.content.Context;
import android.view.View;
import android.widget.Button;
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
import kotlin.jvm.functions.Function2;
import p064y1.C0429y1;
import p064y1.EnumC0420v1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w f923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f924e;
    public final /* synthetic */ TextView f;
    public final /* synthetic */ L1.a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ View f927j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(w wVar, Context context, TextView textView, L1.a aVar, TextView textView2, Button button, Button button2, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f923d = wVar;
        this.f924e = context;
        this.f = textView;
        this.g = aVar;
        this.f925h = textView2;
        this.f926i = button;
        this.f927j = button2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new u(this.f923d, this.f924e, this.f, this.g, (TextView) this.f925h, (Button) this.f926i, (Button) this.f927j, continuation, 0);
            case 1:
                return new u(this.f923d, this.f924e, this.f, this.g, (TextView) this.f925h, (Button) this.f926i, (Button) this.f927j, continuation, 1);
            default:
                return new u((EnumC0420v1) this.f925h, (String) this.f926i, this.f924e, this.g, this.f923d, (ProgressBar) this.f927j, this.f, continuation);
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
        return ((u) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objI;
        int i3 = this.b;
        Continuation continuation = null;
        int i4 = 0;
        TextView textView = this.f;
        View view = this.f927j;
        Object obj2 = this.f926i;
        Object obj3 = this.f925h;
        int i5 = 1;
        switch (i3) {
            case 0:
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i6 = this.f922c;
                L1.a aVar = this.g;
                Context context = this.f924e;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    t tVar = new t(context, aVar, continuation, i4);
                    this.f922c = 1;
                    if (V1.A.e(cVar, tVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i6 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                w wVar = this.f923d;
                if (wVar.b == null) {
                    return Unit.INSTANCE;
                }
                Toast.makeText(context, wVar.getString(R.string.plugin_engine_removed, textView.getText()), 0).show();
                w.d(context, aVar, (TextView) obj3, wVar, (Button) obj2, (Button) view);
                return Unit.INSTANCE;
            case 1:
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i7 = this.f922c;
                L1.a aVar2 = this.g;
                Context context2 = this.f924e;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar2 = V1.H.b;
                    t tVar2 = new t(context2, aVar2, continuation, i5);
                    this.f922c = 1;
                    if (V1.A.e(cVar2, tVar2, this) == coroutine_suspended2) {
                        return coroutine_suspended2;
                    }
                } else {
                    if (i7 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                w wVar2 = this.f923d;
                if (wVar2.b == null) {
                    return Unit.INSTANCE;
                }
                Toast.makeText(context2, wVar2.getString(R.string.plugin_engine_removed, textView.getText()), 0).show();
                w.e(context2, aVar2, (TextView) obj3, wVar2, (Button) obj2, (Button) view);
                return Unit.INSTANCE;
            default:
                Object coroutine_suspended3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i8 = this.f922c;
                if (i8 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0429y1 c0429y1 = C0429y1.f6409a;
                    String str = (String) obj2;
                    A1.r rVar = new A1.r(this.f923d, (ProgressBar) view, textView, 5);
                    this.f922c = 1;
                    objI = C0429y1.f6409a.i((EnumC0420v1) obj3, str, this.f924e, rVar, this.g, this);
                    if (objI == coroutine_suspended3) {
                        return coroutine_suspended3;
                    }
                } else {
                    if (i8 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objI = ((Result) obj).getValue();
                }
                return Result.m8boximpl(objI);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(EnumC0420v1 enumC0420v1, String str, Context context, L1.a aVar, w wVar, ProgressBar progressBar, TextView textView, Continuation continuation) {
        super(2, continuation);
        this.b = 2;
        this.f925h = enumC0420v1;
        this.f926i = str;
        this.f924e = context;
        this.g = aVar;
        this.f923d = wVar;
        this.f927j = progressBar;
        this.f = textView;
    }
}
