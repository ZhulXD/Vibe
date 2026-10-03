package p039o1;

import E.b;
import java.io.IOException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import p023i1.p;
import p023i1.y;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p031l1.a f5159c = new p031l1.a(3);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p031l1.a f5160d = new p031l1.a(4);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p031l1.a f5161e = new p031l1.a(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5162a;
    public final Object b;

    public a(int i3) {
        this.f5162a = i3;
        switch (i3) {
            case 1:
                this.b = new SimpleDateFormat("hh:mm:ss a");
                break;
            default:
                this.b = new SimpleDateFormat("MMM d, yyyy");
                break;
        }
    }

    @Override // p023i1.y
    public final Object a(p1.a aVar) {
        Date date;
        Time time;
        switch (this.f5162a) {
            case 0:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT = aVar.t();
                try {
                    synchronized (this) {
                        date = ((SimpleDateFormat) this.b).parse(strT);
                        break;
                    }
                    return new java.sql.Date(date.getTime());
                } catch (ParseException e2) {
                    StringBuilder sbQ = b.q("Failed parsing '", strT, "' as SQL Date; at path ");
                    sbQ.append(aVar.h(true));
                    throw new p(sbQ.toString(), e2);
                }
            case 1:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT2 = aVar.t();
                try {
                    synchronized (this) {
                        try {
                            time = new Time(((SimpleDateFormat) this.b).parse(strT2).getTime());
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return time;
                } catch (ParseException e3) {
                    StringBuilder sbQ2 = b.q("Failed parsing '", strT2, "' as SQL Time; at path ");
                    sbQ2.append(aVar.h(true));
                    throw new p(sbQ2.toString(), e3);
                }
            default:
                Date date2 = (Date) ((y) this.b).a(aVar);
                if (date2 != null) {
                    return new Timestamp(date2.getTime());
                }
                return null;
        }
    }

    @Override // p023i1.y
    public final void b(p1.b bVar, Object obj) throws IOException {
        String str;
        String str2;
        switch (this.f5162a) {
            case 0:
                java.sql.Date date = (java.sql.Date) obj;
                if (date == null) {
                    bVar.i();
                    return;
                }
                synchronized (this) {
                    str = ((SimpleDateFormat) this.b).format((Date) date);
                    break;
                }
                bVar.o(str);
                return;
            case 1:
                Time time = (Time) obj;
                if (time == null) {
                    bVar.i();
                    return;
                }
                synchronized (this) {
                    str2 = ((SimpleDateFormat) this.b).format((Date) time);
                    break;
                }
                bVar.o(str2);
                return;
            default:
                ((y) this.b).b(bVar, (Timestamp) obj);
                return;
        }
    }

    public a(y yVar) {
        this.f5162a = 2;
        this.b = yVar;
    }
}
