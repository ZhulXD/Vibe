package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Q extends ContinuationImpl {
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d2.e f113e;
    public int f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Y f114h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f115i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f114h = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f115i |= Integer.MIN_VALUE;
        return this.f114h.g(null, null, null, 0, this);
    }
}
