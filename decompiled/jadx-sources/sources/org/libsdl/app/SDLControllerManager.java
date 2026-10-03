package org.libsdl.app;

import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import androidx.core.view.InputDeviceCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SDLControllerManager {
    private static final String TAG = "SDLControllerManager";
    protected static SDLHapticHandler mHapticHandler;
    protected static SDLJoystickHandler mJoystickHandler;

    public static boolean handleJoystickMotionEvent(MotionEvent motionEvent) {
        return mJoystickHandler.handleMotionEvent(motionEvent);
    }

    public static void hapticRun(int i3, float f, int i4) {
        mHapticHandler.run(i3, f, i4);
    }

    public static void hapticStop(int i3) {
        mHapticHandler.stop(i3);
    }

    public static void initialize() {
        if (mJoystickHandler == null) {
            mJoystickHandler = new SDLJoystickHandler_API19();
        }
        if (mHapticHandler == null) {
            if (Build.VERSION.SDK_INT >= 26) {
                mHapticHandler = new SDLHapticHandler_API26();
            } else {
                mHapticHandler = new SDLHapticHandler();
            }
        }
    }

    public static boolean isDeviceSDLJoystick(int i3) {
        InputDevice device = InputDevice.getDevice(i3);
        if (device == null || i3 < 0) {
            return false;
        }
        int sources = device.getSources();
        return (sources & 16) != 0 || (sources & InputDeviceCompat.SOURCE_DPAD) == 513 || (sources & InputDeviceCompat.SOURCE_GAMEPAD) == 1025;
    }

    public static native int nativeAddHaptic(int i3, String str);

    public static native int nativeAddJoystick(int i3, String str, String str2, int i4, int i5, boolean z2, int i6, int i7, int i8, int i9);

    public static native int nativeRemoveHaptic(int i3);

    public static native int nativeRemoveJoystick(int i3);

    public static native int nativeSetupJNI();

    public static native void onNativeHat(int i3, int i4, int i5, int i6);

    public static native void onNativeJoy(int i3, int i4, float f);

    public static native int onNativePadDown(int i3, int i4);

    public static native int onNativePadUp(int i3, int i4);

    public static void pollHapticDevices() {
        mHapticHandler.pollHapticDevices();
    }

    public static void pollInputDevices() {
        mJoystickHandler.pollInputDevices();
    }
}
