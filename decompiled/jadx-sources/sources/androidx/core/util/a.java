package androidx.core.util;

import androidx.core.content.IntentSanitizer;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2856a;
    public final /* synthetic */ Predicate b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2857c;

    public /* synthetic */ a(Predicate predicate, Predicate predicate2, int i3) {
        this.f2856a = i3;
        this.b = predicate;
        this.f2857c = predicate2;
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f2856a) {
            case 0:
                return this.b.lambda$or$2((Predicate) this.f2857c, obj);
            case 1:
                return this.b.lambda$and$0((Predicate) this.f2857c, obj);
            default:
                return IntentSanitizer.Builder.lambda$allowExtra$13((Class) this.f2857c, this.b, obj);
        }
    }

    public /* synthetic */ a(Class cls, Predicate predicate) {
        this.f2856a = 2;
        this.f2857c = cls;
        this.b = predicate;
    }
}
