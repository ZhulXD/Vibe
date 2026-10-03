package Y1;

import V1.b0;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends ContinuationImpl {
    public h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f2472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public j f2473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b0 f2474e;
    public Object f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ h f2475h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2476i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(h hVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f2475h = hVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f2476i |= Integer.MIN_VALUE;
        return this.f2475h.f(null, this);
    }
}
