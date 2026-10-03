package org.godotengine.godot.input;

import android.util.Log;
import android.view.MotionEvent;
import androidx.core.util.Pools;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.godotengine.godot.GodotLib;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
final class InputEventRunnable implements Runnable {
    private static final int MAX_TOUCH_POINTER_COUNT = 10;
    private static final Pools.Pool<InputEventRunnable> POOL = new Pools.Pool<InputEventRunnable>() { // from class: org.godotengine.godot.input.InputEventRunnable.1
        private static final int MAX_POOL_SIZE = 1200;
        private final ArrayBlockingQueue<InputEventRunnable> queue = new ArrayBlockingQueue<>(MAX_POOL_SIZE);
        private final AtomicInteger createdCount = new AtomicInteger();

        @Override // androidx.core.util.Pools.Pool
        public InputEventRunnable acquire() {
            int iIncrementAndGet;
            InputEventRunnable inputEventRunnablePoll = this.queue.poll();
            return (inputEventRunnablePoll != null || (iIncrementAndGet = this.createdCount.incrementAndGet()) > MAX_POOL_SIZE) ? inputEventRunnablePoll : new InputEventRunnable(iIncrementAndGet - 1, 0);
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(InputEventRunnable inputEventRunnable) {
            return this.queue.offer(inputEventRunnable);
        }
    };
    private static final String TAG = "InputEventRunnable";
    private int actionPointerId;
    private int axis;
    private int button;
    private int buttonsMask;
    private boolean connected;
    private final int creationRank;
    private EventType currentEventType;
    private boolean doubleTap;
    private boolean echo;
    private int eventAction;
    private float eventDeltaX;
    private float eventDeltaY;
    private boolean eventPressed;
    private float eventX;
    private float eventY;
    private int hatX;
    private int hatY;
    private int joystickDevice;
    private String joystickName;
    private int keyLabel;
    private float magnifyFactor;
    private int physicalKeycode;
    private int pointerCount;
    private final float[] positions;
    private float pressure;
    private float rotatedValue0;
    private float rotatedValue1;
    private float rotatedValue2;
    private int sensorType;
    private boolean sourceMouseRelative;
    private float tiltX;
    private float tiltY;
    private int unicode;
    private float value;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public enum EventType {
        MOUSE,
        TOUCH,
        MAGNIFY,
        PAN,
        JOYSTICK_BUTTON,
        JOYSTICK_AXIS,
        JOYSTICK_HAT,
        JOYSTICK_CONNECTION_CHANGED,
        KEY,
        SENSOR
    }

    public /* synthetic */ InputEventRunnable(int i3, int i4) {
        this(i3);
    }

    public static InputEventRunnable obtain() {
        InputEventRunnable inputEventRunnableAcquire = POOL.acquire();
        if (inputEventRunnableAcquire == null) {
            Log.w(TAG, "Input event pool is at capacity");
        }
        return inputEventRunnableAcquire;
    }

    private void recycle() {
        this.currentEventType = null;
        POOL.release(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            EventType eventType = this.currentEventType;
            if (eventType == null) {
                Log.w(TAG, "Invalid event type");
                return;
            }
            switch (eventType) {
                case MOUSE:
                    GodotLib.dispatchMouseEvent(this.eventAction, this.buttonsMask, this.eventX, this.eventY, this.eventDeltaX, this.eventDeltaY, this.doubleTap, this.sourceMouseRelative, this.pressure, this.tiltX, this.tiltY);
                    break;
                case TOUCH:
                    GodotLib.dispatchTouchEvent(this.eventAction, this.actionPointerId, this.pointerCount, this.positions, this.doubleTap);
                    break;
                case MAGNIFY:
                    GodotLib.magnify(this.eventX, this.eventY, this.magnifyFactor);
                    break;
                case PAN:
                    GodotLib.pan(this.eventX, this.eventY, this.eventDeltaX, this.eventDeltaY);
                    break;
                case JOYSTICK_BUTTON:
                    GodotLib.joybutton(this.joystickDevice, this.button, this.eventPressed);
                    break;
                case JOYSTICK_AXIS:
                    GodotLib.joyaxis(this.joystickDevice, this.axis, this.value);
                    break;
                case JOYSTICK_HAT:
                    GodotLib.joyhat(this.joystickDevice, this.hatX, this.hatY);
                    break;
                case JOYSTICK_CONNECTION_CHANGED:
                    GodotLib.joyconnectionchanged(this.joystickDevice, this.connected, this.joystickName);
                    break;
                case KEY:
                    GodotLib.key(this.physicalKeycode, this.unicode, this.keyLabel, this.eventPressed, this.echo);
                    break;
                case SENSOR:
                    int i3 = this.sensorType;
                    if (i3 == 1) {
                        GodotLib.accelerometer(-this.rotatedValue0, -this.rotatedValue1, -this.rotatedValue2);
                    } else if (i3 == 2) {
                        GodotLib.magnetometer(-this.rotatedValue0, -this.rotatedValue1, -this.rotatedValue2);
                    } else if (i3 == 4) {
                        GodotLib.gyroscope(this.rotatedValue0, this.rotatedValue1, this.rotatedValue2);
                    } else if (i3 == 9) {
                        GodotLib.gravity(-this.rotatedValue0, -this.rotatedValue1, -this.rotatedValue2);
                    }
                    break;
            }
        } finally {
            recycle();
        }
    }

    public void setJoystickAxisEvent(int i3, int i4, float f) {
        this.currentEventType = EventType.JOYSTICK_AXIS;
        this.joystickDevice = i3;
        this.axis = i4;
        this.value = f;
    }

    public void setJoystickButtonEvent(int i3, int i4, boolean z2) {
        this.currentEventType = EventType.JOYSTICK_BUTTON;
        this.joystickDevice = i3;
        this.button = i4;
        this.eventPressed = z2;
    }

    public void setJoystickConnectionChangedEvent(int i3, boolean z2, String str) {
        this.currentEventType = EventType.JOYSTICK_CONNECTION_CHANGED;
        this.joystickDevice = i3;
        this.connected = z2;
        this.joystickName = str;
    }

    public void setJoystickHatEvent(int i3, int i4, int i5) {
        this.currentEventType = EventType.JOYSTICK_HAT;
        this.joystickDevice = i3;
        this.hatX = i4;
        this.hatY = i5;
    }

    public void setKeyEvent(int i3, int i4, int i5, boolean z2, boolean z3) {
        this.currentEventType = EventType.KEY;
        this.physicalKeycode = i3;
        this.unicode = i4;
        this.keyLabel = i5;
        this.eventPressed = z2;
        this.echo = z3;
    }

    public void setMagnifyEvent(float f, float f3, float f4) {
        this.currentEventType = EventType.MAGNIFY;
        this.eventX = f;
        this.eventY = f3;
        this.magnifyFactor = f4;
    }

    public void setMouseEvent(int i3, int i4, float f, float f3, float f4, float f5, boolean z2, boolean z3, float f6, float f7, float f8) {
        this.currentEventType = EventType.MOUSE;
        this.eventAction = i3;
        this.buttonsMask = i4;
        this.eventX = f;
        this.eventY = f3;
        this.eventDeltaX = f4;
        this.eventDeltaY = f5;
        this.doubleTap = z2;
        this.sourceMouseRelative = z3;
        this.pressure = f6;
        this.tiltX = f7;
        this.tiltY = f8;
    }

    public void setPanEvent(float f, float f3, float f4, float f5) {
        this.currentEventType = EventType.PAN;
        this.eventX = f;
        this.eventY = f3;
        this.eventDeltaX = f4;
        this.eventDeltaY = f5;
    }

    public void setSensorEvent(int i3, float f, float f3, float f4) {
        this.currentEventType = EventType.SENSOR;
        this.sensorType = i3;
        this.rotatedValue0 = f;
        this.rotatedValue1 = f3;
        this.rotatedValue2 = f4;
    }

    public void setTouchEvent(MotionEvent motionEvent, int i3, boolean z2) {
        this.currentEventType = EventType.TOUCH;
        this.eventAction = i3;
        this.doubleTap = z2;
        this.actionPointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        this.pointerCount = Math.min(motionEvent.getPointerCount(), 10);
        for (int i4 = 0; i4 < this.pointerCount; i4++) {
            int i5 = i4 * 6;
            this.positions[i5] = motionEvent.getPointerId(i4);
            this.positions[i5 + 1] = motionEvent.getX(i4);
            this.positions[i5 + 2] = motionEvent.getY(i4);
            this.positions[i5 + 3] = motionEvent.getPressure(i4);
            this.positions[i5 + 4] = GodotInputHandler.getEventTiltX(motionEvent);
            this.positions[i5 + 5] = GodotInputHandler.getEventTiltY(motionEvent);
        }
    }

    private InputEventRunnable(int i3) {
        this.currentEventType = null;
        this.positions = new float[60];
        this.creationRank = i3;
    }
}
