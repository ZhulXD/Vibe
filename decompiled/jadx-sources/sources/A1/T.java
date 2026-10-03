package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class T extends ContinuationImpl {
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f122d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public L0 f123e;
    public d2.e f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f124h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Y f125i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f126j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(Y y2, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f125i = y2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f124h = obj;
        this.f126j |= Integer.MIN_VALUE;
        return this.f125i.i(null, null, null, 0, null, this);
    }
}
