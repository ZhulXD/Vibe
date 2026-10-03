package org.libsdl.app;

import android.os.VibrationEffect;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class SDLHapticHandler_API26 extends SDLHapticHandler {
    @Override // org.libsdl.app.SDLHapticHandler
    public void run(int i3, float f, int i4) {
        SDLHapticHandler.SDLHaptic haptic = getHaptic(i3);
        if (haptic != null) {
            Log.d("SDL", "Rtest: Vibe with intensity " + f + " for " + i4);
            if (f == 0.0f) {
                stop(i3);
                return;
            }
            int iRound = Math.round(f * 255.0f);
            if (iRound > 255) {
                iRound = 255;
            }
            if (iRound < 1) {
                stop(i3);
                return;
            }
            try {
                haptic.vib.vibrate(VibrationEffect.createOneShot(i4, iRound));
            } catch (Exception unused) {
                haptic.vib.vibrate(i4);
            }
        }
    }
}
