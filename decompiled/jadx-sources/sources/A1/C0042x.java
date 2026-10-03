package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: A1.x, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0042x extends ContinuationImpl {
    public o0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0043y f272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f273e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0042x(C0043y c0043y, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f272d = c0043y;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f271c = obj;
        this.f273e |= Integer.MIN_VALUE;
        return this.f272d.g(this);
    }
}
