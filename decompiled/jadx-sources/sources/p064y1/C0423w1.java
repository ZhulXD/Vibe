package p064y1;

import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: y1.w1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0423w1 extends ContinuationImpl {
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f6391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f6392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f6393e;
    public Object f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f6394h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f6395i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C0429y1 f6396j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6397k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0423w1(C0429y1 c0429y1, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f6396j = c0429y1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f6395i = obj;
        this.f6397k |= Integer.MIN_VALUE;
        Object objI = this.f6396j.i(null, null, null, null, null, this);
        return objI == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objI : Result.m8boximpl(objI);
    }
}
