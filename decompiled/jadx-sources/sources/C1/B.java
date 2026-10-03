package C1;

import android.widget.Toast;
import com.minhub.gamehub.hub.AddGameActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f394d;

    public /* synthetic */ B(AddGameActivity addGameActivity, String str, int i3) {
        this.b = i3;
        this.f393c = addGameActivity;
        this.f394d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                Q q2 = Q.b;
                AddGameActivity addGameActivity = this.f393c;
                addGameActivity.B(q2);
                Toast.makeText(addGameActivity, this.f394d, 1).show();
                break;
            case 1:
                Q q3 = Q.b;
                AddGameActivity addGameActivity2 = this.f393c;
                addGameActivity2.B(q3);
                Toast.makeText(addGameActivity2, this.f394d, 1).show();
                break;
            case 2:
                Q q4 = Q.b;
                AddGameActivity addGameActivity3 = this.f393c;
                addGameActivity3.B(q4);
                Toast.makeText(addGameActivity3, this.f394d, 1).show();
                break;
            case 3:
                Q q5 = Q.b;
                AddGameActivity addGameActivity4 = this.f393c;
                addGameActivity4.B(q5);
                Toast.makeText(addGameActivity4, this.f394d, 1).show();
                break;
            default:
                Q q6 = Q.b;
                AddGameActivity addGameActivity5 = this.f393c;
                addGameActivity5.B(q6);
                Toast.makeText(addGameActivity5, this.f394d, 1).show();
                break;
        }
    }
}
