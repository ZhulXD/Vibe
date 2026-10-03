package p036n1;

import com.bumptech.glide.d;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends d {
    public final Method b = Class.class.getMethod("isRecord", null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f5151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f5152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f5153e;

    public b() throws NoSuchMethodException {
        Method method = Class.class.getMethod("getRecordComponents", null);
        this.f5151c = method;
        Class<?> componentType = method.getReturnType().getComponentType();
        this.f5152d = componentType.getMethod("getName", null);
        this.f5153e = componentType.getMethod("getType", null);
    }

    @Override // com.bumptech.glide.d
    public final String[] G(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f5151c.invoke(cls, null);
            String[] strArr = new String[objArr.length];
            for (int i3 = 0; i3 < objArr.length; i3++) {
                strArr[i3] = (String) this.f5152d.invoke(objArr[i3], null);
            }
            return strArr;
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean L(Class cls) {
        try {
            return ((Boolean) this.b.invoke(cls, null)).booleanValue();
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // com.bumptech.glide.d
    public final Method p(Class cls, Field field) {
        try {
            return cls.getMethod(field.getName(), null);
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // com.bumptech.glide.d
    public final Constructor q(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f5151c.invoke(cls, null);
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i3 = 0; i3 < objArr.length; i3++) {
                clsArr[i3] = (Class) this.f5153e.invoke(objArr[i3], null);
            }
            return cls.getDeclaredConstructor(clsArr);
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }
}
