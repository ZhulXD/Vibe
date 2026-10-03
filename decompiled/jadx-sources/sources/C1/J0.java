package C1;

import V1.InterfaceC0207x;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.PluginInstaller;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import java.io.File;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class J0 extends SuspendLambda implements Function2 {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemotePluginCatalogItem f451e;
    public final /* synthetic */ Game f;
    public final /* synthetic */ File g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J0(File file, GameDetailActivity gameDetailActivity, RemotePluginCatalogItem remotePluginCatalogItem, Game game, File file2, Continuation continuation) {
        super(2, continuation);
        this.f449c = file;
        this.f450d = gameDetailActivity;
        this.f451e = remotePluginCatalogItem;
        this.f = game;
        this.g = file2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new J0(this.f449c, this.f450d, this.f451e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((J0) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.b;
        File file = this.f449c;
        RemotePluginCatalogItem remotePluginCatalogItem = this.f451e;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            c2.c cVar = V1.H.b;
            I0 i4 = new I0(this.g, remotePluginCatalogItem, file, null);
            this.b = 1;
            obj = V1.A.e(cVar, i4, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        PluginInstaller.InstallResult installResult = (PluginInstaller.InstallResult) obj;
        FilesKt.deleteRecursively(file);
        boolean success = installResult.getSuccess();
        GameDetailActivity gameDetailActivity = this.f450d;
        if (success) {
            Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.plugin_catalog_install_success, remotePluginCatalogItem.getTitle()), 0).show();
            com.bumptech.glide.c.c(gameDetailActivity, this.f, true);
        } else {
            String message = installResult.getMessage();
            if (StringsKt.isBlank(message)) {
                message = "unknown error";
            }
            Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.plugin_catalog_install_failed, message), 1).show();
        }
        return Unit.INSTANCE;
    }
}
