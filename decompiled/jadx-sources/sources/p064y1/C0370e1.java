package p064y1;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: renamed from: y1.e1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0370e1 implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0385j1 f6217c;

    public /* synthetic */ C0370e1(C0385j1 c0385j1, int i3) {
        this.b = i3;
        this.f6217c = c0385j1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        switch (this.b) {
            case 0:
                String id = (String) obj;
                Intrinsics.checkNotNullParameter(id, "id");
                this.f6217c.b.h(id);
                break;
            case 1:
                this.f6217c.g();
                break;
            default:
                List it = (List) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                this.f6217c.g();
                break;
        }
        return Unit.INSTANCE;
    }
}
