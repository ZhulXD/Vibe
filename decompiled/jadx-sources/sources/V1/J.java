package V1;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class J implements n0, Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2266c;

    public /* synthetic */ J(int i3, Object obj) {
        this.b = i3;
        this.f2266c = obj;
    }

    public final void a(Throwable th) {
        switch (this.b) {
            case 0:
                ((M) this.f2266c).b();
                break;
            default:
                ((Function1) this.f2266c).invoke(th);
                break;
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                a((Throwable) obj);
                break;
            default:
                a((Throwable) obj);
                break;
        }
        return Unit.INSTANCE;
    }

    public final String toString() {
        switch (this.b) {
            case 0:
                return "DisposeOnCancel[" + ((M) this.f2266c) + ']';
            default:
                return "InvokeOnCancel[" + ((Function1) this.f2266c).getClass().getSimpleName() + '@' + A.a(this) + ']';
        }
    }
}
