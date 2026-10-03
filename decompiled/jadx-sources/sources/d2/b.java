package d2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Lambda implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f3980c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(e eVar, c cVar, int i3) {
        super(1);
        this.b = i3;
        this.f3980c = eVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                this.f3980c.d(null);
                break;
            default:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e.g;
                e eVar = this.f3980c;
                atomicReferenceFieldUpdater.set(eVar, null);
                eVar.d(null);
                break;
        }
        return Unit.INSTANCE;
    }
}
