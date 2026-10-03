package a2;

import V1.r0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f2566a = new w("NO_THREAD_ELEMENTS", 0);
    public static final y b = y.b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z f2567c = z.b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final A f2568d = A.b;

    public static final void a(CoroutineContext coroutineContext, Object obj) {
        if (obj == f2566a) {
            return;
        }
        if (!(obj instanceof D)) {
            Object objFold = coroutineContext.fold(null, f2567c);
            Intrinsics.checkNotNull(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            E.b.w(objFold);
            throw null;
        }
        D d3 = (D) obj;
        r0[] r0VarArr = d3.f2571c;
        int length = r0VarArr.length - 1;
        if (length < 0) {
            return;
        }
        r0 r0Var = r0VarArr[length];
        Intrinsics.checkNotNull(null);
        Object obj2 = d3.b[length];
        throw null;
    }

    public static final Object b(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = coroutineContext.fold(0, b);
            Intrinsics.checkNotNull(obj);
        }
        if (obj == 0) {
            return f2566a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new D(((Number) obj).intValue(), coroutineContext), f2568d);
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        E.b.w(obj);
        throw null;
    }
}
