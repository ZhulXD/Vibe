package kotlin.text;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ int b;

    public /* synthetic */ d(int i3) {
        this.b = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return StringsKt__IndentKt.getIndentFunction$lambda$8$StringsKt__IndentKt((String) obj);
            case 1:
                return StringsKt___StringsKt.windowed$lambda$23$StringsKt___StringsKt((CharSequence) obj);
            case 2:
                return StringsKt___StringsKt.windowedSequence$lambda$24$StringsKt___StringsKt((CharSequence) obj);
            default:
                return StringsKt___StringsKt.chunkedSequence$lambda$22$StringsKt___StringsKt((CharSequence) obj);
        }
    }
}
