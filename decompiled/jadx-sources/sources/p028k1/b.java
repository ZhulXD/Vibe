package p028k1;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ParameterizedType, Serializable {
    public final Type b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f4960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Type[] f4961d;

    public b(Type type, Type type2, Type... typeArr) {
        Objects.requireNonNull(type2);
        if (type2 instanceof Class) {
            Class cls = (Class) type2;
            boolean z2 = true;
            boolean z3 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
            if (type == null && !z3) {
                z2 = false;
            }
            d.b(z2);
        }
        this.b = type == null ? null : d.a(type);
        this.f4960c = d.a(type2);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.f4961d = typeArr2;
        int length = typeArr2.length;
        for (int i3 = 0; i3 < length; i3++) {
            Objects.requireNonNull(this.f4961d[i3]);
            d.c(this.f4961d[i3]);
            Type[] typeArr3 = this.f4961d;
            typeArr3[i3] = d.a(typeArr3[i3]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && d.d(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f4961d.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f4960c;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.f4961d) ^ this.f4960c.hashCode();
        Type type = this.b;
        return iHashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        Type[] typeArr = this.f4961d;
        int length = typeArr.length;
        Type type = this.f4960c;
        if (length == 0) {
            return d.k(type);
        }
        StringBuilder sb = new StringBuilder((length + 1) * 30);
        sb.append(d.k(type));
        sb.append("<");
        sb.append(d.k(typeArr[0]));
        for (int i3 = 1; i3 < length; i3++) {
            sb.append(", ");
            sb.append(d.k(typeArr[i3]));
        }
        sb.append(">");
        return sb.toString();
    }
}
