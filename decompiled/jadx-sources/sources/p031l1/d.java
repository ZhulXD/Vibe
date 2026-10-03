package p031l1;

import E.b;
import java.io.IOException;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import p023i1.p;
import p023i1.x;
import p023i1.y;
import p028k1.h;
import p1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f5042c = new a(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f5043d = new h(0, new d(x.f4455c));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5044a = 0;
    public final Serializable b;

    public d() {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (h.f4971a >= 9) {
            arrayList.add(p028k1.d.h(2, 2));
        }
    }

    @Override // p023i1.y
    public final Object a(a aVar) {
        Date dateB;
        switch (this.f5044a) {
            case 0:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT = aVar.t();
                synchronized (((ArrayList) this.b)) {
                    try {
                        ArrayList arrayList = (ArrayList) this.b;
                        int size = arrayList.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Object obj = arrayList.get(i3);
                            i3++;
                            try {
                                dateB = ((DateFormat) obj).parse(strT);
                            } catch (ParseException unused) {
                            }
                        }
                        try {
                            dateB = p034m1.a.b(strT, new ParsePosition(0));
                        } catch (ParseException e2) {
                            StringBuilder sbQ = b.q("Failed parsing '", strT, "' as Date; at path ");
                            sbQ.append(aVar.h(true));
                            throw new p(sbQ.toString(), e2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return dateB;
            default:
                int iV = aVar.v();
                int iA = p051u.h.a(iV);
                if (iA == 5 || iA == 6) {
                    return ((x) this.b).a(aVar);
                }
                if (iA == 8) {
                    aVar.r();
                    return null;
                }
                throw new p("Expecting number, got: " + kotlin.collections.unsigned.a.q(iV) + "; at path " + aVar.h(false));
        }
    }

    @Override // p023i1.y
    public final void b(p1.b bVar, Object obj) throws IOException {
        String str;
        switch (this.f5044a) {
            case 0:
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
                bVar.n((Number) obj);
                return;
        }
    }

    public d(x xVar) {
        this.b = xVar;
    }
}
