package org.libsdl.app;

import android.view.InputDevice;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class SDLJoystickHandler_API16 extends SDLJoystickHandler {
    private final ArrayList<SDLJoystick> mJoysticks = new ArrayList<>();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class RangeComparator implements Comparator<InputDevice.MotionRange> {
        @Override // java.util.Comparator
        public int compare(InputDevice.MotionRange motionRange, InputDevice.MotionRange motionRange2) {
            int axis = motionRange.getAxis();
            int axis2 = motionRange2.getAxis();
            if (axis == 22) {
                axis = 23;
            } else if (axis == 23) {
                axis = 22;
            }
            if (axis2 == 22) {
                axis2 = 23;
            } else if (axis2 == 23) {
                axis2 = 22;
            }
            return axis - axis2;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class SDLJoystick {
        public ArrayList<InputDevice.MotionRange> axes;
        public String desc;
        public int device_id;
        public ArrayList<InputDevice.MotionRange> hats;
        public String name;
    }

    public int getButtonMask(InputDevice inputDevice) {
        return -1;
    }

    public SDLJoystick getJoystick(int i3) {
        ArrayList<SDLJoystick> arrayList = this.mJoysticks;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            SDLJoystick sDLJoystick = arrayList.get(i4);
            i4++;
            SDLJoystick sDLJoystick2 = sDLJoystick;
            if (sDLJoystick2.device_id == i3) {
                return sDLJoystick2;
            }
        }
        return null;
    }

    public String getJoystickDescriptor(InputDevice inputDevice) {
        String descriptor = inputDevice.getDescriptor();
        return (descriptor == null || descriptor.isEmpty()) ? inputDevice.getName() : descriptor;
    }

    public int getProductId(InputDevice inputDevice) {
        return 0;
    }

    public int getVendorId(InputDevice inputDevice) {
        return 0;
    }

    @Override // org.libsdl.app.SDLJoystickHandler
    public boolean handleMotionEvent(MotionEvent motionEvent) {
        SDLJoystick joystick;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getActionMasked() == 2 && (joystick = getJoystick(motionEvent.getDeviceId())) != null) {
            for (int i3 = 0; i3 < joystick.axes.size(); i3++) {
                InputDevice.MotionRange motionRange = joystick.axes.get(i3);
                SDLControllerManager.onNativeJoy(joystick.device_id, i3, (((motionEvent.getAxisValue(motionRange.getAxis(), actionIndex) - motionRange.getMin()) / motionRange.getRange()) * 2.0f) - 1.0f);
            }
            for (int i4 = 0; i4 < joystick.hats.size() / 2; i4++) {
                int i5 = i4 * 2;
                SDLControllerManager.onNativeHat(joystick.device_id, i4, Math.round(motionEvent.getAxisValue(joystick.hats.get(i5).getAxis(), actionIndex)), Math.round(motionEvent.getAxisValue(joystick.hats.get(i5 + 1).getAxis(), actionIndex)));
            }
        }
        return true;
    }

    @Override // org.libsdl.app.SDLJoystickHandler
    public void pollInputDevices() {
        int[] deviceIds = InputDevice.getDeviceIds();
        for (int i3 : deviceIds) {
            if (SDLControllerManager.isDeviceSDLJoystick(i3) && getJoystick(i3) == null) {
                InputDevice device = InputDevice.getDevice(i3);
                SDLJoystick sDLJoystick = new SDLJoystick();
                sDLJoystick.device_id = i3;
                sDLJoystick.name = device.getName();
                sDLJoystick.desc = getJoystickDescriptor(device);
                sDLJoystick.axes = new ArrayList<>();
                sDLJoystick.hats = new ArrayList<>();
                List<InputDevice.MotionRange> motionRanges = device.getMotionRanges();
                Collections.sort(motionRanges, new RangeComparator());
                for (InputDevice.MotionRange motionRange : motionRanges) {
                    if ((motionRange.getSource() & 16) != 0) {
                        if (motionRange.getAxis() == 15 || motionRange.getAxis() == 16) {
                            sDLJoystick.hats.add(motionRange);
                        } else {
                            sDLJoystick.axes.add(motionRange);
                        }
                    }
                }
                this.mJoysticks.add(sDLJoystick);
                SDLControllerManager.nativeAddJoystick(sDLJoystick.device_id, sDLJoystick.name, sDLJoystick.desc, getVendorId(device), getProductId(device), false, getButtonMask(device), sDLJoystick.axes.size(), sDLJoystick.hats.size() / 2, 0);
            }
        }
        ArrayList<SDLJoystick> arrayList = this.mJoysticks;
        int size = arrayList.size();
        ArrayList arrayList2 = null;
        int i4 = 0;
        while (i4 < size) {
            SDLJoystick sDLJoystick2 = arrayList.get(i4);
            i4++;
            int i5 = sDLJoystick2.device_id;
            int i6 = 0;
            while (i6 < deviceIds.length && i5 != deviceIds[i6]) {
                i6++;
            }
            if (i6 == deviceIds.length) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(Integer.valueOf(i5));
            }
        }
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            int i7 = 0;
            while (i7 < size2) {
                Object obj = arrayList2.get(i7);
                i7++;
                int iIntValue = ((Integer) obj).intValue();
                SDLControllerManager.nativeRemoveJoystick(iIntValue);
                for (int i8 = 0; i8 < this.mJoysticks.size(); i8++) {
                    if (this.mJoysticks.get(i8).device_id == iIntValue) {
                        this.mJoysticks.remove(i8);
                        break;
                    }
                }
            }
        }
    }
}
