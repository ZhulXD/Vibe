package p028k1;

import com.bumptech.glide.manager.q;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends s {
    public final /* synthetic */ Method b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4988c;

    public o(Method method, Object obj) {
        this.b = method;
        this.f4988c = obj;
    }

    @Override // p028k1.s
    public final Object a(Class cls) {
        String strA = q.a(cls);
        if (strA != null) {
            throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
        }
        return this.b.invoke(this.f4988c, cls);
    }
}
