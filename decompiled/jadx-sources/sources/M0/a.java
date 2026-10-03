package M0;

import A1.C0009b;
import android.view.KeyEvent;
import android.widget.CompoundButton;
import com.google.android.material.chip.Chip;
import com.minhub.gamehub.game.GameActivity;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1290a;
    public final /* synthetic */ KeyEvent.Callback b;

    public /* synthetic */ a(KeyEvent.Callback callback, int i3) {
        this.f1290a = i3;
        this.b = callback;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        int i3 = this.f1290a;
        KeyEvent.Callback callback = this.b;
        switch (i3) {
            case 0:
                Chip chip = (Chip) callback;
                R0.g gVar = chip.f3389k;
                if (gVar != null) {
                    R0.a aVar = (R0.a) ((C0009b) gVar).b;
                    if (!z2 ? aVar.e(chip, aVar.f1861e) : aVar.a(chip)) {
                        aVar.d();
                    }
                }
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = chip.f3388j;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z2);
                }
                break;
            default:
                GameActivity gameActivity = (GameActivity) callback;
                int i4 = GameActivity.f3676L;
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(gameActivity, "<this>");
                gameActivity.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("game_word_wrap", z2).apply();
                gameActivity.o(z2);
                break;
        }
    }
}
