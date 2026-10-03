package B1;

import E1.C0131g;
import android.content.Context;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f312a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f313c;

    public /* synthetic */ f(int i3, Object obj, Object obj2) {
        this.f312a = i3;
        this.b = obj;
        this.f313c = obj2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        int i3 = this.f312a;
        Object obj = this.f313c;
        Object obj2 = this.b;
        switch (i3) {
            case 0:
                h hVar = (h) obj2;
                LinkedHashMap linkedHashMap = hVar.f317e;
                String str = ((e) obj).f309a;
                linkedHashMap.put(str, Boolean.valueOf(z2));
                hVar.f.invoke(str, Boolean.valueOf(z2));
                break;
            case 1:
                Context context = (Context) obj2;
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("physical_gamepad_enabled", z2).apply();
                ((C0131g) obj).i();
                break;
            default:
                Context context2 = (Context) obj2;
                Set set2 = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context2, "<this>");
                context2.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("trans_enabled", z2).apply();
                p058w1.j jVar = ((E1.B) obj).b;
                Intrinsics.checkNotNull(jVar);
                LinearLayout layoutTransOptions = jVar.f5821c;
                Intrinsics.checkNotNullExpressionValue(layoutTransOptions, "layoutTransOptions");
                layoutTransOptions.setVisibility(z2 ? 0 : 8);
                break;
        }
    }
}
