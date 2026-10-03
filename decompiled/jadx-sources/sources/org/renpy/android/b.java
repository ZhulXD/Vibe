package org.renpy.android;

import android.view.View;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.game.VxAceCheatActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements View.OnClickListener {
    public final /* synthetic */ int b;

    public /* synthetic */ b(int i3) {
        this.b = i3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.b) {
            case 0:
                PythonSDLActivity.lambda$bindMenuOverlay$4(view);
                break;
            case 1:
                int i3 = GameActivity.f3676L;
                break;
            case 2:
                int i4 = GodotGameActivity.f3707q;
                break;
            case 3:
                break;
            default:
                int i5 = VxAceCheatActivity.f3725o;
                break;
        }
    }

    private final void a(View view) {
    }
}
