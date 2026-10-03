package p031l1;

import com.google.gson.reflect.TypeToken;
import java.util.Calendar;
import java.util.GregorianCalendar;
import p023i1.i;
import p023i1.l;
import p023i1.x;
import p023i1.y;
import p023i1.z;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements z {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5049c;

    public /* synthetic */ h(int i3, Object obj) {
        this.b = i3;
        this.f5049c = obj;
    }

    @Override // p023i1.z
    public final y a(l lVar, TypeToken typeToken) {
        switch (this.b) {
            case 0:
                if (typeToken.getRawType() == Number.class) {
                    return (d) this.f5049c;
                }
                return null;
            case 1:
                if (typeToken.getRawType() == Object.class) {
                    return new i(lVar, (x) this.f5049c);
                }
                return null;
            default:
                Class rawType = typeToken.getRawType();
                if (rawType == Calendar.class || rawType == GregorianCalendar.class) {
                    return (i) this.f5049c;
                }
                return null;
        }
    }

    public String toString() {
        switch (this.b) {
            case 2:
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + ((i) this.f5049c) + "]";
            default:
                return super.toString();
        }
    }
}
