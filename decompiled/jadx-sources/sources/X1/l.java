package X1;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends ContinuationImpl {
    public Lambda b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f2371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2372d;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f2371c = obj;
        this.f2372d |= Integer.MIN_VALUE;
        return n.a(null, null, this);
    }
}
