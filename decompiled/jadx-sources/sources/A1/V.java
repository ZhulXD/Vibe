package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class V extends ContinuationImpl {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f132e;
    public String f;
    public d2.e g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f133h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Y f134i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f135j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f134i = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f133h = obj;
        this.f135j |= Integer.MIN_VALUE;
        return this.f134i.k(0, null, null, null, null, this);
    }
}
