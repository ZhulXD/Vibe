package E1;

import androidx.fragment.app.Fragment;
import com.minhub.gamehub.hub.SettingsActivity;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends androidx.viewpager2.adapter.d {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final SettingsActivity f936m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f937n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(SettingsActivity act) {
        super(act);
        Intrinsics.checkNotNullParameter(act, "act");
        this.f936m = act;
        this.f937n = CollectionsKt.listOf((Object[]) new Fragment[]{new n(), new w(), new B(), new C0131g(), new I()});
    }

    @Override // P.W
    public final int a() {
        return this.f937n.size();
    }
}
