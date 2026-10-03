package p031l1;

import com.bumptech.glide.manager.q;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import p023i1.j;
import p023i1.l;
import p023i1.y;
import p023i1.z;
import p026j1.a;
import p028k1.d;
import p028k1.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements z {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f5041c;

    public /* synthetic */ c(q qVar, int i3) {
        this.b = i3;
        this.f5041c = qVar;
    }

    public static y b(q qVar, l lVar, TypeToken typeToken, a aVar) {
        y yVarA;
        Object objN = qVar.d(TypeToken.get(aVar.value())).n();
        boolean zNullSafe = aVar.nullSafe();
        if (objN instanceof y) {
            yVarA = (y) objN;
        } else {
            if (!(objN instanceof z)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objN.getClass().getName() + " as a @JsonAdapter for " + typeToken.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            yVarA = ((z) objN).a(lVar, typeToken);
        }
        return (yVarA == null || !zNullSafe) ? yVarA : new j(yVarA, 2);
    }

    @Override // p023i1.z
    public final y a(l lVar, TypeToken typeToken) {
        Type[] actualTypeArguments;
        int i3 = this.b;
        Type type = Object.class;
        q qVar = this.f5041c;
        switch (i3) {
            case 0:
                Type type2 = typeToken.getType();
                Class rawType = typeToken.getRawType();
                if (!Collection.class.isAssignableFrom(rawType)) {
                    return null;
                }
                if (type2 instanceof WildcardType) {
                    type2 = ((WildcardType) type2).getUpperBounds()[0];
                }
                d.b(Collection.class.isAssignableFrom(rawType));
                Type typeJ = d.j(type2, rawType, d.f(type2, rawType, Collection.class), new HashMap());
                type = typeJ instanceof ParameterizedType ? ((ParameterizedType) typeJ).getActualTypeArguments()[0] : Object.class;
                return new b(lVar, type, lVar.d(TypeToken.get(type)), qVar.d(typeToken));
            case 1:
                a aVar = (a) typeToken.getRawType().getAnnotation(a.class);
                if (aVar == null) {
                    return null;
                }
                return b(qVar, lVar, typeToken, aVar);
            default:
                Type type3 = typeToken.getType();
                Class rawType2 = typeToken.getRawType();
                if (!Map.class.isAssignableFrom(rawType2)) {
                    return null;
                }
                if (type3 == Properties.class) {
                    actualTypeArguments = new Type[]{String.class, String.class};
                } else {
                    if (type3 instanceof WildcardType) {
                        type3 = ((WildcardType) type3).getUpperBounds()[0];
                    }
                    d.b(Map.class.isAssignableFrom(rawType2));
                    Type typeJ2 = d.j(type3, rawType2, d.f(type3, rawType2, Map.class), new HashMap());
                    actualTypeArguments = typeJ2 instanceof ParameterizedType ? ((ParameterizedType) typeJ2).getActualTypeArguments() : new Type[]{type, type};
                }
                Type type4 = actualTypeArguments[0];
                y yVarD = (type4 == Boolean.TYPE || type4 == Boolean.class) ? s.f5077c : lVar.d(TypeToken.get(type4));
                y yVarD2 = lVar.d(TypeToken.get(actualTypeArguments[1]));
                n nVarD = qVar.d(typeToken);
                Type[] typeArr = actualTypeArguments;
                return new g(this, lVar, typeArr[0], yVarD, typeArr[1], yVarD2, nVarD);
        }
    }
}
