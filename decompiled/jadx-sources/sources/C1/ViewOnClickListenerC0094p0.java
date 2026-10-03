package C1;

import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.io.File;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.p0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0094p0 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f667c;

    public /* synthetic */ ViewOnClickListenerC0094p0(GameDetailActivity gameDetailActivity, int i3) {
        this.b = i3;
        this.f667c = gameDetailActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        X1 state;
        int i3 = this.b;
        Continuation continuation = null;
        GameDetailActivity gameDetailActivity = this.f667c;
        switch (i3) {
            case 0:
                Game game = gameDetailActivity.g;
                if (game != null) {
                    V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity), null, new C0099r0(gameDetailActivity, game, continuation, 0), 3);
                    break;
                }
                break;
            case 1:
                int i4 = GameDetailActivity.f3762w;
                gameDetailActivity.finish();
                break;
            case 2:
                GameDetailActivity gameDetailActivity2 = this.f667c;
                Game game2 = gameDetailActivity2.g;
                if (game2 != null && (state = gameDetailActivity2.f3773q) != null) {
                    boolean zP = S1.d.p(gameDetailActivity2);
                    p023i1.l lVar = X0.f526a;
                    if (!zP) {
                        com.bumptech.glide.c.V(gameDetailActivity2);
                        break;
                    } else {
                        Intrinsics.checkNotNullParameter(gameDetailActivity2, "<this>");
                        Intrinsics.checkNotNullParameter(game2, "game");
                        Intrinsics.checkNotNullParameter(state, "state");
                        if (!S1.d.p(gameDetailActivity2)) {
                            com.bumptech.glide.c.V(gameDetailActivity2);
                            break;
                        } else {
                            File file = state.b;
                            if (file != null) {
                                V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity2), null, new L0(file, state, game2, gameDetailActivity2, null, 0), 3);
                                break;
                            }
                        }
                    }
                }
                break;
            case 3:
                GameDetailActivity gameDetailActivity3 = this.f667c;
                Intrinsics.checkNotNullParameter(gameDetailActivity3, "<this>");
                Game game3 = gameDetailActivity3.g;
                if (game3 != null) {
                    String strName = GameKt.getEngineEnum(game3).name();
                    H0.o oVar = new H0.o(gameDetailActivity3);
                    View viewInflate = gameDetailActivity3.getLayoutInflater().inflate(R.layout.sheet_plugin_catalog, (ViewGroup) null);
                    ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.plugin_catalog_loading);
                    TextView textView = (TextView) viewInflate.findViewById(R.id.tv_plugin_catalog_status);
                    View viewFindViewById = viewInflate.findViewById(R.id.sv_plugin_catalog);
                    RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_plugin_catalog);
                    C0076j0 c0076j0 = new C0076j0(new A1.r(oVar, gameDetailActivity3, game3, 4));
                    recyclerView.setLayoutManager(new LinearLayoutManager(1));
                    recyclerView.setAdapter(c0076j0);
                    oVar.setContentView(viewInflate);
                    Window window = oVar.getWindow();
                    if (window != null) {
                        window.setBackgroundDrawableResource(android.R.color.transparent);
                    }
                    oVar.setOnShowListener(new L(oVar, 3));
                    oVar.show();
                    V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity3), null, new D0(progressBar, strName, textView, gameDetailActivity3, c0076j0, viewFindViewById, (Continuation) null), 3);
                    break;
                }
                break;
            default:
                gameDetailActivity.f3776t.launch("*/*");
                break;
        }
    }
}
