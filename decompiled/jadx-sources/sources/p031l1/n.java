package p031l1;

import com.bumptech.glide.manager.q;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import p023i1.h;
import p023i1.l;
import p023i1.p;
import p023i1.y;
import p023i1.z;
import p026j1.a;
import p026j1.b;
import p028k1.d;
import p028k1.g;
import p036n1.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n implements z {
    public final q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f5065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g f5066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f5067e;

    public n(q qVar, h hVar, g gVar, c cVar, List list) {
        this.b = qVar;
        this.f5065c = hVar;
        this.f5066d = gVar;
        this.f5067e = list;
    }

    @Override // p023i1.z
    public final y a(l lVar, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        d.e(this.f5067e);
        return c.f5154a.L(rawType) ? new m(rawType, b(lVar, typeToken, rawType, true)) : new l(this.b.d(typeToken), b(lVar, typeToken, rawType, false));
    }

    public final LinkedHashMap b(l lVar, TypeToken typeToken, Class cls, boolean z2) {
        Method methodP;
        List listSingletonList;
        int i3;
        int i4;
        boolean z3;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls.isInterface()) {
            TypeToken typeToken2 = typeToken;
            Class rawType = cls;
            while (rawType != Object.class) {
                Field[] declaredFields = rawType.getDeclaredFields();
                if (rawType != cls && declaredFields.length > 0) {
                    d.e(this.f5067e);
                }
                int length = declaredFields.length;
                boolean z4 = false;
                int i5 = 0;
                while (i5 < length) {
                    int i6 = length;
                    Field field = declaredFields[i5];
                    boolean zC = this.c(field, true);
                    boolean zC2 = this.c(field, z4);
                    if (zC || zC2) {
                        if (!z2) {
                            methodP = null;
                        } else if (Modifier.isStatic(field.getModifiers())) {
                            zC2 = z4;
                            methodP = null;
                        } else {
                            methodP = c.f5154a.p(rawType, field);
                            c.e(methodP);
                            if (methodP.getAnnotation(b.class) != null && field.getAnnotation(b.class) == null) {
                                throw new p(E.b.m("@SerializedName on ", c.d(methodP, z4), " is not supported"));
                            }
                        }
                        if (methodP == null) {
                            c.e(field);
                        }
                        boolean z5 = true;
                        Type typeJ = d.j(typeToken2.getType(), rawType, field.getGenericType(), new HashMap());
                        b bVar = (b) field.getAnnotation(b.class);
                        if (bVar == null) {
                            listSingletonList = Collections.singletonList(this.f5065c.b(field));
                        } else {
                            String strValue = bVar.value();
                            String[] strArrAlternate = bVar.alternate();
                            if (strArrAlternate.length == 0) {
                                listSingletonList = Collections.singletonList(strValue);
                            } else {
                                ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
                                arrayList.add(strValue);
                                Collections.addAll(arrayList, strArrAlternate);
                                listSingletonList = arrayList;
                            }
                        }
                        int size = listSingletonList.size();
                        j jVar = null;
                        int i7 = 0;
                        while (i7 < size) {
                            String str = (String) listSingletonList.get(i7);
                            if (i7 != 0) {
                                zC = false;
                            }
                            int i8 = i5;
                            boolean z6 = zC2;
                            TypeToken<?> typeToken3 = TypeToken.get(typeJ);
                            Class<? super Object> rawType2 = typeToken3.getRawType();
                            boolean z7 = (rawType2 == null || !rawType2.isPrimitive()) ? false : z5;
                            int modifiers = field.getModifiers();
                            boolean z8 = (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers)) ? z5 : false;
                            List list = listSingletonList;
                            a aVar = (a) field.getAnnotation(a.class);
                            y yVarB = aVar != null ? c.b(this.b, lVar, typeToken3, aVar) : null;
                            int i9 = i7;
                            boolean z9 = yVarB != null ? z5 : false;
                            if (yVarB == null) {
                                yVarB = lVar.d(typeToken3);
                            }
                            j jVar2 = jVar;
                            boolean z10 = z5;
                            int i10 = size;
                            boolean z11 = zC;
                            jVar = (j) linkedHashMap.put(str, new j(str, field, z11, z6, methodP, z9, yVarB, lVar, typeToken3, z7, z8));
                            if (jVar2 != null) {
                                jVar = jVar2;
                            }
                            i7 = i9 + 1;
                            this = this;
                            lVar = lVar;
                            zC = z11;
                            zC2 = z6;
                            methodP = methodP;
                            size = i10;
                            i5 = i8;
                            z5 = z10;
                            i6 = i6;
                            listSingletonList = list;
                        }
                        i3 = i5;
                        i4 = i6;
                        j jVar3 = jVar;
                        z3 = false;
                        if (jVar3 != null) {
                            throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + jVar3.f5052a + "'; conflict is caused by fields " + c.c(jVar3.b) + " and " + c.c(field));
                        }
                    } else {
                        z3 = z4;
                        i3 = i5;
                        i4 = i6;
                    }
                    i5 = i3 + 1;
                    this = this;
                    lVar = lVar;
                    declaredFields = declaredFields;
                    length = i4;
                    z4 = z3;
                }
                typeToken2 = TypeToken.get(d.j(typeToken2.getType(), rawType, rawType.getGenericSuperclass(), new HashMap()));
                rawType = typeToken2.getRawType();
            }
        }
        return linkedHashMap;
    }

    public final boolean c(Field field, boolean z2) {
        Class<?> type = field.getType();
        g gVar = this.f5066d;
        gVar.getClass();
        if (g.c(type)) {
            return false;
        }
        gVar.b(z2);
        if ((136 & field.getModifiers()) != 0 || field.isSynthetic() || g.c(field.getType())) {
            return false;
        }
        List list = z2 ? gVar.b : gVar.f4970c;
        if (list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw E.b.g(it);
        }
        return true;
    }
}
