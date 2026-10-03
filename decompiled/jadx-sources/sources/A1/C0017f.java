package A1;

import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Function;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: A1.f, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0017f implements Function {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f188a;
    public final /* synthetic */ Function1 b;

    public /* synthetic */ C0017f(Function1 function1, int i3) {
        this.f188a = i3;
        this.b = function1;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f188a) {
            case 0:
                return ((C0015e) this.b).invoke(obj);
            default:
                return (ReentrantLock) ((C0015e) this.b).invoke(obj);
        }
    }
}
