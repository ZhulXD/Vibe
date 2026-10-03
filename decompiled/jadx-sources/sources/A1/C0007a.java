package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: A1.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0007a extends ContinuationImpl {
    public C0016e0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n0 f160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f162e;
    public /* synthetic */ Object f;
    public final /* synthetic */ C0009b g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f163h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0007a(C0009b c0009b, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = c0009b;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.f163h |= Integer.MIN_VALUE;
        return this.g.o(null, null, this);
    }
}
