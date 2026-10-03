package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: A1.t, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0038t extends ContinuationImpl {
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0043y f230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f231e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0038t(C0043y c0043y, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f230d = c0043y;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f229c = obj;
        this.f231e |= Integer.MIN_VALUE;
        return this.f230d.b(this);
    }
}
