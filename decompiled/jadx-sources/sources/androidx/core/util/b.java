package androidx.core.util;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2858a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(int i3, Object obj) {
        this.f2858a = i3;
        this.b = obj;
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f2858a) {
            case 0:
                return this.b.equals(obj);
            default:
                return ((Predicate) this.b).lambda$negate$1(obj);
        }
    }
}
