package K1;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1228a;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f1228a) {
            case 0:
                return ComparisonsKt.compareValues(Integer.valueOf(d.a(((f) obj).f1233h)), Integer.valueOf(d.a(((f) obj2).f1233h)));
            case 1:
                ((h) obj2).getClass();
                ((h) obj).getClass();
                return ComparisonsKt.compareValues(0, 0);
            default:
                ((e) obj).getClass();
                ((e) obj2).getClass();
                return ComparisonsKt.compareValues(null, null);
        }
    }
}
