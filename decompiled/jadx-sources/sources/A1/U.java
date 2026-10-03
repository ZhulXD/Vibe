package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class U extends ContinuationImpl {
    public d2.e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Y f128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f129e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f128d = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f127c = obj;
        this.f129e |= Integer.MIN_VALUE;
        return this.f128d.j(this);
    }
}
