package androidx.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface LayoutInflaterFactory {
    View onCreateView(View view, String str, Context context, AttributeSet attributeSet);
}
