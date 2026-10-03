package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class P extends ContinuationImpl {
    public K b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d2.e f108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ Object f109d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Y f110e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f110e = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f109d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.f110e.e(null, this);
    }
}
