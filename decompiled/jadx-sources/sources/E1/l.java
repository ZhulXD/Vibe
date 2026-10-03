package E1;

import android.content.Context;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements p007c1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f896a;
    public final /* synthetic */ List b;

    public l(Context context, List list) {
        this.f896a = context;
        this.b = list;
    }

    @Override // p007c1.b
    public final void a(p007c1.f t2) {
        Intrinsics.checkNotNullParameter(t2, "t");
    }

    @Override // p007c1.b
    public final void b(p007c1.f t2) {
        Intrinsics.checkNotNullParameter(t2, "t");
        Set set = S1.d.f2060a;
        ((S1.e) this.b.get(t2.b)).getClass();
        Context context = this.f896a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter("webgl2", "v");
        context.getSharedPreferences("minhub_prefs", 0).edit().putString("render_mode", S1.d.q("webgl2")).apply();
    }

    @Override // p007c1.b
    public final void c(p007c1.f t2) {
        Intrinsics.checkNotNullParameter(t2, "t");
    }
}
