package com.hatkid.mkxpz.gamepad;

import android.view.MotionEvent;
import android.view.View;
import p010d1.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnTouchListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3660c;

    public /* synthetic */ a(int i3, Object obj) {
        this.b = i3;
        this.f3660c = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.b) {
            case 0:
                return ((DynamicGamepadButton) this.f3660c).lambda$setupTouchListener$0(view, motionEvent);
            default:
                i iVar = (i) this.f3660c;
                if (motionEvent.getAction() == 1) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - iVar.f3899o;
                    if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
                        iVar.f3897m = false;
                    }
                    iVar.t();
                    iVar.f3897m = true;
                    iVar.f3899o = System.currentTimeMillis();
                }
                return false;
        }
    }
}
