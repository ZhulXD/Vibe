package f2;

import V1.A;
import android.widget.Toast;
import androidx.lifecycle.LifecycleOwnerKt;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import kotlin.coroutines.Continuation;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotActivity;
import org.godotengine.godot.nativeapi.GodotNativeBridge;
import p064y1.L;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f4311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4312d;

    public /* synthetic */ a(Object obj, boolean z2, int i3) {
        this.b = i3;
        this.f4312d = obj;
        this.f4311c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.b;
        Object obj = this.f4312d;
        boolean z2 = this.f4311c;
        switch (i3) {
            case 0:
                GodotNativeBridge.nativeEnableImmersiveMode$lambda$1((GodotNativeBridge) obj, z2);
                break;
            case 1:
                GodotNativeBridge.nativeSetAutoEnterPiPModeOnBackground$lambda$9((GodotActivity) obj, z2);
                break;
            case 2:
                Godot.setKeepScreenOn$lambda$25(z2, (Godot) obj);
                break;
            default:
                GameActivity gameActivity = (GameActivity) obj;
                int i4 = GameActivity.f3676L;
                if (!z2) {
                    Toast.makeText(gameActivity, gameActivity.getString(R.string.save_fail), 0).show();
                    break;
                } else {
                    Toast.makeText(gameActivity, gameActivity.getString(R.string.save_ok), 0).show();
                    Game game = gameActivity.f3695o;
                    if (game != null) {
                        A.c(LifecycleOwnerKt.getLifecycleScope(gameActivity), null, new L(gameActivity, game, (Continuation) null), 3);
                        break;
                    }
                }
                break;
        }
    }

    public /* synthetic */ a(boolean z2, Object obj, int i3) {
        this.b = i3;
        this.f4311c = z2;
        this.f4312d = obj;
    }
}
