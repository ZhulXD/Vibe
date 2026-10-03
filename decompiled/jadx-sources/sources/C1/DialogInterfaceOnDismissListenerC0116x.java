package C1;

import android.content.DialogInterface;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.AddGameActivity;

/* JADX INFO: renamed from: C1.x, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnDismissListenerC0116x implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f709c;

    public /* synthetic */ DialogInterfaceOnDismissListenerC0116x(int i3, Object obj) {
        this.b = i3;
        this.f709c = obj;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.b) {
            case 0:
                AddGameActivity addGameActivity = (AddGameActivity) this.f709c;
                addGameActivity.f3749o = null;
                addGameActivity.f3747m = null;
                break;
            case 1:
                ((u1.a) this.f709c).b.invoke();
                break;
            default:
                ((GameActivity) this.f709c).f3692l = false;
                break;
        }
    }
}
