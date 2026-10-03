package org.libsdl.app;

import android.os.Vibrator;
import android.view.InputDevice;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class SDLHapticHandler {
    private final ArrayList<SDLHaptic> mHaptics = new ArrayList<>();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class SDLHaptic {
        public int device_id;
        public String name;
        public Vibrator vib;
    }

    public SDLHaptic getHaptic(int i3) {
        ArrayList<SDLHaptic> arrayList = this.mHaptics;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            SDLHaptic sDLHaptic = arrayList.get(i4);
            i4++;
            SDLHaptic sDLHaptic2 = sDLHaptic;
            if (sDLHaptic2.device_id == i3) {
                return sDLHaptic2;
            }
        }
        return null;
    }

    public void pollHapticDevices() {
        boolean zHasVibrator;
        int[] deviceIds = InputDevice.getDeviceIds();
        int length = deviceIds.length;
        while (true) {
            length--;
            if (length <= -1) {
                break;
            }
            if (getHaptic(deviceIds[length]) == null) {
                InputDevice device = InputDevice.getDevice(deviceIds[length]);
                Vibrator vibrator = device.getVibrator();
                if (vibrator.hasVibrator()) {
                    SDLHaptic sDLHaptic = new SDLHaptic();
                    sDLHaptic.device_id = deviceIds[length];
                    sDLHaptic.name = device.getName();
                    sDLHaptic.vib = vibrator;
                    this.mHaptics.add(sDLHaptic);
                    SDLControllerManager.nativeAddHaptic(sDLHaptic.device_id, sDLHaptic.name);
                }
            }
        }
        Vibrator vibrator2 = (Vibrator) SDL.getContext().getSystemService("vibrator");
        if (vibrator2 != null) {
            zHasVibrator = vibrator2.hasVibrator();
            if (zHasVibrator && getHaptic(999999) == null) {
                SDLHaptic sDLHaptic2 = new SDLHaptic();
                sDLHaptic2.device_id = 999999;
                sDLHaptic2.name = "VIBRATOR_SERVICE";
                sDLHaptic2.vib = vibrator2;
                this.mHaptics.add(sDLHaptic2);
                SDLControllerManager.nativeAddHaptic(sDLHaptic2.device_id, sDLHaptic2.name);
            }
        } else {
            zHasVibrator = false;
        }
        ArrayList<SDLHaptic> arrayList = this.mHaptics;
        int size = arrayList.size();
        ArrayList arrayList2 = null;
        int i3 = 0;
        while (i3 < size) {
            SDLHaptic sDLHaptic3 = arrayList.get(i3);
            i3++;
            int i4 = sDLHaptic3.device_id;
            int i5 = 0;
            while (i5 < deviceIds.length && i4 != deviceIds[i5]) {
                i5++;
            }
            if (i4 != 999999 || !zHasVibrator) {
                if (i5 == deviceIds.length) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(Integer.valueOf(i4));
                }
            }
        }
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            int i6 = 0;
            while (i6 < size2) {
                Object obj = arrayList2.get(i6);
                i6++;
                int iIntValue = ((Integer) obj).intValue();
                SDLControllerManager.nativeRemoveHaptic(iIntValue);
                for (int i7 = 0; i7 < this.mHaptics.size(); i7++) {
                    if (this.mHaptics.get(i7).device_id == iIntValue) {
                        this.mHaptics.remove(i7);
                        break;
                    }
                }
            }
        }
    }

    public void run(int i3, float f, int i4) {
        SDLHaptic haptic = getHaptic(i3);
        if (haptic != null) {
            haptic.vib.vibrate(i4);
        }
    }

    public void stop(int i3) {
        SDLHaptic haptic = getHaptic(i3);
        if (haptic != null) {
            haptic.vib.cancel();
        }
    }
}
