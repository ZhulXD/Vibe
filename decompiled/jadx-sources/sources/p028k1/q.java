package p028k1;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends s {
    public final /* synthetic */ Method b;

    public q(Method method) {
        this.b = method;
    }

    @Override // p028k1.s
    public final Object a(Class cls) {
        String strA = com.bumptech.glide.manager.q.a(cls);
        if (strA != null) {
            throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
        }
        return this.b.invoke(null, cls, Object.class);
    }
}
