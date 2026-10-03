package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ ClockFaceView b;

    public b(ClockFaceView clockFaceView) {
        this.b = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ClockFaceView clockFaceView = this.b;
        if (!clockFaceView.isShown()) {
            return true;
        }
        clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = ((clockFaceView.getHeight() / 2) - clockFaceView.f3636t.f3645e) - clockFaceView.f3629B;
        if (height != clockFaceView.f3657r) {
            clockFaceView.f3657r = height;
            clockFaceView.e();
            ClockHandView clockHandView = clockFaceView.f3636t;
            clockHandView.f3651m = clockFaceView.f3657r;
            clockHandView.invalidate();
        }
        return true;
    }
}
