package p024j;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import p021i.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u extends FrameLayout implements b {
    public final CollapsibleActionView b;

    /* JADX WARN: Multi-variable type inference failed */
    public u(View view) {
        super(view.getContext());
        this.b = (CollapsibleActionView) view;
        addView(view);
    }
}
