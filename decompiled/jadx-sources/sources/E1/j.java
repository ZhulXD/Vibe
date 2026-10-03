package E1;

import android.content.Context;
import com.minhub.gamehub.data.GameStorage;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p064y1.N0;
import p064y1.O0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f894c;

    public /* synthetic */ j(Context context, int i3) {
        this.b = i3;
        this.f894c = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i3 = this.b;
        Context context = this.f894c;
        switch (i3) {
            case 0:
                N0 value = (N0) obj;
                Intrinsics.checkNotNullParameter(value, "it");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(value, "value");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("godot_max_fps", value.b).apply();
                return Unit.INSTANCE;
            case 1:
                O0 value2 = (O0) obj;
                Intrinsics.checkNotNullParameter(value2, "it");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(value2, "value");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("godot_renderer", value2.b).apply();
                return Unit.INSTANCE;
            case 2:
                G1.s snapshot = (G1.s) obj;
                Intrinsics.checkNotNullParameter(snapshot, "nextSnapshot");
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                List list = G1.q.f1036a;
                G1.s sVarB = G1.q.b(snapshot.a());
                p023i1.r rVar = new p023i1.r();
                Iterator it = G1.q.f1036a.iterator();
                while (it.hasNext()) {
                    G1.p pVar = ((G1.n) it.next()).f1013a;
                    rVar.h(pVar.b, Boolean.valueOf(sVarB.b(pVar)));
                }
                String json = rVar.toString();
                Intrinsics.checkNotNullExpressionValue(json, "toString(...)");
                Intrinsics.checkNotNullParameter(context, "ctx");
                Intrinsics.checkNotNullParameter(json, "json");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("utilities_json", json).apply();
                return Unit.INSTANCE;
            default:
                return GameStorage.Companion.get$lambda$2$lambda$0(context, ((Integer) obj).intValue());
        }
    }
}
