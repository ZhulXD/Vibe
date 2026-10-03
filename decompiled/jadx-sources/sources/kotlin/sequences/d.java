package kotlin.sequences;

import kotlin.TuplesKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function2 {
    public final /* synthetic */ int b;

    public /* synthetic */ d(int i3) {
        this.b = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                break;
        }
        return TuplesKt.to(obj, obj2);
    }
}
