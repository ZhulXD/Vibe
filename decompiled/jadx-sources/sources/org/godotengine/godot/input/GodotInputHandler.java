package org.godotengine.godot.input;

import android.content.Context;
import android.content.res.Configuration;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.input.InputManager;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.GestureDetector;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.WindowManager;
import androidx.core.location.LocationRequestCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MotionEventCompat;
import java.util.Collections;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotLib;
import org.godotengine.godot.GodotRenderView;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotInputHandler implements InputManager.InputDeviceListener, SensorEventListener {
    private static final String[] JOYPAD_IGNORE_LIST = {"uinput-fpc", "uinput-goodix", "uinput-synaptics", "uinput-elan", "uinput-vfs", "uinput-atrus"};
    private static final int ROTARY_INPUT_HORIZONTAL_AXIS = 0;
    private static final int ROTARY_INPUT_VERTICAL_AXIS = 1;
    private static final String TAG = "GodotInputHandler";
    private final GestureDetector gestureDetector;
    private final Godot godot;
    private final GodotGestureHandler godotGestureHandler;
    private boolean hasHardwareKeyboardConfig;
    private final InputManager mInputManager;
    private final ScaleGestureDetector scaleGestureDetector;
    private final WindowManager windowManager;
    private final SparseIntArray mJoystickIds = new SparseIntArray(4);
    private final SparseArray<Joystick> mJoysticksDevices = new SparseArray<>(4);
    private final HashSet<Integer> mHardwareKeyboardIds = new HashSet<>();
    private AtomicInteger lastSeenToolType = new AtomicInteger(0);
    private int rotaryInputAxis = 1;
    private int cachedRotation = -1;
    private boolean overrideVolumeButtons = false;

    public GodotInputHandler(Context context, Godot godot) {
        boolean z2 = false;
        this.hasHardwareKeyboardConfig = false;
        this.godot = godot;
        InputManager inputManager = (InputManager) context.getSystemService("input");
        this.mInputManager = inputManager;
        inputManager.registerInputDeviceListener(this, null);
        this.windowManager = (WindowManager) context.getSystemService("window");
        GodotGestureHandler godotGestureHandler = new GodotGestureHandler(this);
        this.godotGestureHandler = godotGestureHandler;
        GestureDetector gestureDetector = new GestureDetector(context, godotGestureHandler);
        this.gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(context, godotGestureHandler);
        this.scaleGestureDetector = scaleGestureDetector;
        scaleGestureDetector.setStylusScaleEnabled(true);
        Configuration configuration = context.getResources().getConfiguration();
        if (configuration.keyboard != 1 && configuration.hardKeyboardHidden == 1) {
            z2 = true;
        }
        this.hasHardwareKeyboardConfig = z2;
    }

    private int assignJoystickIdNumber(int i3) {
        int i4 = 0;
        while (this.mJoystickIds.indexOfValue(i4) >= 0) {
            i4++;
        }
        this.mJoystickIds.put(i3, i4);
        return i4;
    }

    private void dispatchInputEventRunnable(InputEventRunnable inputEventRunnable) {
        if (shouldDispatchInputToRenderThread()) {
            this.godot.runOnRenderThread(inputEventRunnable);
        } else {
            inputEventRunnable.run();
        }
    }

    public static float getEventTiltX(MotionEvent motionEvent) {
        return ((float) (-Math.sin(motionEvent.getOrientation()))) * ((float) Math.sin(motionEvent.getAxisValue(25)));
    }

    public static float getEventTiltY(MotionEvent motionEvent) {
        return ((float) Math.cos(motionEvent.getOrientation())) * ((float) Math.sin(motionEvent.getAxisValue(25)));
    }

    public static int getEventToolType(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 0) {
            return motionEvent.getToolType(0);
        }
        return 0;
    }

    public static int getGodotButton(int i3) {
        if (i3 != 4) {
            if (i3 == 82) {
                return 6;
            }
            if (i3 == 130) {
                return 15;
            }
            switch (i3) {
                case 19:
                    return 11;
                case MotionEventCompat.AXIS_RUDDER /* 20 */:
                    return 12;
                case 21:
                    return 13;
                case 22:
                    return 14;
                default:
                    switch (i3) {
                        case 96:
                            return 0;
                        case 97:
                            return 1;
                        case 98:
                            return 17;
                        case 99:
                            return 2;
                        case 100:
                            return 3;
                        case GodotService.MSG_ENGINE_STATUS_UPDATE /* 101 */:
                            return 18;
                        case 102:
                            return 9;
                        case 103:
                            return 10;
                        case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                            return 15;
                        case 105:
                            return 16;
                        case 106:
                            return 7;
                        case 107:
                            return 8;
                        case 108:
                            return 6;
                        case 109:
                            break;
                        case 110:
                            return 5;
                        default:
                            return i3 - 168;
                    }
                    break;
            }
        }
        return 4;
    }

    private void handleJoystickAxisEvent(int i3, int i4, float f) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return;
        }
        inputEventRunnableObtain.setJoystickAxisEvent(i3, i4, f);
        dispatchInputEventRunnable(inputEventRunnableObtain);
    }

    private void handleJoystickButtonEvent(int i3, int i4, boolean z2) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return;
        }
        inputEventRunnableObtain.setJoystickButtonEvent(i3, i4, z2);
        dispatchInputEventRunnable(inputEventRunnableObtain);
    }

    private void handleJoystickConnectionChangedEvent(int i3, boolean z2, String str) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return;
        }
        inputEventRunnableObtain.setJoystickConnectionChangedEvent(i3, z2, str);
        dispatchInputEventRunnable(inputEventRunnableObtain);
    }

    private void handleJoystickHatEvent(int i3, int i4, int i5) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return;
        }
        inputEventRunnableObtain.setJoystickHatEvent(i3, i4, i5);
        dispatchInputEventRunnable(inputEventRunnableObtain);
    }

    private boolean isKeyEventGameDevice(int i3) {
        if (i3 == 769) {
            return false;
        }
        return (i3 & InputDeviceCompat.SOURCE_JOYSTICK) == 16777232 || (i3 & InputDeviceCompat.SOURCE_DPAD) == 513 || (i3 & InputDeviceCompat.SOURCE_GAMEPAD) == 1025;
    }

    public static boolean isMouseEvent(MotionEvent motionEvent) {
        int eventToolType = getEventToolType(motionEvent);
        int source = motionEvent.getSource();
        if (eventToolType == 1) {
            return false;
        }
        if (eventToolType == 2 || eventToolType == 3 || eventToolType == 4) {
            return true;
        }
        boolean z2 = (source & 8194) == 8194 || (source & 20482) == 16386;
        if (Build.VERSION.SDK_INT >= 26) {
            return z2 || (source & 131076) == 131076;
        }
        return z2;
    }

    private boolean shouldDispatchInputToRenderThread() {
        return GodotLib.shouldDispatchInputToRenderThread();
    }

    private void updateCachedRotation() {
        this.cachedRotation = this.windowManager.getDefaultDisplay().getRotation();
    }

    public boolean canCapturePointer() {
        return this.lastSeenToolType.get() == 3 || this.lastSeenToolType.get() == 0;
    }

    public void disableScrollDeadzone(boolean z2) {
        this.godotGestureHandler.setScrollDeadzoneDisabled(z2);
    }

    public void enableHapticFeedback(boolean z2) {
        this.godotGestureHandler.setHapticFeedbackEnabled(z2);
    }

    public void enableLongPress(boolean z2) {
        this.gestureDetector.setIsLongpressEnabled(z2);
    }

    public void enablePanningAndScalingGestures(boolean z2) {
        this.godotGestureHandler.setPanningAndScalingEnabled(z2);
    }

    public void handleKeyEvent(int i3, int i4, int i5, boolean z2, boolean z3) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return;
        }
        inputEventRunnableObtain.setKeyEvent(i3, i4, i5, z2, z3);
        dispatchInputEventRunnable(inputEventRunnableObtain);
    }

    public void handleMagnifyEvent(float f, float f3, float f4) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return;
        }
        inputEventRunnableObtain.setMagnifyEvent(f, f3, f4);
        dispatchInputEventRunnable(inputEventRunnableObtain);
    }

    public boolean handleMotionEvent(MotionEvent motionEvent) {
        return handleMotionEvent(motionEvent, motionEvent.getActionMasked());
    }

    public boolean handleMouseEvent(MotionEvent motionEvent) {
        return handleMouseEvent(motionEvent, motionEvent.getActionMasked());
    }

    public void handlePanEvent(float f, float f3, float f4, float f5) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return;
        }
        inputEventRunnableObtain.setPanEvent(f, f3, f4, f5);
        dispatchInputEventRunnable(inputEventRunnableObtain);
    }

    public boolean handleTouchEvent(MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent, motionEvent.getActionMasked());
    }

    public boolean hasHardwareKeyboard() {
        if (this.hasHardwareKeyboardConfig) {
            return true;
        }
        return !this.mHardwareKeyboardIds.isEmpty();
    }

    public void initInputDevices() {
        for (int i3 : this.mInputManager.getInputDeviceIds()) {
            if (this.mInputManager.getInputDevice(i3) != null) {
                onInputDeviceAdded(i3);
            }
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        updateCachedRotation();
        boolean z2 = configuration.keyboard != 1 && configuration.hardKeyboardHidden == 1;
        if (this.hasHardwareKeyboardConfig != z2) {
            this.hasHardwareKeyboardConfig = z2;
            GodotLib.hardwareKeyboardConnected(hasHardwareKeyboard());
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        this.lastSeenToolType.set(getEventToolType(motionEvent));
        if (!motionEvent.isFromSource(InputDeviceCompat.SOURCE_JOYSTICK) || motionEvent.getActionMasked() != 2) {
            if (this.gestureDetector.onGenericMotionEvent(motionEvent) || this.godotGestureHandler.onMotionEvent(motionEvent)) {
                return true;
            }
            return handleMouseEvent(motionEvent);
        }
        int deviceId = motionEvent.getDeviceId();
        if (this.mJoystickIds.indexOfKey(deviceId) < 0) {
            return false;
        }
        int i3 = this.mJoystickIds.get(deviceId);
        Joystick joystick = this.mJoysticksDevices.get(deviceId);
        if (joystick == null) {
            return true;
        }
        for (int i4 = 0; i4 < joystick.axes.size(); i4++) {
            int iIntValue = joystick.axes.get(i4).intValue();
            float axisValue = motionEvent.getAxisValue(iIntValue);
            if (joystick.axesValues.indexOfKey(iIntValue) < 0 || joystick.axesValues.get(iIntValue).floatValue() != axisValue) {
                joystick.axesValues.put(iIntValue, Float.valueOf(axisValue));
                handleJoystickAxisEvent(i3, i4, axisValue);
            }
        }
        if (joystick.hasAxisHat) {
            int iRound = Math.round(motionEvent.getAxisValue(15));
            int iRound2 = Math.round(motionEvent.getAxisValue(16));
            if (joystick.hatX != iRound || joystick.hatY != iRound2) {
                joystick.hatX = iRound;
                joystick.hatY = iRound2;
                handleJoystickHatEvent(i3, iRound, iRound2);
            }
        }
        return true;
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceAdded(int i3) {
        InputDevice inputDevice;
        if (this.mJoystickIds.indexOfKey(i3) < 0 && (inputDevice = this.mInputManager.getInputDevice(i3)) != null) {
            if (Build.VERSION.SDK_INT >= 29 && inputDevice.supportsSource(InputDeviceCompat.SOURCE_KEYBOARD) && inputDevice.isExternal() && inputDevice.getKeyboardType() == 2) {
                this.mHardwareKeyboardIds.add(Integer.valueOf(i3));
            }
            if (inputDevice.supportsSource(InputDeviceCompat.SOURCE_GAMEPAD) || inputDevice.supportsSource(InputDeviceCompat.SOURCE_JOYSTICK)) {
                for (String str : JOYPAD_IGNORE_LIST) {
                    if (inputDevice.getName().equals(str)) {
                        Log.i(TAG, "=== Input Device ignored: " + inputDevice.getName());
                        return;
                    }
                }
                int iAssignJoystickIdNumber = assignJoystickIdNumber(i3);
                Joystick joystick = new Joystick();
                joystick.device_id = i3;
                joystick.name = inputDevice.getName();
                Log.i(TAG, "=== New Input Device: " + joystick.name);
                HashSet hashSet = new HashSet();
                for (InputDevice.MotionRange motionRange : inputDevice.getMotionRanges()) {
                    boolean zIsFromSource = motionRange.isFromSource(InputDeviceCompat.SOURCE_JOYSTICK);
                    boolean zIsFromSource2 = motionRange.isFromSource(InputDeviceCompat.SOURCE_GAMEPAD);
                    if (zIsFromSource || zIsFromSource2) {
                        int axis = motionRange.getAxis();
                        if (axis == 15 || axis == 16) {
                            joystick.hasAxisHat = true;
                        } else if (hashSet.contains(Integer.valueOf(axis))) {
                            Log.w(TAG, " - DUPLICATE AXIS VALUE IN LIST: " + axis);
                        } else {
                            hashSet.add(Integer.valueOf(axis));
                            joystick.axes.add(Integer.valueOf(axis));
                        }
                    }
                }
                Collections.sort(joystick.axes);
                for (int i4 = 0; i4 < joystick.axes.size(); i4++) {
                    Log.i(TAG, " - Mapping Android axis " + joystick.axes.get(i4) + " to Godot axis " + i4);
                }
                this.mJoysticksDevices.put(i3, joystick);
                handleJoystickConnectionChangedEvent(iAssignJoystickIdNumber, true, joystick.name);
            }
        }
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceChanged(int i3) {
        onInputDeviceRemoved(i3);
        onInputDeviceAdded(i3);
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceRemoved(int i3) {
        this.mHardwareKeyboardIds.remove(Integer.valueOf(i3));
        if (this.mJoystickIds.indexOfKey(i3) < 0) {
            return;
        }
        int i4 = this.mJoystickIds.get(i3);
        this.mJoystickIds.delete(i3);
        this.mJoysticksDevices.delete(i3);
        handleJoystickConnectionChangedEvent(i4, false, "");
    }

    public boolean onKeyDown(int i3, KeyEvent keyEvent) {
        GodotInputHandler godotInputHandler;
        int source = keyEvent.getSource();
        int deviceId = keyEvent.getDeviceId();
        if (!isKeyEventGameDevice(source)) {
            godotInputHandler = this;
            godotInputHandler.handleKeyEvent(keyEvent.getKeyCode(), keyEvent.getUnicodeChar(), keyEvent.getDisplayLabel(), true, keyEvent.getRepeatCount() > 0);
        } else {
            if (keyEvent.getRepeatCount() > 0) {
                return true;
            }
            if (this.mJoystickIds.indexOfKey(deviceId) >= 0) {
                handleJoystickButtonEvent(this.mJoystickIds.get(deviceId), getGodotButton(i3), true);
            }
            godotInputHandler = this;
        }
        if (i3 == 24 || i3 == 25) {
            return godotInputHandler.overrideVolumeButtons;
        }
        return true;
    }

    public boolean onKeyUp(int i3, KeyEvent keyEvent) {
        GodotInputHandler godotInputHandler;
        if (isKeyEventGameDevice(keyEvent.getSource())) {
            int deviceId = keyEvent.getDeviceId();
            if (this.mJoystickIds.indexOfKey(deviceId) >= 0) {
                handleJoystickButtonEvent(this.mJoystickIds.get(deviceId), getGodotButton(i3), false);
            }
            godotInputHandler = this;
        } else {
            godotInputHandler = this;
            godotInputHandler.handleKeyEvent(keyEvent.getKeyCode(), keyEvent.getUnicodeChar(), keyEvent.getDisplayLabel(), false, keyEvent.getRepeatCount() > 0);
        }
        if (i3 == 24 || i3 == 25) {
            return godotInputHandler.overrideVolumeButtons;
        }
        return true;
    }

    public void onPointerCaptureChange(boolean z2) {
        this.godotGestureHandler.onPointerCaptureChange(z2);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        InputEventRunnable inputEventRunnableObtain;
        float f;
        float f3;
        float f4;
        float f5;
        float f6;
        float[] fArr = sensorEvent.values;
        if (fArr == null || fArr.length != 3 || (inputEventRunnableObtain = InputEventRunnable.obtain()) == null) {
            return;
        }
        if (this.cachedRotation == -1) {
            updateCachedRotation();
        }
        int i3 = this.cachedRotation;
        if (i3 == 0) {
            f = fArr[0];
            f3 = fArr[1];
            f4 = fArr[2];
        } else if (i3 == 1) {
            f = -fArr[1];
            f3 = fArr[0];
            f4 = fArr[2];
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    f6 = 0.0f;
                    f5 = 0.0f;
                    f3 = 0.0f;
                } else {
                    f = fArr[1];
                    f3 = -fArr[0];
                    f4 = fArr[2];
                }
                inputEventRunnableObtain.setSensorEvent(sensorEvent.sensor.getType(), f6, f3, f5);
                this.godot.runOnRenderThread(inputEventRunnableObtain);
            }
            f = -fArr[0];
            f3 = -fArr[1];
            f4 = fArr[2];
        }
        float f7 = f;
        f5 = f4;
        f6 = f7;
        inputEventRunnableObtain.setSensorEvent(sensorEvent.sensor.getType(), f6, f3, f5);
        this.godot.runOnRenderThread(inputEventRunnableObtain);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.lastSeenToolType.set(getEventToolType(motionEvent));
        this.scaleGestureDetector.onTouchEvent(motionEvent);
        if (this.gestureDetector.onTouchEvent(motionEvent) || this.godotGestureHandler.onMotionEvent(motionEvent) || motionEvent.getActionMasked() == 2) {
            return true;
        }
        return isMouseEvent(motionEvent) ? handleMouseEvent(motionEvent) : handleTouchEvent(motionEvent);
    }

    public void performHapticFeedback() {
        GodotRenderView renderView = this.godot.getRenderView();
        if (renderView != null) {
            renderView.getView().performHapticFeedback(0);
        }
    }

    public void setOverrideVolumeButtons(boolean z2) {
        this.overrideVolumeButtons = z2;
    }

    public void setRotaryInputAxis(int i3) {
        this.rotaryInputAxis = i3;
    }

    public boolean handleMotionEvent(MotionEvent motionEvent, int i3) {
        return handleMotionEvent(motionEvent, i3, false);
    }

    public boolean handleMouseEvent(MotionEvent motionEvent, int i3) {
        return handleMouseEvent(motionEvent, i3, false);
    }

    public boolean handleTouchEvent(MotionEvent motionEvent, int i3) {
        return handleTouchEvent(motionEvent, i3, false);
    }

    public boolean handleMotionEvent(MotionEvent motionEvent, int i3, boolean z2) {
        if (isMouseEvent(motionEvent)) {
            return handleMouseEvent(motionEvent, i3, z2);
        }
        return handleTouchEvent(motionEvent, i3, z2);
    }

    public boolean handleMouseEvent(MotionEvent motionEvent, int i3, boolean z2) {
        return handleMouseEvent(motionEvent, i3, motionEvent.getButtonState(), z2);
    }

    public boolean handleTouchEvent(MotionEvent motionEvent, int i3, boolean z2) {
        if (motionEvent.getPointerCount() == 0) {
            return true;
        }
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return false;
        }
        if (i3 != 0 && i3 != 1 && i3 != 2 && i3 != 3 && i3 != 5 && i3 != 6) {
            return false;
        }
        inputEventRunnableObtain.setTouchEvent(motionEvent, i3, z2);
        dispatchInputEventRunnable(inputEventRunnableObtain);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0045  */
    public boolean handleMouseEvent(MotionEvent motionEvent, int i3, int i4, boolean z2) {
        float axisValue;
        float axisValue2;
        float f;
        float f3;
        boolean zIsFromSource;
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        float pressure = motionEvent.getPressure();
        if (motionEvent.isFromSource(4194304)) {
            axisValue = 0.0f;
            if (this.rotaryInputAxis == 0) {
                axisValue2 = -motionEvent.getAxisValue(26);
            } else {
                f = -motionEvent.getAxisValue(26);
                f3 = 0.0f;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                zIsFromSource = motionEvent.isFromSource(131076);
            } else {
                zIsFromSource = false;
            }
            return handleMouseEvent(i3, i4, x2, y2, f3, f, z2, zIsFromSource, pressure, getEventTiltX(motionEvent), getEventTiltY(motionEvent));
        }
        axisValue = motionEvent.getAxisValue(9);
        axisValue2 = motionEvent.getAxisValue(10);
        f3 = axisValue2;
        f = axisValue;
        if (Build.VERSION.SDK_INT >= 26) {
            zIsFromSource = motionEvent.isFromSource(131076);
        } else {
            zIsFromSource = false;
        }
        return handleMouseEvent(i3, i4, x2, y2, f3, f, z2, zIsFromSource, pressure, getEventTiltX(motionEvent), getEventTiltY(motionEvent));
    }

    public boolean handleMouseEvent(int i3, boolean z2) {
        return handleMouseEvent(i3, 0, 0.0f, 0.0f, 0.0f, 0.0f, false, z2, 1.0f, 0.0f, 0.0f);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0014  */
    /* JADX WARN: Code duplicated, block: B:12:0x0016 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x0018  */
    public boolean handleMouseEvent(int i3, int i4, float f, float f3, float f4, float f5, boolean z2, boolean z3, float f6, float f7, float f8) {
        InputEventRunnable inputEventRunnableObtain = InputEventRunnable.obtain();
        if (inputEventRunnableObtain == null) {
            return false;
        }
        if (i3 == 0) {
            if (i4 == 0) {
                i4 = 1;
            }
        } else if (i3 == 1) {
            i4 = 0;
        } else if (i3 != 2) {
            if (i3 == 3) {
                i4 = 0;
            }
        } else if (i4 == 0) {
            i4 = 1;
        }
        if (i3 != 0 && i3 != 1 && i3 != 2 && i3 != 3) {
            switch (i3) {
                case 7:
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    return false;
            }
        }
        inputEventRunnableObtain.setMouseEvent(i3, i4, f, f3, f4, f5, z2, z3, f6, f7, f8);
        dispatchInputEventRunnable(inputEventRunnableObtain);
        return true;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i3) {
    }
}
