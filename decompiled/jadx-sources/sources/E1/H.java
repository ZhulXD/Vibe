package E1;

import android.content.Context;
import android.widget.SeekBar;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.VxAceGameActivity;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import p064y1.L1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class H implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f878a = 0;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f879c;

    public H(TextView textView, VxAceGameActivity vxAceGameActivity) {
        this.b = textView;
        this.f879c = vxAceGameActivity;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar sb, int i3, boolean z2) {
        int i4 = this.f878a;
        Object obj = this.f879c;
        TextView textView = this.b;
        switch (i4) {
            case 0:
                Intrinsics.checkNotNullParameter(sb, "sb");
                I i5 = (I) obj;
                int i6 = i3 == 0 ? 0 : (i3 * 2) + 18;
                textView.setText(i6 == 0 ? i5.getString(R.string.settings_util_font_size_default) : i6 + "px");
                Set set = S1.d.f2060a;
                Context contextRequireContext = i5.requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
                S1.d.s(contextRequireContext).edit().putInt("mv_mz_font_size", RangesKt.coerceIn(i6, 0, 46)).apply();
                break;
            default:
                VxAceGameActivity vxAceGameActivity = (VxAceGameActivity) obj;
                textView.setText(vxAceGameActivity.getString(R.string.volume_label, Integer.valueOf(i3)));
                if (z2) {
                    vxAceGameActivity.queueRuntimeScript$app_release(L1.H(i3));
                }
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar sb) {
        switch (this.f878a) {
            case 0:
                Intrinsics.checkNotNullParameter(sb, "sb");
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar sb) {
        switch (this.f878a) {
            case 0:
                Intrinsics.checkNotNullParameter(sb, "sb");
                break;
            default:
                Set set = S1.d.f2060a;
                VxAceGameActivity vxAceGameActivity = (VxAceGameActivity) this.f879c;
                int progress = sb != null ? sb.getProgress() : 75;
                Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
                vxAceGameActivity.getSharedPreferences("minhub_prefs", 0).edit().putInt("game_volume", RangesKt.coerceIn(progress, 0, 100)).apply();
                break;
        }
    }

    public H(I i3, TextView textView) {
        this.f879c = i3;
        this.b = textView;
    }

    private final void a(SeekBar seekBar) {
    }
}
