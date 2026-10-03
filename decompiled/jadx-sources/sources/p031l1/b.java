package p031l1;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import p023i1.l;
import p023i1.p;
import p023i1.y;
import p028k1.d;
import p028k1.h;
import p028k1.n;
import p1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends y {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5038d = new a(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5039a = 0;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5040c;

    public b(l lVar, y yVar, Class cls) {
        this.b = new g(lVar, yVar, cls);
        this.f5040c = cls;
    }

    @Override // p023i1.y
    public final Object a(a aVar) {
        Date dateB;
        switch (this.f5039a) {
            case 0:
                Class cls = (Class) this.f5040c;
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.i()) {
                    arrayList.add(((y) ((g) this.b).f5047c).a(aVar));
                }
                aVar.e();
                int size = arrayList.size();
                if (!cls.isPrimitive()) {
                    return arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, size));
                }
                Object objNewInstance = Array.newInstance((Class<?>) cls, size);
                for (int i3 = 0; i3 < size; i3++) {
                    Array.set(objNewInstance, i3, arrayList.get(i3));
                }
                return objNewInstance;
            case 1:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                Collection collection = (Collection) ((n) this.f5040c).n();
                aVar.a();
                while (aVar.i()) {
                    collection.add(((y) ((g) this.b).f5047c).a(aVar));
                }
                aVar.e();
                return collection;
            case 2:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT = aVar.t();
                synchronized (((ArrayList) this.b)) {
                    try {
                        ArrayList arrayList2 = (ArrayList) this.b;
                        int size2 = arrayList2.size();
                        int i4 = 0;
                        while (i4 < size2) {
                            Object obj = arrayList2.get(i4);
                            i4++;
                            try {
                                dateB = ((DateFormat) obj).parse(strT);
                            } catch (ParseException unused) {
                            }
                        }
                        try {
                            dateB = p034m1.a.b(strT, new ParsePosition(0));
                        } catch (ParseException e2) {
                            StringBuilder sbQ = E.b.q("Failed parsing '", strT, "' as Date; at path ");
                            sbQ.append(aVar.h(true));
                            throw new p(sbQ.toString(), e2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return ((f) this.f5040c).a(dateB);
            default:
                Class cls2 = (Class) this.f5040c;
                Object objA = ((o) this.b).f5069d.a(aVar);
                if (objA == null || cls2.isInstance(objA)) {
                    return objA;
                }
                throw new p("Expected a " + cls2.getName() + " but was " + objA.getClass().getName() + "; at path " + aVar.h(true));
        }
    }

    @Override // p023i1.y
    public final void b(p1.b bVar, Object obj) throws IOException {
        String str;
        switch (this.f5039a) {
            case 0:
                if (obj == null) {
                    bVar.i();
                    return;
                }
                bVar.b();
                int length = Array.getLength(obj);
                for (int i3 = 0; i3 < length; i3++) {
                    ((g) this.b).b(bVar, Array.get(obj, i3));
                }
                bVar.e();
                return;
            case 1:
                Collection collection = (Collection) obj;
                if (collection == null) {
                    bVar.i();
                    return;
                }
                bVar.b();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    ((g) this.b).b(bVar, it.next());
                }
                bVar.e();
                return;
            case 2:
                Date date = (Date) obj;
                if (date == null) {
                    bVar.i();
                    return;
                }
                DateFormat dateFormat = (DateFormat) ((ArrayList) this.b).get(0);
                synchronized (((ArrayList) this.b)) {
                    str = dateFormat.format(date);
                    break;
                }
                bVar.o(str);
                return;
            default:
                ((o) this.b).f5069d.b(bVar, obj);
                return;
        }
    }

    public String toString() {
        switch (this.f5039a) {
            case 2:
                DateFormat dateFormat = (DateFormat) ((ArrayList) this.b).get(0);
                if (dateFormat instanceof SimpleDateFormat) {
                    return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
                }
                return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
            default:
                return super.toString();
        }
    }

    public b(l lVar, Type type, y yVar, n nVar) {
        this.b = new g(lVar, yVar, type);
        this.f5040c = nVar;
    }

    public b(f fVar, int i3, int i4) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        Objects.requireNonNull(fVar);
        this.f5040c = fVar;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i3, i4, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i3, i4));
        }
        if (h.f4971a >= 9) {
            arrayList.add(d.h(i3, i4));
        }
    }

    public b(o oVar, Class cls) {
        this.b = oVar;
        this.f5040c = cls;
    }
}
