package C1;

import A1.C0035p;
import E1.C0131g;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.Toast;
import androidx.lifecycle.LifecycleOwnerKt;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: C1.s0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0102s0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f680e;

    public /* synthetic */ DialogInterfaceOnClickListenerC0102s0(C0131g c0131g, String str, H0.o oVar) {
        this.f678c = c0131g;
        this.f680e = str;
        this.f679d = oVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        int i4 = this.b;
        B1.z zVar = null;
        Object obj = this.f679d;
        Object obj2 = this.f680e;
        Object obj3 = this.f678c;
        switch (i4) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) obj3;
                String str = G1.g.f997a;
                dialogInterface.dismiss();
                Toast.makeText(gameDetailActivity, R.string.game_patch_downloading, 0).show();
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity), null, new C0111v0(gameDetailActivity, (Context) obj2, (Game) obj, (Continuation) null), 3);
                break;
            case 1:
                GameDetailActivity gameDetailActivity2 = (GameDetailActivity) obj3;
                Game game = (Game) obj;
                RemotePluginCatalogItem item = (RemotePluginCatalogItem) obj2;
                Intrinsics.checkNotNullParameter(gameDetailActivity2, "<this>");
                Intrinsics.checkNotNullParameter(game, "game");
                Intrinsics.checkNotNullParameter(item, "item");
                Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.plugin_catalog_installing, item.getTitle()), 0).show();
                File file = new File(game.getGamePath());
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity2), null, new J0(new File(gameDetailActivity2.getCacheDir(), kotlin.collections.unsigned.a.o("plugin-install/", item.getSlug())), gameDetailActivity2, item, game, file, null), 3);
                break;
            default:
                C0131g c0131g = (C0131g) obj3;
                String name = (String) obj2;
                H0.o oVar = (H0.o) obj;
                B1.z zVar2 = c0131g.f888c;
                if (zVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
                } else {
                    zVar = zVar2;
                }
                zVar.getClass();
                Intrinsics.checkNotNullParameter(name, "name");
                String string = StringsKt.trim((CharSequence) name).toString();
                if (!StringsKt.isBlank(string)) {
                    List listD = zVar.d();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj4 : listD) {
                        if (!StringsKt.equals(((B1.B) obj4).f301a, string, true)) {
                            arrayList.add(obj4);
                        }
                    }
                    if (arrayList.size() != listD.size()) {
                        Set set = S1.d.f2060a;
                        Context context = zVar.f380a;
                        String v2 = CollectionsKt.o(arrayList, ",", "[", "]", new C0035p(3, zVar), 24);
                        Intrinsics.checkNotNullParameter(context, "<this>");
                        Intrinsics.checkNotNullParameter(v2, "v");
                        S1.d.s(context).edit().putString("physical_gamepad_presets_json", v2).apply();
                        Toast.makeText(c0131g.requireContext(), c0131g.getString(R.string.toast_layout_deleted), 0).show();
                        oVar.dismiss();
                        c0131g.h();
                        break;
                    }
                }
                break;
        }
    }

    public /* synthetic */ DialogInterfaceOnClickListenerC0102s0(GameDetailActivity gameDetailActivity, Context context, Game game) {
        String str = G1.g.f997a;
        this.f678c = gameDetailActivity;
        this.f680e = context;
        this.f679d = game;
    }

    public /* synthetic */ DialogInterfaceOnClickListenerC0102s0(GameDetailActivity gameDetailActivity, Game game, RemotePluginCatalogItem remotePluginCatalogItem) {
        this.f678c = gameDetailActivity;
        this.f679d = game;
        this.f680e = remotePluginCatalogItem;
    }
}
