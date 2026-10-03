package kotlin.comparisons;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4995a;
    public final /* synthetic */ Comparator b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Comparator f4996c;

    public /* synthetic */ b(Comparator comparator, Comparator comparator2, int i3) {
        this.f4995a = i3;
        this.b = comparator;
        this.f4996c = comparator2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f4995a) {
            case 0:
                return ComparisonsKt__ComparisonsKt.thenDescending$lambda$2$ComparisonsKt__ComparisonsKt(this.b, this.f4996c, obj, obj2);
            default:
                return ComparisonsKt__ComparisonsKt.then$lambda$1$ComparisonsKt__ComparisonsKt(this.b, this.f4996c, obj, obj2);
        }
    }
}
