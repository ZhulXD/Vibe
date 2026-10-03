package E1;

import android.content.Context;
import android.view.View;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ B f941e;

    public /* synthetic */ z(Context context, String str, B b, int i3) {
        this.b = i3;
        this.f939c = context;
        this.f940d = str;
        this.f941e = b;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        B b = this.f941e;
        String v2 = this.f940d;
        Context context = this.f939c;
        switch (i3) {
            case 0:
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullParameter(v2, "v");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("trans_color", v2).apply();
                b.b();
                b.d();
                break;
            default:
                Set set2 = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullParameter(v2, "v");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("trans_style", v2).apply();
                b.c();
                b.d();
                break;
        }
    }
}
