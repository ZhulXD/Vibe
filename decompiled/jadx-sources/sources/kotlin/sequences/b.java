package kotlin.sequences;

import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5017c;

    public /* synthetic */ b(int i3, Object obj) {
        this.b = i3;
        this.f5017c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return SequencesKt__SequencesKt.generateSequence$lambda$5$SequencesKt__SequencesKt((Function0) this.f5017c, obj);
            case 1:
                return Boolean.valueOf(((Class) this.f5017c).isInstance(obj));
            case 2:
                return SequencesKt___SequencesKt.requireNoNulls$lambda$16$SequencesKt___SequencesKt((Sequence) this.f5017c, obj);
            case 3:
                return Boolean.valueOf(SequencesKt___SequencesKt.filterIndexed$lambda$2$SequencesKt___SequencesKt((Function2) this.f5017c, (IndexedValue) obj));
            case 4:
                return SequencesKt___SequencesKt.onEach$lambda$14$SequencesKt___SequencesKt((Function1) this.f5017c, obj);
            case 5:
                return Boolean.valueOf(ArraysKt.contains((Object[]) this.f5017c, obj));
            case 6:
                return Boolean.valueOf(((Collection) this.f5017c).contains(obj));
            default:
                return Boolean.valueOf(((List) this.f5017c).contains(obj));
        }
    }
}
