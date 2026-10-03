package org.libsdl.app;

import E.b;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SDLSurface extends SurfaceView implements SurfaceHolder.Callback, View.OnKeyListener, View.OnTouchListener, SensorEventListener {
    protected Display mDisplay;
    protected float mHeight;
    public boolean mIsSurfaceReady;
    protected SensorManager mSensorManager;
    protected float mWidth;

    public SDLSurface(Context context) {
        super(context);
        getHolder().addCallback(this);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        setOnKeyListener(this);
        setOnTouchListener(this);
        this.mDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.mSensorManager = (SensorManager) context.getSystemService("sensor");
        setOnGenericMotionListener(SDLActivity.getMotionListener());
        this.mWidth = 1.0f;
        this.mHeight = 1.0f;
        this.mIsSurfaceReady = false;
    }

    public float bufferPerViewX() {
        int width = getWidth();
        if (width > 0) {
            float f = this.mWidth;
            if (f > 1.0f) {
                return f / width;
            }
        }
        return 1.0f;
    }

    public float bufferPerViewY() {
        int height = getHeight();
        if (height > 0) {
            float f = this.mHeight;
            if (f > 1.0f) {
                return f / height;
            }
        }
        return 1.0f;
    }

    public void enableSensor(int i3, boolean z2) {
        if (z2) {
            SensorManager sensorManager = this.mSensorManager;
            sensorManager.registerListener(this, sensorManager.getDefaultSensor(i3), 1, (Handler) null);
        } else {
            SensorManager sensorManager2 = this.mSensorManager;
            sensorManager2.unregisterListener(this, sensorManager2.getDefaultSensor(i3));
        }
    }

    public Surface getNativeSurface() {
        return getHolder().getSurface();
    }

    public void handlePause() {
        enableSensor(1, false);
    }

    public void handleResume() {
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        setOnKeyListener(this);
        setOnTouchListener(this);
        enableSensor(1, true);
    }

    @Override // android.view.View
    public boolean onCapturedPointerEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 2 || actionMasked == 7) {
            SDLActivity.onNativeMouse(0, actionMasked, SDLActivity.surfaceX(motionEvent.getX(0)), SDLActivity.surfaceY(motionEvent.getY(0)), true);
            return true;
        }
        if (actionMasked == 8) {
            SDLActivity.onNativeMouse(0, actionMasked, motionEvent.getAxisValue(10, 0), motionEvent.getAxisValue(9, 0), false);
            return true;
        }
        if (actionMasked != 11 && actionMasked != 12) {
            return false;
        }
        SDLActivity.onNativeMouse(motionEvent.getButtonState(), actionMasked == 11 ? 0 : 1, SDLActivity.surfaceX(motionEvent.getX(0)), SDLActivity.surfaceY(motionEvent.getY(0)), true);
        return true;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i3, KeyEvent keyEvent) {
        return SDLActivity.handleKeyEvent(view, i3, keyEvent, null);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        float f;
        float f3;
        int i3 = 1;
        if (sensorEvent.sensor.getType() == 1) {
            int rotation = this.mDisplay.getRotation();
            if (rotation == 1) {
                float[] fArr = sensorEvent.values;
                float f4 = -fArr[1];
                f = fArr[0];
                f3 = f4;
            } else if (rotation == 2) {
                float[] fArr2 = sensorEvent.values;
                f3 = -fArr2[0];
                f = -fArr2[1];
                i3 = 4;
            } else if (rotation != 3) {
                float[] fArr3 = sensorEvent.values;
                f3 = fArr3[0];
                f = fArr3[1];
                i3 = 3;
            } else {
                float[] fArr4 = sensorEvent.values;
                float f5 = fArr4[1];
                f = -fArr4[0];
                f3 = f5;
                i3 = 2;
            }
            if (i3 != SDLActivity.mCurrentOrientation) {
                SDLActivity.mCurrentOrientation = i3;
                SDLActivity.onNativeOrientationChanged(i3);
            }
            SDLActivity.onNativeAccel((-f3) / 9.80665f, f / 9.80665f, sensorEvent.values[2] / 9.80665f);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0092  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b8  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int iIntValue;
        float pressure;
        float f;
        int deviceId = motionEvent.getDeviceId();
        int pointerCount = motionEvent.getPointerCount();
        int actionMasked = motionEvent.getActionMasked();
        if (deviceId < 0) {
            deviceId--;
        }
        int i3 = deviceId;
        if (motionEvent.getSource() == 8194 || motionEvent.getSource() == 12290) {
            try {
                Object objInvoke = motionEvent.getClass().getMethod("getButtonState", null).invoke(motionEvent, null);
                iIntValue = objInvoke != null ? ((Integer) objInvoke).intValue() : 1;
            } catch (Exception unused) {
            }
            SDLGenericMotionListener_API12 motionListener = SDLActivity.getMotionListener();
            float eventX = motionListener.getEventX(motionEvent);
            float eventY = motionListener.getEventY(motionEvent);
            if (!motionListener.inRelativeMode()) {
                eventX = SDLActivity.surfaceX(eventX);
                eventY = SDLActivity.surfaceY(eventY);
            }
            SDLActivity.onNativeMouse(iIntValue, actionMasked, eventX, eventY, motionListener.inRelativeMode());
        } else {
            int actionIndex = 0;
            if (actionMasked == 0 || actionMasked == 1) {
                if (actionIndex == -1) {
                    actionIndex = motionEvent.getActionIndex();
                }
                int pointerId = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex) / viewWidth();
                float y2 = motionEvent.getY(actionIndex) / viewHeight();
                pressure = motionEvent.getPressure(actionIndex);
                if (pressure > 1.0f) {
                    f = 1.0f;
                } else {
                    f = pressure;
                }
                SDLActivity.onNativeTouch(i3, pointerId, actionMasked, x2, y2, f);
            } else if (actionMasked == 2) {
                while (actionIndex < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(actionIndex);
                    float x3 = motionEvent.getX(actionIndex) / viewWidth();
                    float y3 = motionEvent.getY(actionIndex) / viewHeight();
                    float pressure2 = motionEvent.getPressure(actionIndex);
                    if (pressure2 > 1.0f) {
                        pressure2 = 1.0f;
                    }
                    SDLActivity.onNativeTouch(i3, pointerId2, actionMasked, x3, y3, pressure2);
                    actionIndex++;
                }
            } else if (actionMasked == 3) {
                while (actionIndex < pointerCount) {
                    int pointerId3 = motionEvent.getPointerId(actionIndex);
                    float x4 = motionEvent.getX(actionIndex) / viewWidth();
                    float y4 = motionEvent.getY(actionIndex) / viewHeight();
                    float pressure3 = motionEvent.getPressure(actionIndex);
                    SDLActivity.onNativeTouch(i3, pointerId3, 1, x4, y4, pressure3 > 1.0f ? 1.0f : pressure3);
                    actionIndex++;
                }
            } else if (actionMasked == 5 || actionMasked == 6) {
                actionIndex = -1;
                if (actionIndex == -1) {
                    actionIndex = motionEvent.getActionIndex();
                }
                int pointerId4 = motionEvent.getPointerId(actionIndex);
                float x5 = motionEvent.getX(actionIndex) / viewWidth();
                float y5 = motionEvent.getY(actionIndex) / viewHeight();
                pressure = motionEvent.getPressure(actionIndex);
                if (pressure > 1.0f) {
                    f = 1.0f;
                } else {
                    f = pressure;
                }
                SDLActivity.onNativeTouch(i3, pointerId4, actionMasked, x5, y5, f);
            }
        }
        return true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i3, int i4, int i5) {
        int iRound;
        int iRound2;
        Log.i("SDL", "surfaceChanged() " + i4 + "x" + i5);
        if (SDLActivity.mSingleton == null) {
            return;
        }
        float f = i4;
        this.mWidth = f;
        float f3 = i5;
        this.mHeight = f3;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.mDisplay.getRealMetrics(displayMetrics);
            iRound = displayMetrics.widthPixels;
            try {
                iRound2 = displayMetrics.heightPixels;
            } catch (Exception unused) {
                iRound2 = i5;
            }
        } catch (Exception unused2) {
            iRound = i4;
        }
        int width = getWidth();
        int height = getHeight();
        if (width > 0 && height > 0 && (i4 != width || i5 != height)) {
            iRound = Math.round((iRound * f) / width);
            iRound2 = Math.round((iRound2 * f3) / height);
        }
        synchronized (SDLActivity.getContext()) {
            SDLActivity.getContext().notifyAll();
        }
        StringBuilder sbP = b.p("Window size: ", i4, i5, "x", ", view ");
        sbP.append(width);
        sbP.append("x");
        sbP.append(height);
        sbP.append(", device size reported: ");
        sbP.append(iRound);
        sbP.append("x");
        sbP.append(iRound2);
        Log.i("SDL", sbP.toString());
        SDLActivity.nativeSetScreenResolution(i4, i5, iRound, iRound2, this.mDisplay.getRefreshRate());
        SDLActivity.onNativeResize();
        int requestedOrientation = SDLActivity.mSingleton.getRequestedOrientation();
        boolean z2 = requestedOrientation == 1 || requestedOrientation == 7 ? this.mWidth > this.mHeight : !(!(requestedOrientation == 0 || requestedOrientation == 6) || this.mWidth >= this.mHeight);
        if (z2) {
            if (((double) Math.max(this.mWidth, this.mHeight)) / ((double) Math.min(this.mWidth, this.mHeight)) < 1.2d) {
                Log.v("SDL", "Don't skip on such aspect-ratio. Could be a square resolution.");
                z2 = false;
            }
        }
        if (z2 && SDLActivity.mSingleton.isInMultiWindowMode()) {
            Log.v("SDL", "Don't skip in Multi-Window");
            z2 = false;
        }
        if (z2) {
            StringBuilder sbP2 = b.p("Skip surface: orientation mismatch ", i4, i5, "x", " requestedOrientation=");
            sbP2.append(requestedOrientation);
            Log.i("SDL", sbP2.toString());
            this.mIsSurfaceReady = false;
            return;
        }
        SDLActivity.onNativeSurfaceChanged();
        this.mIsSurfaceReady = true;
        SDLActivity.mNextNativeState = SDLActivity.NativeState.RESUMED;
        SDLActivity.handleNativeState();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.i("SDL", "surfaceCreated()");
        SDLActivity.onNativeSurfaceCreated();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.v("SDL", "surfaceDestroyed()");
        SDLActivity.mNextNativeState = SDLActivity.NativeState.PAUSED;
        SDLActivity.handleNativeState();
        this.mIsSurfaceReady = false;
        SDLActivity.onNativeSurfaceDestroyed();
    }

    public float viewHeight() {
        int height = getHeight();
        return height > 0 ? height : this.mHeight;
    }

    public float viewWidth() {
        int width = getWidth();
        return width > 0 ? width : this.mWidth;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i3) {
    }
}
