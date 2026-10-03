package kotlin.sequences;

import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {
    public final /* synthetic */ int b;

    public /* synthetic */ c(int i3) {
        this.b = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return SequencesKt__SequencesKt.flatten$lambda$2$SequencesKt__SequencesKt((Sequence) obj);
            case 1:
                return SequencesKt__SequencesKt.flatten$lambda$3$SequencesKt__SequencesKt((Iterable) obj);
            case 2:
                return SequencesKt__SequencesKt.flatten$lambda$4$SequencesKt__SequencesKt(obj);
            case 3:
                return SequencesKt___SequencesKt.filterIndexed$lambda$3$SequencesKt___SequencesKt((IndexedValue) obj);
            case 4:
                return Boolean.valueOf(SequencesKt___SequencesKt.filterNotNull$lambda$5$SequencesKt___SequencesKt(obj));
            default:
                return SequencesKt___SequencesKt.distinct$lambda$13$SequencesKt___SequencesKt(obj);
        }
    }
}
