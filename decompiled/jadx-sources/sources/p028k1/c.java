package p028k1;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements WildcardType, Serializable {
    public final Type b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f4962c;

    public c(Type[] typeArr, Type[] typeArr2) {
        d.b(typeArr2.length <= 1);
        d.b(typeArr.length == 1);
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            d.c(typeArr[0]);
            this.f4962c = null;
            this.b = d.a(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        d.c(typeArr2[0]);
        d.b(typeArr[0] == Object.class);
        this.f4962c = d.a(typeArr2[0]);
        this.b = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && d.d(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f4962c;
        return type != null ? new Type[]{type} : d.f4963a;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.b};
    }

    public final int hashCode() {
        Type type = this.f4962c;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.b.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f4962c;
        if (type != null) {
            return "? super " + d.k(type);
        }
        Type type2 = this.b;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + d.k(type2);
    }
}
