package p064y1;

import Q1.d;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.GameActivity;

/* JADX INFO: renamed from: y1.m, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0392m implements DialogInterface.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f6288d;

    public /* synthetic */ DialogInterfaceOnClickListenerC0392m(GameActivity gameActivity, d dVar, int i3) {
        this.b = i3;
        this.f6287c = gameActivity;
        this.f6288d = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        switch (this.b) {
            case 0:
                GameActivity gameActivity = this.f6287c;
                d dVar = this.f6288d;
                if (!gameActivity.y(dVar)) {
                    dVar.c();
                    return;
                }
                try {
                    Context applicationContext = gameActivity.getApplicationContext();
                    Intent launchIntentForPackage = applicationContext.getPackageManager().getLaunchIntentForPackage(applicationContext.getPackageName());
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.addFlags(268468224);
                    }
                    if (launchIntentForPackage != null) {
                        applicationContext.startActivity(launchIntentForPackage);
                    }
                    break;
                } catch (Exception unused) {
                } finally {
                    Runtime.getRuntime().exit(0);
                }
                return;
            default:
                dialogInterface.dismiss();
                GameActivity gameActivity2 = this.f6287c;
                d dVar2 = this.f6288d;
                if (gameActivity2.y(dVar2)) {
                    Toast.makeText(gameActivity2, R.string.ota_downloading, 0).show();
                    new Thread(new RunnableC0386k(gameActivity2, dVar2, 0)).start();
                    return;
                }
                return;
        }
    }
}
