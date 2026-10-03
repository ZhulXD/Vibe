package p039o1;

import java.sql.Date;
import java.sql.Timestamp;
import p031l1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f5164a;
    public static final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f5165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f5167e;
    public static final a f;

    static {
        boolean z2;
        try {
            Class.forName("java.sql.Date");
            z2 = true;
        } catch (ClassNotFoundException unused) {
            z2 = false;
        }
        f5164a = z2;
        if (z2) {
            b = new b(0, Date.class);
            f5165c = new b(1, Timestamp.class);
            f5166d = a.f5159c;
            f5167e = a.f5160d;
            f = a.f5161e;
            return;
        }
        b = null;
        f5165c = null;
        f5166d = null;
        f5167e = null;
        f = null;
    }
}
