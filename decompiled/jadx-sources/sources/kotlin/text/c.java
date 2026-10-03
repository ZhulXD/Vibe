package kotlin.text;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5021c;

    public /* synthetic */ c(int i3, Object obj) {
        this.b = i3;
        this.f5021c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return StringsKt__IndentKt.prependIndent$lambda$5$StringsKt__IndentKt((String) this.f5021c, (String) obj);
            case 1:
                return StringsKt__IndentKt.getIndentFunction$lambda$9$StringsKt__IndentKt((String) this.f5021c, (String) obj);
            default:
                return ((MatcherMatchResult$groups$1) this.f5021c).get(((Integer) obj).intValue());
        }
    }
}
