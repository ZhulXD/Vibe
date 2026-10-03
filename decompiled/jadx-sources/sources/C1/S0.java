package C1;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class S0 implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ List f498d;

    public /* synthetic */ S0(Object obj, List list, int i3) {
        this.b = i3;
        this.f497c = obj;
        this.f498d = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i3, long j2) {
        switch (this.b) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) this.f497c;
                gameDetailActivity.f3771o = (OnlineTranslationPackage) CollectionsKt.getOrNull((ArrayList) this.f498d, i3 - 1);
                gameDetailActivity.n().g.setEnabled((gameDetailActivity.f3771o == null || gameDetailActivity.f3769m) ? false : true);
                break;
            case 1:
                ((Function1) this.f497c).invoke(this.f498d.get(i3));
                break;
            default:
                Context context = (Context) this.f497c;
                p064y1.F1 mode = (p064y1.F1) ((EnumEntries) this.f498d).get(i3);
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(mode, "mode");
                context.getSharedPreferences("minhub_prefs", 0).edit().putString("renpy_render_resolution", mode.b).apply();
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        switch (this.b) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) this.f497c;
                gameDetailActivity.f3771o = null;
                gameDetailActivity.n().g.setEnabled(false);
                break;
        }
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }
}
