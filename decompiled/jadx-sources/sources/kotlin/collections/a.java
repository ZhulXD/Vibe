package kotlin.collections;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KMappedMarker f4991c;

    public /* synthetic */ a(KMappedMarker kMappedMarker, int i3) {
        this.b = i3;
        this.f4991c = kMappedMarker;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AbstractCollection.toString$lambda$2((AbstractCollection) this.f4991c, obj);
            default:
                return AbstractMap.toString$lambda$2((AbstractMap) this.f4991c, (Map.Entry) obj);
        }
    }
}
