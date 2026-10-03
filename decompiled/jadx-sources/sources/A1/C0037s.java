package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: A1.s, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0037s extends ContinuationImpl {
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d2.a f224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f226e;
    public int f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C0043y f227h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f228i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0037s(C0043y c0043y, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f227h = c0043y;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f228i |= Integer.MIN_VALUE;
        return this.f227h.a(null, this);
    }
}
