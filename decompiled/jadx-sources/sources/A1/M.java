package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M extends ContinuationImpl {
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f91c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f92d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f93e;
    public Object f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f94h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Y f95i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f96j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f95i = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f94h = obj;
        this.f96j |= Integer.MIN_VALUE;
        return this.f95i.b(null, this);
    }
}
