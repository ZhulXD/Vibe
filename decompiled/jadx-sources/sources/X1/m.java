package X1;

import V1.C0189e;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends Lambda implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2373c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(int i3, Object obj) {
        super(1);
        this.b = i3;
        this.f2373c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i3 = this.b;
        Object obj2 = this.f2373c;
        switch (i3) {
            case 0:
                Result.Companion companion = Result.INSTANCE;
                Unit unit = Unit.INSTANCE;
                ((C0189e) obj2).resumeWith(Result.m9constructorimpl(unit));
                return unit;
            default:
                ((d2.i) obj2).b();
                return Unit.INSTANCE;
        }
    }
}
