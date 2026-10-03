package p028k1;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;
import java.util.EnumSet;
import p023i1.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements n {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Type f4964c;

    public /* synthetic */ e(Type type, int i3) {
        this.b = i3;
        this.f4964c = type;
    }

    @Override // p028k1.n
    public final Object n() {
        switch (this.b) {
            case 0:
                Type type = this.f4964c;
                if (!(type instanceof ParameterizedType)) {
                    throw new p("Invalid EnumSet type: " + type.toString());
                }
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return EnumSet.noneOf((Class) type2);
                }
                throw new p("Invalid EnumSet type: " + type.toString());
            default:
                Type type3 = this.f4964c;
                if (!(type3 instanceof ParameterizedType)) {
                    throw new p("Invalid EnumMap type: " + type3.toString());
                }
                Type type4 = ((ParameterizedType) type3).getActualTypeArguments()[0];
                if (type4 instanceof Class) {
                    return new EnumMap((Class) type4);
                }
                throw new p("Invalid EnumMap type: " + type3.toString());
        }
    }
}
