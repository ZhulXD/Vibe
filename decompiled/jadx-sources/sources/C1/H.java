package C1;

import android.content.IntentSender;
import android.view.View;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.contract.ActivityResultContract;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.AddGameActivity;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import org.godotengine.godot.Godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f437e;

    public /* synthetic */ H(S1.c cVar, Object obj, int i3, int i4) {
        this.b = i4;
        this.f436d = cVar;
        this.f437e = obj;
        this.f435c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.b;
        int i4 = this.f435c;
        Object obj = this.f437e;
        Object obj2 = this.f436d;
        switch (i3) {
            case 0:
                ((AddGameActivity) obj2).D(RangesKt.coerceIn((((Ref.IntRef) obj).element * 95) / i4, 1, 95));
                break;
            case 1:
                ((N.a) obj2).b.e(i4, obj);
                break;
            case 2:
                ComponentActivity$activityResultRegistry$1.onLaunch$lambda$0((ComponentActivity$activityResultRegistry$1) obj2, i4, (ActivityResultContract.SynchronousResult) obj);
                break;
            case 3:
                ComponentActivity$activityResultRegistry$1.onLaunch$lambda$1((ComponentActivity$activityResultRegistry$1) obj2, i4, (IntentSender.SendIntentException) obj);
                break;
            case 4:
                Godot.setWindowColor$lambda$12((View) obj2, i4, (Godot) obj);
                break;
            default:
                GameActivity gameActivity = (GameActivity) obj2;
                int i5 = GameActivity.f3676L;
                if (gameActivity.y((Q1.d) obj)) {
                    gameActivity.u().f5688f0.setText(gameActivity.getString(R.string.format_fps, String.valueOf(i4)));
                }
                break;
        }
    }

    public /* synthetic */ H(Object obj, int i3, Object obj2, int i4) {
        this.b = i4;
        this.f436d = obj;
        this.f435c = i3;
        this.f437e = obj2;
    }
}
