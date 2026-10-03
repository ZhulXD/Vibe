package p064y1;

import C1.A1;
import G1.i;
import G1.m;
import Q1.d;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.GameActivity;

/* JADX INFO: renamed from: y1.k, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0386k implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f6266d;

    public /* synthetic */ RunnableC0386k(GameActivity gameActivity, d dVar, int i3) {
        this.b = i3;
        this.f6265c = gameActivity;
        this.f6266d = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                GameActivity gameActivity = this.f6265c;
                d dVar = this.f6266d;
                if (gameActivity.y(dVar)) {
                    int longVersionCode = 0;
                    try {
                        PackageInfo packageInfo = gameActivity.getPackageManager().getPackageInfo(gameActivity.getPackageName(), 0);
                        longVersionCode = Build.VERSION.SDK_INT >= 28 ? (int) packageInfo.getLongVersionCode() : packageInfo.versionCode;
                        break;
                    } catch (Exception unused) {
                    }
                    i iVarC = m.c(gameActivity, longVersionCode);
                    if (gameActivity.y(dVar)) {
                        gameActivity.runOnUiThread(new A1(gameActivity, dVar, iVarC, 11));
                        break;
                    }
                }
                break;
            case 1:
                GameActivity gameActivity2 = this.f6265c;
                d dVar2 = this.f6266d;
                int i3 = GameActivity.f3676L;
                if (gameActivity2.y(dVar2)) {
                    Toast.makeText(gameActivity2, gameActivity2.getString(R.string.toast_cannot_open_game), 1).show();
                    break;
                }
                break;
            case 2:
                GameActivity gameActivity3 = this.f6265c;
                d dVar3 = this.f6266d;
                int i4 = GameActivity.f3676L;
                if (gameActivity3.y(dVar3)) {
                    gameActivity3.D();
                }
                break;
            case 3:
                GameActivity gameActivity4 = this.f6265c;
                d dVar4 = this.f6266d;
                int i5 = GameActivity.f3676L;
                if (gameActivity4.y(dVar4)) {
                    gameActivity4.t();
                }
                break;
            default:
                GameActivity gameActivity5 = this.f6265c;
                d dVar5 = this.f6266d;
                int i6 = GameActivity.f3676L;
                if (gameActivity5.y(dVar5)) {
                    if (!L1.b) {
                        L1.b = true;
                        Toast.makeText(gameActivity5, gameActivity5.getString(R.string.toast_renderer_restarting), 1).show();
                        gameActivity5.recreate();
                    } else {
                        Toast.makeText(gameActivity5, gameActivity5.getString(R.string.toast_game_renderer_crash), 1).show();
                        gameActivity5.finish();
                    }
                    break;
                }
                break;
        }
    }
}
