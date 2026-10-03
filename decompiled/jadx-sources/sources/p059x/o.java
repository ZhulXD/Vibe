package p059x;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends View {
    public o(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i3) {
        e eVar = (e) getLayoutParams();
        eVar.f5862a = i3;
        setLayoutParams(eVar);
    }

    public void setGuidelineEnd(int i3) {
        e eVar = (e) getLayoutParams();
        eVar.b = i3;
        setLayoutParams(eVar);
    }

    public void setGuidelinePercent(float f) {
        e eVar = (e) getLayoutParams();
        eVar.f5865c = f;
        setLayoutParams(eVar);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void setVisibility(int i3) {
    }
}
