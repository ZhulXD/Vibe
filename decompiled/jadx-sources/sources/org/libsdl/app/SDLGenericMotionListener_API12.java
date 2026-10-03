package org.libsdl.app;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class SDLGenericMotionListener_API12 implements View.OnGenericMotionListener {
    public float getEventX(MotionEvent motionEvent) {
        return motionEvent.getX(0);
    }

    public float getEventY(MotionEvent motionEvent) {
        return motionEvent.getY(0);
    }

    public boolean inRelativeMode() {
        return false;
    }

    @Override // android.view.View.OnGenericMotionListener
    public boolean onGenericMotion(View view, MotionEvent motionEvent) {
        int source = motionEvent.getSource();
        if (source == 8194) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 7) {
                SDLActivity.onNativeMouse(0, actionMasked, SDLActivity.surfaceX(motionEvent.getX(0)), SDLActivity.surfaceY(motionEvent.getY(0)), false);
                return true;
            }
            if (actionMasked == 8) {
                SDLActivity.onNativeMouse(0, actionMasked, motionEvent.getAxisValue(10, 0), motionEvent.getAxisValue(9, 0), false);
                return true;
            }
        } else if (source == 16777232) {
            return SDLControllerManager.handleJoystickMotionEvent(motionEvent);
        }
        return false;
    }

    public boolean setRelativeMouseEnabled(boolean z2) {
        return false;
    }

    public boolean supportsRelativeMouse() {
        return false;
    }

    public void reclaimRelativeMouseModeIfNeeded() {
    }
}
