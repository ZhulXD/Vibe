package p064y1;

import android.view.View;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.hub.catalog.h;

/* JADX INFO: renamed from: y1.z0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0431z0 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GodotGameActivity f6412c;

    public /* synthetic */ ViewOnClickListenerC0431z0(GodotGameActivity godotGameActivity, int i3) {
        this.b = i3;
        this.f6412c = godotGameActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        GodotGameActivity godotGameActivity = this.f6412c;
        switch (i3) {
            case 0:
                int i4 = GodotGameActivity.f3707q;
                godotGameActivity.finish();
                break;
            case 1:
                int i5 = GodotGameActivity.f3707q;
                godotGameActivity.l(false);
                break;
            case 2:
                int i6 = GodotGameActivity.f3707q;
                godotGameActivity.l(true);
                break;
            case 3:
                EditModeOverlay editModeOverlay = godotGameActivity.f3716m;
                if (editModeOverlay != null) {
                    editModeOverlay.g(new h(23));
                }
                godotGameActivity.r();
                break;
            case 4:
                EditModeOverlay editModeOverlay2 = godotGameActivity.f3716m;
                if (editModeOverlay2 != null) {
                    editModeOverlay2.g(new h(24));
                }
                godotGameActivity.r();
                break;
            case 5:
                EditModeOverlay editModeOverlay3 = godotGameActivity.f3716m;
                if (editModeOverlay3 != null) {
                    editModeOverlay3.g(new h(22));
                }
                godotGameActivity.r();
                break;
            case 6:
                godotGameActivity.f3719p = false;
                EditModeOverlay editModeOverlay4 = godotGameActivity.f3716m;
                if (editModeOverlay4 != null) {
                    editModeOverlay4.e(null);
                }
                godotGameActivity.r();
                break;
            default:
                EditModeOverlay editModeOverlay5 = godotGameActivity.f3716m;
                if ((editModeOverlay5 != null ? editModeOverlay5.getSelectedButtonConfig() : null) != null) {
                    godotGameActivity.f3719p = !godotGameActivity.f3719p;
                    godotGameActivity.r();
                    break;
                }
                break;
        }
    }
}
