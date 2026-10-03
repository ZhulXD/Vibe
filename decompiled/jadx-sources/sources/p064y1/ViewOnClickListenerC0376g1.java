package p064y1;

import android.view.View;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.hub.catalog.h;

/* JADX INFO: renamed from: y1.g1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0376g1 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0385j1 f6238c;

    public /* synthetic */ ViewOnClickListenerC0376g1(C0385j1 c0385j1, int i3) {
        this.b = i3;
        this.f6238c = c0385j1;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.b) {
            case 0:
                C0385j1 c0385j1 = this.f6238c;
                EditModeOverlay editModeOverlay = c0385j1.f6261i;
                if (editModeOverlay != null) {
                    editModeOverlay.g(new C0373f1(0));
                }
                c0385j1.g();
                break;
            case 1:
                C0385j1 c0385j2 = this.f6238c;
                EditModeOverlay editModeOverlay2 = c0385j2.f6261i;
                if (editModeOverlay2 != null) {
                    editModeOverlay2.g(new h(28));
                }
                c0385j2.g();
                break;
            case 2:
                C0385j1 c0385j3 = this.f6238c;
                EditModeOverlay editModeOverlay3 = c0385j3.f6261i;
                if (editModeOverlay3 != null) {
                    editModeOverlay3.g(new h(29));
                }
                c0385j3.g();
                break;
            case 3:
                C0385j1 c0385j4 = this.f6238c;
                c0385j4.f6262j = false;
                EditModeOverlay editModeOverlay4 = c0385j4.f6261i;
                if (editModeOverlay4 != null) {
                    editModeOverlay4.e(null);
                }
                c0385j4.g();
                break;
            case 4:
                C0385j1 c0385j5 = this.f6238c;
                EditModeOverlay editModeOverlay5 = c0385j5.f6261i;
                if ((editModeOverlay5 != null ? editModeOverlay5.getSelectedButtonConfig() : null) != null) {
                    c0385j5.f6262j = !c0385j5.f6262j;
                    c0385j5.g();
                    break;
                }
                break;
            case 5:
                this.f6238c.e(false);
                break;
            default:
                this.f6238c.e(true);
                break;
        }
    }
}
