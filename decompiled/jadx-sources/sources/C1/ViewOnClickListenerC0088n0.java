package C1;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelKt;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.GameMetadataSync;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import java.io.File;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p064y1.AbstractC0417u1;
import p064y1.C0363c0;
import p064y1.C0429y1;
import p064y1.EnumC0420v1;

/* JADX INFO: renamed from: C1.n0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0088n0 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Game f657d;

    public /* synthetic */ ViewOnClickListenerC0088n0(GameDetailActivity gameDetailActivity, Game game, int i3) {
        this.b = i3;
        this.f656c = gameDetailActivity;
        this.f657d = game;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x01ec  */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EnumC0420v1 plugin;
        L1.a aVar;
        String str;
        int i3 = this.b;
        int i4 = 0;
        int i5 = 2;
        GameDetailActivity gameDetailActivity = this.f656c;
        int i6 = 1;
        Game g = this.f657d;
        Continuation continuation = null;
        switch (i3) {
            case 0:
                int i7 = GameDetailActivity.f3762w;
                Z0 z0Q = gameDetailActivity.q();
                z0Q.getClass();
                Intrinsics.checkNotNullParameter(g, "g");
                V1.A.c(ViewModelKt.getViewModelScope(z0Q), V1.H.b, new Y0(z0Q, g, null, 1), 2);
                return;
            case 1:
                int i8 = GameDetailActivity.f3762w;
                Log.d("GameLaunch", "detail.startGame gameId=" + g.getId() + " engine=" + g.getEngine() + " path=" + g.getGamePath());
                p023i1.l lVar = X0.f526a;
                W0 syncFromDisk = new W0(1, GameMetadataSync.INSTANCE, GameMetadataSync.class, "syncFromDisk", "syncFromDisk(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;)Lcom/minhub/gamehub/data/Game;", 0);
                Intrinsics.checkNotNullParameter(g, "game");
                Intrinsics.checkNotNullParameter(syncFromDisk, "syncFromDisk");
                Game game = (Game) syncFromDisk.invoke(g);
                boolean zAreEqual = Intrinsics.areEqual(game, g);
                GameDetailActivity gameDetailActivity2 = this.f656c;
                if (!zAreEqual) {
                    gameDetailActivity2.g = game;
                    gameDetailActivity2.q().a(game);
                    gameDetailActivity2.m(game);
                }
                A1.G0 onReady = new A1.G0(i5, gameDetailActivity2, game);
                Intrinsics.checkNotNullParameter(gameDetailActivity2, "<this>");
                Intrinsics.checkNotNullParameter(onReady, "onReady");
                Game game2 = gameDetailActivity2.g;
                if (game2 == null) {
                    return;
                }
                C0363c0 c0363c0 = EnumC0420v1.f;
                GameEngine engine = GameKt.getEngineEnum(game2);
                c0363c0.getClass();
                Intrinsics.checkNotNullParameter(engine, "engine");
                int i9 = AbstractC0417u1.f6373a[engine.ordinal()];
                if (i9 == 1) {
                    plugin = EnumC0420v1.VXACE;
                } else if (i9 == 2) {
                    plugin = EnumC0420v1.RENPY8;
                } else if (i9 != 3) {
                    plugin = i9 != 4 ? null : EnumC0420v1.GODOT;
                } else {
                    plugin = EnumC0420v1.RENPY7;
                }
                if (plugin == null) {
                    onReady.invoke();
                    return;
                }
                String str2 = plugin.f6383c;
                if (plugin.a() == null) {
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.engine_plugin_unsupported_device, str2), 1).show();
                    return;
                }
                Regex regex = p064y1.G1.f6072a;
                File fileA = p064y1.G1.a(new File(game2.getGamePath()));
                int[] iArr = B0.f395a;
                if (iArr[plugin.ordinal()] == 1) {
                    Regex regex2 = p064y1.W0.f6153a;
                    L1.c cVarC = p064y1.W0.c(GameKt.getEngineEnum(game2), fileA.getAbsolutePath());
                    if (cVarC != null) {
                        aVar = cVarC.f1286a;
                    } else {
                        aVar = null;
                    }
                } else {
                    L1.c cVarG = p064y1.G1.g(GameKt.getEngineEnum(game2), fileA.getAbsolutePath(), p064y1.G1.f(gameDetailActivity2, fileA.getAbsolutePath(), game2.getId()));
                    if (cVarG != null) {
                        aVar = cVarG.f1286a;
                    } else {
                        aVar = null;
                    }
                }
                C0429y1 c0429y1 = C0429y1.f6409a;
                if (C0429y1.k(aVar, gameDetailActivity2, plugin)) {
                    onReady.invoke();
                    return;
                }
                if (aVar == null || (str = aVar.f1278c) == null) {
                    Intrinsics.checkNotNullParameter(plugin, "plugin");
                    int iOrdinal = plugin.ordinal();
                    if (iOrdinal == 0) {
                        str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/ACE/PluginACE.zip";
                    } else if (iOrdinal == 1) {
                        str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy/PluginRenpy.zip";
                    } else if (iOrdinal == 2) {
                        str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.8.7/PluginRenpy7.zip";
                    } else {
                        if (iOrdinal != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.7.1/PluginGodot.zip";
                    }
                }
                String str3 = str;
                if (aVar != null) {
                    String strA = iArr[plugin.ordinal()] == 1 ? p064y1.W0.a(aVar) : p064y1.G1.b(aVar);
                    if (strA != null) {
                        str2 = strA;
                    }
                }
                if (StringsKt.isBlank(str3)) {
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.engine_plugin_url_not_configured, str2), 1).show();
                    return;
                }
                View viewInflate = gameDetailActivity2.getLayoutInflater().inflate(R.layout.dialog_engine_plugin_required, (ViewGroup) null);
                ((TextView) viewInflate.findViewById(R.id.tv_plugin_required_title)).setText(gameDetailActivity2.getString(R.string.engine_plugin_required_title));
                ((TextView) viewInflate.findViewById(R.id.tv_plugin_required_msg)).setText(gameDetailActivity2.getString(R.string.engine_plugin_required_msg, str2));
                O0.b bVar = new O0.b(gameDetailActivity2, 0);
                ((C0240b) bVar.f4145c).f4112t = viewInflate;
                DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
                Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
                Window window = dialogInterfaceC0245gC.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(android.R.color.transparent);
                }
                ((Button) viewInflate.findViewById(R.id.btn_plugin_cancel)).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 3));
                ((Button) viewInflate.findViewById(R.id.btn_plugin_download)).setOnClickListener(new ViewOnClickListenerC0072i(dialogInterfaceC0245gC, gameDetailActivity2, plugin, aVar, str3, 1));
                dialogInterfaceC0245gC.show();
                return;
            case 2:
                Game game3 = gameDetailActivity.g;
                if (game3 != null) {
                    g = game3;
                }
                Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                Intrinsics.checkNotNullParameter(g, "g");
                if (g.getCatalogPostId() <= 0) {
                    Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.game_detail_translation_refresh_no_catalog), 0).show();
                    return;
                } else {
                    gameDetailActivity.n().f5738j.setEnabled(false);
                    V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity), null, new V0(gameDetailActivity, g, continuation, i6), 3);
                    return;
                }
            case 3:
                int i10 = GameDetailActivity.f3762w;
                O0.b bVar2 = new O0.b(gameDetailActivity, 0);
                String string = gameDetailActivity.getString(R.string.game_detail_uninstall);
                C0240b c0240b = (C0240b) bVar2.f4145c;
                c0240b.f4098d = string;
                c0240b.f = kotlin.collections.unsigned.a.h(gameDetailActivity.getString(R.string.confirm_delete), " ", g.getTitle());
                bVar2.i(gameDetailActivity.getString(R.string.delete), new DialogInterfaceOnClickListenerC0091o0(i4, gameDetailActivity, g));
                bVar2.g(gameDetailActivity.getString(R.string.dialog_cancel), null);
                bVar2.e();
                return;
            case 4:
                GameDetailActivity gameDetailActivity3 = this.f656c;
                OnlineTranslationPackage pkg = gameDetailActivity3.f3771o;
                if (pkg == null || gameDetailActivity3.f3769m) {
                    return;
                }
                Intrinsics.checkNotNullParameter(gameDetailActivity3, "<this>");
                Game g3 = this.f657d;
                Intrinsics.checkNotNullParameter(g3, "g");
                Intrinsics.checkNotNullParameter(pkg, "pkg");
                gameDetailActivity3.f3769m = true;
                String string2 = gameDetailActivity3.getString(R.string.game_detail_translation_status_installing, pkg.getLabel());
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                Intrinsics.checkNotNullParameter(string2, "<set-?>");
                gameDetailActivity3.f3770n = string2;
                com.bumptech.glide.d.d(gameDetailActivity3, g3);
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity3), null, new C0114w0(gameDetailActivity3, g3, pkg, (Continuation) null, 1), 3);
                return;
            default:
                if (gameDetailActivity.f3769m) {
                    return;
                }
                Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                Intrinsics.checkNotNullParameter(g, "g");
                gameDetailActivity.f3769m = true;
                String string3 = gameDetailActivity.getString(R.string.game_detail_translation_status_restoring);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                Intrinsics.checkNotNullParameter(string3, "<set-?>");
                gameDetailActivity.f3770n = string3;
                com.bumptech.glide.d.d(gameDetailActivity, g);
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity), null, new V0(gameDetailActivity, g, continuation, i5), 3);
                return;
        }
    }
}
