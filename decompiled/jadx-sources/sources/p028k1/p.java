package p028k1;

import com.bumptech.glide.manager.q;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends s {
    public final /* synthetic */ Method b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4989c;

    public p(int i3, Method method) {
        this.b = method;
        this.f4989c = i3;
    }

    @Override // p028k1.s
    public final Object a(Class cls) {
        String strA = q.a(cls);
        if (strA != null) {
            throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
        }
        return this.b.invoke(null, cls, Integer.valueOf(this.f4989c));
    }
}
