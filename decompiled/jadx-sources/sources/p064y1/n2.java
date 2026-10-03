package p064y1;

import android.widget.FrameLayout;
import com.minhub.gamehub.game.VxAceGameActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n2 {
    public static final FrameLayout a(VxAceGameActivity vxAceGameActivity) {
        FrameLayout frameLayout = new FrameLayout(vxAceGameActivity);
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }
}
