package a2;

import V1.r0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z extends Lambda implements Function2 {
    public static final z b = new z(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        r0 r0Var = (r0) obj;
        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
        if (r0Var != null) {
            return r0Var;
        }
        if (element instanceof r0) {
            return (r0) element;
        }
        return null;
    }
}
