package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class O extends ContinuationImpl {
    public d2.e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Y f106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f107e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f106d = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f105c = obj;
        this.f107e |= Integer.MIN_VALUE;
        return this.f106d.d(this);
    }
}
