package p031l1;

import E.b;
import com.bumptech.glide.d;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import p036n1.c;
import p1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashMap f5062e;
    public final Constructor b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f5063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f5064d;

    static {
        HashMap map = new HashMap();
        map.put(Byte.TYPE, (byte) 0);
        map.put(Short.TYPE, (short) 0);
        map.put(Integer.TYPE, 0);
        map.put(Long.TYPE, 0L);
        map.put(Float.TYPE, Float.valueOf(0.0f));
        map.put(Double.TYPE, Double.valueOf(0.0d));
        map.put(Character.TYPE, (char) 0);
        map.put(Boolean.TYPE, Boolean.FALSE);
        f5062e = map;
    }

    public m(Class cls, LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
        this.f5064d = new HashMap();
        d dVar = c.f5154a;
        Constructor constructorQ = dVar.q(cls);
        this.b = constructorQ;
        c.e(constructorQ);
        String[] strArrG = dVar.G(cls);
        for (int i3 = 0; i3 < strArrG.length; i3++) {
            this.f5064d.put(strArrG[i3], Integer.valueOf(i3));
        }
        Class<?>[] parameterTypes = this.b.getParameterTypes();
        this.f5063c = new Object[parameterTypes.length];
        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
            this.f5063c[i4] = f5062e.get(parameterTypes[i4]);
        }
    }

    @Override // p031l1.k
    public final Object c() {
        return (Object[]) this.f5063c.clone();
    }

    @Override // p031l1.k
    public final Object d(Object obj) {
        Object[] objArr = (Object[]) obj;
        Constructor constructor = this.b;
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException e2) {
            d dVar = c.f5154a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw new RuntimeException("Failed to invoke constructor '" + c.b(constructor) + "' with args " + Arrays.toString(objArr), e);
        } catch (InstantiationException e4) {
            e = e4;
            throw new RuntimeException("Failed to invoke constructor '" + c.b(constructor) + "' with args " + Arrays.toString(objArr), e);
        } catch (InvocationTargetException e5) {
            throw new RuntimeException("Failed to invoke constructor '" + c.b(constructor) + "' with args " + Arrays.toString(objArr), e5.getCause());
        }
    }

    @Override // p031l1.k
    public final void e(Object obj, a aVar, j jVar) {
        Object[] objArr = (Object[]) obj;
        String str = jVar.f5053c;
        Integer num = (Integer) this.f5064d.get(str);
        if (num == null) {
            throw new IllegalStateException("Could not find the index in the constructor '" + c.b(this.b) + "' for field with name '" + str + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
        int iIntValue = num.intValue();
        Object objA = jVar.f5056h.a(aVar);
        if (objA != null || !jVar.f5059k) {
            objArr[iIntValue] = objA;
        } else {
            StringBuilder sbQ = b.q("null is not allowed as value for record component '", str, "' of primitive type; at path ");
            sbQ.append(aVar.h(false));
            throw new Q.c(sbQ.toString());
        }
    }
}
