package Y1;

import X1.q;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends ContinuationImpl {
    public c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public q f2469c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public X1.a f2470d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2471e;
    public /* synthetic */ Object f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.g |= Integer.MIN_VALUE;
        return i.a(null, null, false, this);
    }
}
