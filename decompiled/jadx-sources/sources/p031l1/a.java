package p031l1;

import com.google.gson.reflect.TypeToken;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;
import p023i1.l;
import p023i1.y;
import p023i1.z;
import p028k1.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements z {
    public final /* synthetic */ int b;

    public /* synthetic */ a(int i3) {
        this.b = i3;
    }

    @Override // p023i1.z
    public final y a(l lVar, TypeToken typeToken) {
        switch (this.b) {
            case 0:
                Type type = typeToken.getType();
                boolean z2 = type instanceof GenericArrayType;
                if (!z2 && (!(type instanceof Class) || !((Class) type).isArray())) {
                    return null;
                }
                Type genericComponentType = z2 ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
                return new b(lVar, lVar.d(TypeToken.get(genericComponentType)), d.g(genericComponentType));
            case 1:
                if (typeToken.getRawType() == Date.class) {
                    return new d();
                }
                return null;
            case 2:
                Class rawType = typeToken.getRawType();
                if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                    return null;
                }
                if (!rawType.isEnum()) {
                    rawType = rawType.getSuperclass();
                }
                return new g(rawType);
            case 3:
                if (typeToken.getRawType() == java.sql.Date.class) {
                    return new p039o1.a(0);
                }
                return null;
            case 4:
                if (typeToken.getRawType() == Time.class) {
                    return new p039o1.a(1);
                }
                return null;
            default:
                if (typeToken.getRawType() == Timestamp.class) {
                    return new p039o1.a(lVar.d(TypeToken.get(Date.class)));
                }
                return null;
        }
    }
}
