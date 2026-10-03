package Y1;

import A1.C0013d;
import X1.p;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends ContinuationImpl {
    public p b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f2466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0013d f2467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2468e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(C0013d c0013d, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f2467d = c0013d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f2466c = obj;
        this.f2468e |= Integer.MIN_VALUE;
        return this.f2467d.h(null, this);
    }
}
