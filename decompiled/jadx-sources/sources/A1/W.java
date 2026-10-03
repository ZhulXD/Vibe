package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class W extends ContinuationImpl {
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function1 f136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d2.e f137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f138e;
    public final /* synthetic */ Y f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f138e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.l(null, null, this);
    }
}
