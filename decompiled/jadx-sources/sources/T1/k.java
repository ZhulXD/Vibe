package T1;

import com.minhub.gamehub.hub.catalog.CatalogDownloadJob;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2221c;

    public /* synthetic */ k(int i3, int i4) {
        this.b = i4;
        this.f2221c = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                ((Long) obj).longValue();
                return Integer.valueOf(this.f2221c);
            case 1:
                return CatalogDownloadQueue.runJob$lambda$13$lambda$12(this.f2221c, (CatalogDownloadJob) obj);
            case 2:
                p061x1.a it = (p061x1.a) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                int iCoerceIn = RangesKt.coerceIn(this.f2221c, 20, 140);
                it.getClass();
                int iCoerceIn2 = RangesKt.coerceIn(iCoerceIn, 20, 140);
                return p061x1.a.a(it, null, 0.0f, 0.0f, iCoerceIn2, iCoerceIn2, null, null, 0.0f, false, 1951);
            case 3:
                p061x1.a it2 = (p061x1.a) obj;
                Intrinsics.checkNotNullParameter(it2, "it");
                return p061x1.a.a(it2, null, 0.0f, 0.0f, 0, 0, null, null, RangesKt.coerceIn(this.f2221c / 100.0f, 0.1f, 1.0f), false, 1535);
            default:
                p061x1.a it3 = (p061x1.a) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                it3.getClass();
                int iCoerceIn3 = RangesKt.coerceIn(this.f2221c, 20, 140);
                return p061x1.a.a(it3, null, 0.0f, 0.0f, iCoerceIn3, iCoerceIn3, null, null, 0.0f, false, 1951);
        }
    }
}
