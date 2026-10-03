package E1;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import androidx.fragment.app.Fragment;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String[] f898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Fragment f899e;

    public m(Context context, String[] strArr, B b) {
        this.f897c = context;
        this.f898d = strArr;
        this.f899e = b;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i3, long j2) {
        int i4 = this.b;
        Fragment fragment = this.f899e;
        String[] strArr = this.f898d;
        Context context = this.f897c;
        switch (i4) {
            case 0:
                n nVar = (n) fragment;
                String str = strArr[i3];
                Set set = S1.d.f2060a;
                if (!Intrinsics.areEqual(str, S1.d.d(context))) {
                    S1.d.w(context, str);
                    Intent launchIntentForPackage = nVar.requireActivity().getPackageManager().getLaunchIntentForPackage(nVar.requireActivity().getPackageName());
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.setFlags(268468224);
                        nVar.startActivity(launchIntentForPackage);
                        nVar.requireActivity().finish();
                        break;
                    }
                }
                break;
            default:
                Set set2 = S1.d.f2060a;
                String v2 = strArr[i3];
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullParameter(v2, "v");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("trans_font", v2).apply();
                ((B) fragment).d();
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i3 = this.b;
    }

    public m(String[] strArr, Context context, n nVar) {
        this.f898d = strArr;
        this.f897c = context;
        this.f899e = nVar;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }
}
