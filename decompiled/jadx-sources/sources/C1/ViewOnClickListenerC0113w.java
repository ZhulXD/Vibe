package C1;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.ImageViewerActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: renamed from: C1.w, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0113w implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f703d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f704e;

    public /* synthetic */ ViewOnClickListenerC0113w(H0.o oVar, AddGameActivity addGameActivity, J j2) {
        this.b = 1;
        this.f702c = oVar;
        this.f703d = addGameActivity;
        this.f704e = j2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        p058w1.a aVar = null;
        Object obj = this.f702c;
        Object obj2 = this.f703d;
        Object obj3 = this.f704e;
        switch (i3) {
            case 0:
                AddGameActivity addGameActivity = (AddGameActivity) obj2;
                H0.o oVar = (H0.o) obj;
                String gameName = StringsKt.trim((CharSequence) ((EditText) obj3).getText().toString()).toString();
                Uri treeUri = addGameActivity.f3748n;
                if (treeUri != null) {
                    oVar.dismiss();
                    Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
                    Intrinsics.checkNotNullParameter(gameName, "gameName");
                    Intrinsics.checkNotNullParameter(treeUri, "treeUri");
                    addGameActivity.B(Q.f488c);
                    String text = addGameActivity.getString(R.string.folder_import_copying);
                    Intrinsics.checkNotNullExpressionValue(text, "getString(...)");
                    Intrinsics.checkNotNullParameter(text, "text");
                    p058w1.a aVar2 = addGameActivity.f3741e;
                    if (aVar2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                    } else {
                        aVar = aVar2;
                    }
                    aVar.f5626r.setText(text);
                    addGameActivity.D(0);
                    D1.b bVar = new D1.b();
                    Set importOperations = addGameActivity.g;
                    Intrinsics.checkNotNullExpressionValue(importOperations, "importOperations");
                    importOperations.add(bVar);
                    new Thread(new RunnableC0104t(addGameActivity, gameName, treeUri, bVar, 1)).start();
                    break;
                }
                break;
            case 1:
                H0.o oVar2 = (H0.o) obj;
                oVar2.setOnDismissListener(null);
                ((AddGameActivity) obj2).C(oVar2);
                oVar2.dismiss();
                ((J) obj3).invoke();
                break;
            case 2:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) obj3;
                int i4 = GameDetailActivity.f3762w;
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                Intrinsics.checkNotNullParameter("webgl2", "v");
                gameDetailActivity.getSharedPreferences("minhub_prefs", 0).edit().putString("render_mode", S1.d.q("webgl2")).apply();
                GameDetailActivity.s((LinearLayout) obj2, (List) obj, gameDetailActivity);
                break;
            case 3:
                int i5 = GameDetailActivity.f3762w;
                ((DialogInterfaceC0245g) obj3).dismiss();
                ((GameDetailActivity) obj2).r((Game) obj);
                break;
            case 4:
                int i6 = GameDetailActivity.f3762w;
                int i7 = ImageViewerActivity.f3783e;
                Y0.e.o((GameDetailActivity) obj3, (ArrayList) obj2, 0, ((Game) obj).getTitle(), 4);
                break;
            default:
                Context ctx = (Context) obj2;
                R1.a info = (R1.a) obj;
                ((DialogInterfaceC0245g) obj3).dismiss();
                Intrinsics.checkNotNullParameter(ctx, "ctx");
                Intrinsics.checkNotNullParameter(info, "info");
                if (Build.VERSION.SDK_INT >= 26 && !ctx.getPackageManager().canRequestPackageInstalls()) {
                    Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + ctx.getPackageName()));
                    intent.setFlags(268435456);
                    ctx.startActivity(intent);
                    Toast.makeText(ctx, "Cho phép cài từ nguồn không rõ rồi thử lại", 1).show();
                } else if (StringsKt__StringsKt.contains(info.f1944c, (CharSequence) "mediafire.com", true)) {
                    Toast.makeText(ctx, "Đang lấy link tải…", 0).show();
                    new Thread(new RunnableC0078k(11, info, ctx)).start();
                } else {
                    com.bumptech.glide.d.o(ctx, info, info.f1944c);
                }
                Toast.makeText(ctx, R.string.toast_update_downloading, 1).show();
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0113w(KeyEvent.Callback callback, Object obj, Object obj2, int i3) {
        this.b = i3;
        this.f704e = callback;
        this.f703d = obj;
        this.f702c = obj2;
    }

    public /* synthetic */ ViewOnClickListenerC0113w(GameDetailActivity gameDetailActivity, S1.e eVar, LinearLayout linearLayout, List list) {
        this.b = 2;
        this.f704e = gameDetailActivity;
        this.f703d = linearLayout;
        this.f702c = list;
    }
}
