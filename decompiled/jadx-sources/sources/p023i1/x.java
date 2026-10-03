package p023i1;

import E.b;
import java.math.BigDecimal;
import p1.a;
import p1.c;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x {
    public static final t b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final u f4455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ x[] f4456d;

    static {
        t tVar = new t();
        b = tVar;
        u uVar = new u();
        f4455c = uVar;
        f4456d = new x[]{tVar, uVar, new x() { // from class: i1.v
            @Override // p023i1.x
            public final Number a(a aVar) throws c {
                String strT = aVar.t();
                try {
                    return Long.valueOf(Long.parseLong(strT));
                } catch (NumberFormatException unused) {
                    try {
                        Double dValueOf = Double.valueOf(strT);
                        if (dValueOf.isInfinite() || dValueOf.isNaN()) {
                            if (!aVar.f5220c) {
                                throw new c("JSON forbids NaN and infinities: " + dValueOf + "; at path " + aVar.h(true));
                            }
                        }
                        return dValueOf;
                    } catch (NumberFormatException e2) {
                        StringBuilder sbQ = b.q("Cannot parse ", strT, "; at path ");
                        sbQ.append(aVar.h(true));
                        throw new Q.c(sbQ.toString(), e2);
                    }
                }
            }
        }, new x() { // from class: i1.w
            @Override // p023i1.x
            public final Number a(a aVar) {
                String strT = aVar.t();
                try {
                    return new BigDecimal(strT);
                } catch (NumberFormatException e2) {
                    StringBuilder sbQ = b.q("Cannot parse ", strT, "; at path ");
                    sbQ.append(aVar.h(true));
                    throw new Q.c(sbQ.toString(), e2);
                }
            }
        }};
    }

    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    public static x[] values() {
        return (x[]) f4456d.clone();
    }

    public abstract Number a(a aVar);
}
