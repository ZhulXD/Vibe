package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CharSequence f5022c;

    public /* synthetic */ e(int i3, CharSequence charSequence) {
        this.b = i3;
        this.f5022c = charSequence;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return StringsKt__StringsKt.splitToSequence$lambda$20$StringsKt__StringsKt(this.f5022c, (IntRange) obj);
            default:
                return StringsKt__StringsKt.splitToSequence$lambda$18$StringsKt__StringsKt(this.f5022c, (IntRange) obj);
        }
    }
}
