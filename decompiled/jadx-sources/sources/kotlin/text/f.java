package kotlin.text;

import java.util.List;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f5023c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f5024d;

    public /* synthetic */ f(Object obj, boolean z2, int i3) {
        this.b = i3;
        this.f5024d = obj;
        this.f5023c = z2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.rangesDelimitedBy$lambda$14$StringsKt__StringsKt((char[]) this.f5024d, this.f5023c, (CharSequence) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.rangesDelimitedBy$lambda$16$StringsKt__StringsKt((List) this.f5024d, this.f5023c, (CharSequence) obj, iIntValue2);
        }
    }
}
