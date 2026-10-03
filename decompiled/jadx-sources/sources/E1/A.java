package E1;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f863d;

    public /* synthetic */ A(Context context, ArrayList arrayList, int i3) {
        this.b = i3;
        this.f862c = context;
        this.f863d = arrayList;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i3, long j2) {
        int i4 = this.b;
        ArrayList arrayList = this.f863d;
        Context context = this.f862c;
        switch (i4) {
            case 0:
                Set set = S1.d.f2060a;
                Object obj = arrayList.get(i3);
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                String v2 = (String) obj;
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullParameter(v2, "v");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("trans_source", S1.d.r(v2)).apply();
                break;
            default:
                Set set2 = S1.d.f2060a;
                Object obj2 = arrayList.get(i3);
                Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                String v3 = (String) obj2;
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullParameter(v3, "v");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("trans_target", S1.d.r(v3)).apply();
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i3 = this.b;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }
}
