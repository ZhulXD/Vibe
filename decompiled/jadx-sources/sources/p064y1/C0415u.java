package p064y1;

import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.GameActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: y1.u, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0415u implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6369c;

    public /* synthetic */ C0415u(GameActivity gameActivity, int i3) {
        this.b = i3;
        this.f6369c = gameActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        GameActivity gameActivity = this.f6369c;
        switch (i3) {
            case 0:
                int i4 = GameActivity.f3676L;
                gameActivity.w();
                return Unit.INSTANCE;
            case 1:
                int i5 = GameActivity.f3676L;
                return gameActivity.u().f5707q0;
            default:
                int i6 = GameActivity.f3676L;
                Toast.makeText(gameActivity, gameActivity.getString(R.string.toast_layout_saved), 0).show();
                return Unit.INSTANCE;
        }
    }
}
