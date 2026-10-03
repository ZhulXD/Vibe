package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.ArrayIteratorsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4992c;

    public /* synthetic */ b(int i3, Object obj) {
        this.b = i3;
        this.f4992c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return ArrayIteratorKt.iterator((Object[]) this.f4992c);
            case 1:
                return ArrayIteratorsKt.iterator((int[]) this.f4992c);
            case 2:
                return ArrayIteratorsKt.iterator((double[]) this.f4992c);
            case 3:
                return ArrayIteratorsKt.iterator((char[]) this.f4992c);
            case 4:
                return ArrayIteratorsKt.iterator((short[]) this.f4992c);
            case 5:
                return ArrayIteratorsKt.iterator((float[]) this.f4992c);
            case 6:
                return ArrayIteratorsKt.iterator((boolean[]) this.f4992c);
            case 7:
                return ArrayIteratorsKt.iterator((long[]) this.f4992c);
            case 8:
                return ArrayIteratorsKt.iterator((byte[]) this.f4992c);
            default:
                return ((Iterable) this.f4992c).iterator();
        }
    }
}
