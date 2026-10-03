package C1;

import android.view.View;
import com.minhub.gamehub.game.VxAceCheatActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: C1.t1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0106t1 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f688c;

    public /* synthetic */ ViewOnClickListenerC0106t1(int i3, Function0 function0) {
        this.b = i3;
        this.f688c = function0;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        Function0 function0 = this.f688c;
        switch (i3) {
            case 0:
                int i4 = KiriKiriInstallActivity.f3784o;
                function0.invoke();
                break;
            case 1:
                function0.invoke();
                break;
            default:
                int i5 = VxAceCheatActivity.f3725o;
                function0.invoke();
                break;
        }
    }
}
