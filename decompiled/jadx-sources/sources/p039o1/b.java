package p039o1;

import java.sql.Timestamp;
import java.util.Date;
import p031l1.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5163c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i3, Class cls) {
        super(cls);
        this.f5163c = i3;
    }

    @Override // p031l1.f
    public final Date a(Date date) {
        switch (this.f5163c) {
            case 0:
                return new java.sql.Date(date.getTime());
            default:
                return new Timestamp(date.getTime());
        }
    }
}
