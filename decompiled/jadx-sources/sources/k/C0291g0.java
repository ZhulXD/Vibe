package k;

import android.text.StaticLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: k.g0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0291g0 extends C0289f0 {
    @Override // k.C0289f0, k.AbstractC0293h0
    public void a(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection(textView.getTextDirectionHeuristic());
    }

    @Override // k.AbstractC0293h0
    public boolean b(TextView textView) {
        return textView.isHorizontallyScrollable();
    }
}
