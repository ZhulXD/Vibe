package A1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: A1.v, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0040v extends ContinuationImpl {
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f239e;
    public Object f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f240h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f241i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f242j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f243k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public /* synthetic */ Object f244l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ C0043y f245m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f246n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0040v(C0043y c0043y, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f245m = c0043y;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f244l = obj;
        this.f246n |= Integer.MIN_VALUE;
        return this.f245m.d(null, this);
    }
}
