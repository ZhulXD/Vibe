package E1;

import android.content.Context;
import com.google.android.material.slider.Slider;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f938a;
    public final /* synthetic */ B b;

    public /* synthetic */ y(Context context, B b) {
        this.f938a = context;
        this.b = b;
    }

    public final void a(p002a1.d dVar, float f) {
        Intrinsics.checkNotNullParameter((Slider) dVar, "<unused var>");
        Set set = S1.d.f2060a;
        Context context = this.f938a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        context.getSharedPreferences("minhub_prefs", 0).edit().putInt("trans_size", (int) f).apply();
        this.b.d();
    }
}
