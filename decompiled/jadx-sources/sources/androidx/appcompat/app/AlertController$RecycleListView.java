package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import p008d.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2616c;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f3857t);
        this.f2616c = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
