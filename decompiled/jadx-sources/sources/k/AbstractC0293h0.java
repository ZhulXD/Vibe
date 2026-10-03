package k;

import android.text.StaticLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: k.h0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0293h0 {
    public abstract void a(StaticLayout.Builder builder, TextView textView);

    public boolean b(TextView textView) {
        return ((Boolean) C0295i0.e(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
    }
}
