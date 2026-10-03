package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: A1.w, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0041w extends ContinuationImpl {
    public C0016e0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d2.a f265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f267e;
    public final /* synthetic */ C0043y f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0041w(C0043y c0043y, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f = c0043y;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f267e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.f(null, this);
    }
}
