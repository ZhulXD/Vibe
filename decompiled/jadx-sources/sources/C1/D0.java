package C1;

import V1.InterfaceC0207x;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogResponse;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import p064y1.C0429y1;
import p064y1.EnumC0420v1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class D0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ProgressBar f407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f408e;
    public final /* synthetic */ TextView f;
    public final /* synthetic */ GameDetailActivity g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f409h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f410i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D0(ProgressBar progressBar, String str, TextView textView, GameDetailActivity gameDetailActivity, C0076j0 c0076j0, View view, Continuation continuation) {
        super(2, continuation);
        this.f407d = progressBar;
        this.f408e = str;
        this.f = textView;
        this.g = gameDetailActivity;
        this.f409h = c0076j0;
        this.f410i = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new D0((EnumC0420v1) this.f409h, this.f408e, this.g, (L1.a) this.f410i, this.f407d, this.f, continuation);
            default:
                return new D0(this.f407d, this.f408e, this.f, this.g, (C0076j0) this.f409h, (View) this.f410i, continuation);
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
        return ((D0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objI;
        int i3 = this.b;
        Object obj2 = this.f410i;
        Object obj3 = this.f409h;
        ProgressBar progressBar = this.f407d;
        TextView textView = this.f;
        switch (i3) {
            case 0:
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f406c;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0429y1 c0429y1 = C0429y1.f6409a;
                    GameDetailActivity gameDetailActivity = this.g;
                    this.f406c = 1;
                    objI = C0429y1.f6409a.i((EnumC0420v1) obj3, this.f408e, gameDetailActivity, new A1.r(gameDetailActivity, progressBar, textView, 2), (L1.a) obj2, this);
                    if (objI == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i4 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objI = ((Result) obj).getValue();
                }
                return Result.m8boximpl(objI);
            default:
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i5 = this.f406c;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    c2.c cVar = V1.H.b;
                    O0 o2 = new O0(this.f408e, null, 0);
                    this.f406c = 1;
                    obj = V1.A.e(cVar, o2, this);
                    if (obj == coroutine_suspended2) {
                        return coroutine_suspended2;
                    }
                } else {
                    if (i5 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Object value = ((Result) obj).getValue();
                progressBar.setVisibility(8);
                C0076j0 c0076j0 = (C0076j0) obj3;
                View view = (View) obj2;
                boolean zM16isSuccessimpl = Result.m16isSuccessimpl(value);
                GameDetailActivity gameDetailActivity2 = this.g;
                if (zM16isSuccessimpl) {
                    RemotePluginCatalogResponse remotePluginCatalogResponse = (RemotePluginCatalogResponse) value;
                    if (remotePluginCatalogResponse.getItems().isEmpty()) {
                        textView.setText(gameDetailActivity2.getString(R.string.plugin_catalog_empty));
                        textView.setVisibility(0);
                    } else {
                        List<RemotePluginCatalogItem> list = remotePluginCatalogResponse.getItems();
                        Intrinsics.checkNotNullParameter(list, "list");
                        c0076j0.f = list;
                        c0076j0.c();
                        view.setVisibility(0);
                    }
                }
                if (Result.m12exceptionOrNullimpl(value) != null) {
                    textView.setText(gameDetailActivity2.getString(R.string.plugin_catalog_error));
                    textView.setVisibility(0);
                }
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D0(EnumC0420v1 enumC0420v1, String str, GameDetailActivity gameDetailActivity, L1.a aVar, ProgressBar progressBar, TextView textView, Continuation continuation) {
        super(2, continuation);
        this.f409h = enumC0420v1;
        this.f408e = str;
        this.g = gameDetailActivity;
        this.f410i = aVar;
        this.f407d = progressBar;
        this.f = textView;
    }
}
