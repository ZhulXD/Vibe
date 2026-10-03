package A1;

import com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f61c;

    public /* synthetic */ G(Function1 function1, int i3) {
        this.b = i3;
        this.f61c = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                C0008a0 it = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return (C0008a0) this.f61c.invoke(it);
            case 1:
                return OnlineCatalogImportSupportKt.importOnlineCatalogItem$lambda$31(this.f61c, ((Integer) obj).intValue());
            default:
                return OnlineCatalogImportSupportKt.importOnlineCatalogItem$lambda$32(this.f61c, ((Integer) obj).intValue());
        }
    }
}
