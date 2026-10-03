package kotlin.collections.unsigned;

import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4993c;

    public /* synthetic */ b(int i3, Object obj) {
        this.b = i3;
        this.f4993c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return UIntArray.m168iteratorimpl((int[]) this.f4993c);
            case 1:
                return ULongArray.m247iteratorimpl((long[]) this.f4993c);
            case 2:
                return UByteArray.m89iteratorimpl((byte[]) this.f4993c);
            default:
                return UShortArray.m352iteratorimpl((short[]) this.f4993c);
        }
    }
}
