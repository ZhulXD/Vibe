package A1;

import C1.DialogInterfaceOnClickListenerC0102s0;
import C1.RunnableC0087n;
import C1.X0;
import C1.X1;
import C1.c2;
import android.content.Context;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.pm.PackageInfoCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.RpgMakerPluginConfig;
import com.minhub.gamehub.editor.ButtonEditorActivity;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
import p011e.C0240b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f221c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f222d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f223e;

    public /* synthetic */ r(Object obj, Object obj2, Object obj3, int i3) {
        this.b = i3;
        this.f221c = obj;
        this.f222d = obj2;
        this.f223e = obj3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long longVersionCode;
        int i3 = this.b;
        final int i4 = 0;
        p058w1.c cVar = null;
        Object obj2 = this.f223e;
        Object obj3 = this.f222d;
        Object obj4 = this.f221c;
        switch (i3) {
            case 0:
                String str = (String) obj4;
                C0043y c0043y = (C0043y) obj3;
                o0 o0Var = (o0) obj2;
                C0008a0 snapshot = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                o0 o0Var2 = snapshot.f166d;
                return (Intrinsics.areEqual(o0Var2 != null ? o0Var2.f211a : null, str) || (snapshot.f166d == null && !c0043y.f.contains(str))) ? C0008a0.a(snapshot, 0L, null, o0Var, null, 55) : snapshot;
            case 1:
                H0.o oVar = (H0.o) obj4;
                D1.l candidate = (D1.l) obj;
                Intrinsics.checkNotNullParameter(candidate, "candidate");
                oVar.setOnDismissListener(null);
                ((AddGameActivity) obj3).C(oVar);
                oVar.dismiss();
                ((C1.I) obj2).invoke(candidate);
                return Unit.INSTANCE;
            case 2:
                final ProgressBar progressBar = (ProgressBar) obj3;
                final TextView textView = (TextView) obj2;
                final int iIntValue = ((Integer) obj).intValue();
                ((GameDetailActivity) obj4).runOnUiThread(new Runnable() { // from class: C1.C0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i4) {
                            case 0:
                                ProgressBar progressBar2 = progressBar;
                                int i5 = iIntValue;
                                progressBar2.setProgress(i5);
                                textView.setText(i5 + "%");
                                break;
                            default:
                                ProgressBar progressBar3 = progressBar;
                                int i6 = iIntValue;
                                progressBar3.setProgress(i6);
                                textView.setText(i6 + "%");
                                break;
                        }
                    }
                });
                return Unit.INSTANCE;
            case 3:
                LinkedHashMap parameters = (LinkedHashMap) obj2;
                X1 state = (X1) obj;
                Intrinsics.checkNotNullParameter(state, "state");
                boolean zP = S1.d.p((GameDetailActivity) obj4);
                List<RpgMakerPluginConfig> draft = state.f529d;
                String pluginName = ((c2) obj3).f569a;
                p023i1.l lVar = X0.f526a;
                Intrinsics.checkNotNullParameter(draft, "draft");
                Intrinsics.checkNotNullParameter(pluginName, "pluginName");
                Intrinsics.checkNotNullParameter(parameters, "parameters");
                if (zP) {
                    Intrinsics.checkNotNullParameter(draft, "draft");
                    Intrinsics.checkNotNullParameter(pluginName, "pluginName");
                    Intrinsics.checkNotNullParameter(parameters, "parameters");
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(draft, 10));
                    for (RpgMakerPluginConfig rpgMakerPluginConfigCopy$default : draft) {
                        if (Intrinsics.areEqual(rpgMakerPluginConfigCopy$default.getName(), pluginName)) {
                            rpgMakerPluginConfigCopy$default = RpgMakerPluginConfig.copy$default(rpgMakerPluginConfigCopy$default, null, false, null, new LinkedHashMap(parameters), null, 23, null);
                        }
                        arrayList.add(rpgMakerPluginConfigCopy$default);
                    }
                    draft = arrayList;
                }
                return X1.a(state, draft, null, 23);
            case 4:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) obj3;
                Game game = (Game) obj2;
                RemotePluginCatalogItem item = (RemotePluginCatalogItem) obj;
                Intrinsics.checkNotNullParameter(item, "item");
                ((H0.o) obj4).dismiss();
                Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                Intrinsics.checkNotNullParameter(game, "game");
                Intrinsics.checkNotNullParameter(item, "item");
                O0.b bVar = new O0.b(gameDetailActivity, 0);
                String string = gameDetailActivity.getString(R.string.plugin_catalog_confirm_title);
                C0240b c0240b = (C0240b) bVar.f4145c;
                c0240b.f4098d = string;
                c0240b.f = gameDetailActivity.getString(R.string.plugin_catalog_confirm_message, item.getTitle());
                bVar.i(gameDetailActivity.getString(R.string.plugin_catalog_install_btn), new DialogInterfaceOnClickListenerC0102s0(gameDetailActivity, game, item));
                bVar.g(gameDetailActivity.getString(R.string.dialog_cancel), null);
                bVar.e();
                return Unit.INSTANCE;
            case 5:
                final ProgressBar progressBar2 = (ProgressBar) obj3;
                final TextView textView2 = (TextView) obj2;
                final int iIntValue2 = ((Integer) obj).intValue();
                final int i5 = 1;
                ((E1.w) obj4).requireActivity().runOnUiThread(new Runnable() { // from class: C1.C0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i5) {
                            case 0:
                                ProgressBar progressBar3 = progressBar2;
                                int i6 = iIntValue2;
                                progressBar3.setProgress(i6);
                                textView2.setText(i6 + "%");
                                break;
                            default:
                                ProgressBar progressBar4 = progressBar2;
                                int i7 = iIntValue2;
                                progressBar4.setProgress(i7);
                                textView2.setText(i7 + "%");
                                break;
                        }
                    }
                });
                return Unit.INSTANCE;
            case 6:
                C0035p c0035p = (C0035p) obj4;
                Context context = (Context) obj3;
                C0015e c0015e = (C0015e) obj2;
                JSONObject json = (JSONObject) obj;
                Intrinsics.checkNotNullParameter(json, "json");
                try {
                    c0035p.invoke(com.bumptech.glide.d.S(json, S1.d.d(context)));
                    break;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    c0015e.invoke(message != null ? message : "Parse error");
                }
                return Unit.INSTANCE;
            case 7:
                Context context2 = (Context) obj4;
                Function1 function1 = (Function1) obj3;
                Function1 function2 = (Function1) obj2;
                JSONObject json2 = (JSONObject) obj;
                Intrinsics.checkNotNullParameter(json2, "json");
                try {
                    R1.a aVarS = com.bumptech.glide.d.S(json2, S1.d.d(context2));
                    try {
                        longVersionCode = PackageInfoCompat.getLongVersionCode(context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0));
                    } catch (Exception unused) {
                        longVersionCode = 1;
                    }
                    function1.invoke(aVarS.f1943a > longVersionCode ? aVarS : null);
                    break;
                } catch (Exception e3) {
                    String message2 = e3.getMessage();
                    function2.invoke(message2 != null ? message2 : "Parse error");
                }
                return Unit.INSTANCE;
            case 8:
                p061x1.a aVar = (p061x1.a) obj3;
                ButtonEditorActivity buttonEditorActivity = (ButtonEditorActivity) obj2;
                String str2 = (String) obj4;
                String keyCode = (String) obj;
                int i6 = ButtonEditorActivity.f3665i;
                Intrinsics.checkNotNullParameter(keyCode, "keyCode");
                p061x1.a aVarA = p061x1.a.a(aVar, keyCode, 0.0f, 0.0f, 0, 0, null, null, 0.0f, false, 2043);
                p058w1.c cVar2 = buttonEditorActivity.f3666e;
                if (cVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    cVar = cVar2;
                }
                ((EditModeOverlay) cVar.f5652i).f(str2, aVarA);
                buttonEditorActivity.m(str2);
                Toast.makeText(buttonEditorActivity, buttonEditorActivity.getString(R.string.toast_key_mapped, keyCode), 0).show();
                return Unit.INSTANCE;
            default:
                GameActivity gameActivity = (GameActivity) obj4;
                int i7 = GameActivity.f3676L;
                gameActivity.runOnUiThread(new RunnableC0087n(6, gameActivity, (Q1.d) obj3, (WebView) obj2, (String) obj));
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ r(p061x1.a aVar, ButtonEditorActivity buttonEditorActivity, String str) {
        this.b = 8;
        this.f222d = aVar;
        this.f223e = buttonEditorActivity;
        this.f221c = str;
    }
}
