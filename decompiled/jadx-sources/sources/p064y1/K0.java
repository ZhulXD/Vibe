package p064y1;

import T1.k;
import android.widget.SeekBar;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.GodotGameActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K0 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6095a;
    public final /* synthetic */ GodotGameActivity b;

    public /* synthetic */ K0(GodotGameActivity godotGameActivity, int i3) {
        this.f6095a = i3;
        this.b = godotGameActivity;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        switch (this.f6095a) {
            case 0:
                if (z2) {
                    GodotGameActivity godotGameActivity = this.b;
                    EditModeOverlay editModeOverlay = godotGameActivity.f3716m;
                    if (editModeOverlay != null) {
                        editModeOverlay.g(new k(i3, 2));
                    }
                    godotGameActivity.r();
                    break;
                }
                break;
            default:
                if (z2) {
                    GodotGameActivity godotGameActivity2 = this.b;
                    EditModeOverlay editModeOverlay2 = godotGameActivity2.f3716m;
                    if (editModeOverlay2 != null) {
                        editModeOverlay2.g(new k(i3, 3));
                    }
                    godotGameActivity2.r();
                    break;
                }
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i3 = this.f6095a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i3 = this.f6095a;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    private final void d(SeekBar seekBar) {
    }
}
