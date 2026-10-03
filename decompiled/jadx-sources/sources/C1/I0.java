package C1;

import V1.InterfaceC0207x;
import com.minhub.gamehub.hub.catalog.PluginInstaller;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import java.io.File;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class I0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ File b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemotePluginCatalogItem f443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ File f444d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I0(File file, RemotePluginCatalogItem remotePluginCatalogItem, File file2, Continuation continuation) {
        super(2, continuation);
        this.b = file;
        this.f443c = remotePluginCatalogItem;
        this.f444d = file2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new I0(this.b, this.f443c, this.f444d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((I0) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        return PluginInstaller.INSTANCE.install(this.b, this.f443c, this.f444d);
    }
}
