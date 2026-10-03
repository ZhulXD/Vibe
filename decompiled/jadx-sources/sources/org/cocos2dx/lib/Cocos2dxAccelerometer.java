package org.cocos2dx.lib;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxAccelerometer implements SensorEventListener {
    static final float ALPHA = 0.25f;
    private static final String TAG = "Cocos2dxAccelerometer";
    final float[] accelerometerValues = new float[3];
    final float[] compassFieldValues = new float[3];
    private final Sensor mAccelerometer;
    private final Sensor mCompass;
    private final Context mContext;
    private final int mNaturalOrientation;
    private final SensorManager mSensorManager;

    public Cocos2dxAccelerometer(Context context) {
        this.mContext = context;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mAccelerometer = sensorManager.getDefaultSensor(1);
        this.mCompass = sensorManager.getDefaultSensor(2);
        this.mNaturalOrientation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getOrientation();
    }

    public static native void onSensorChanged(float f, float f3, float f4, long j2);

    public void disable() {
        this.mSensorManager.unregisterListener(this);
    }

    public void enableAccel() {
        this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
    }

    public void enableCompass() {
        this.mSensorManager.registerListener(this, this.mCompass, 1);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 1) {
            if (sensorEvent.sensor.getType() == 2) {
                float[] fArr = this.compassFieldValues;
                float[] fArr2 = sensorEvent.values;
                fArr[0] = fArr2[0];
                fArr[1] = fArr2[1];
                fArr[2] = fArr2[2];
                return;
            }
            return;
        }
        float[] fArr3 = sensorEvent.values;
        float f = fArr3[0];
        float f3 = fArr3[1];
        float f4 = fArr3[2];
        float[] fArr4 = this.accelerometerValues;
        fArr4[0] = f;
        fArr4[1] = f3;
        fArr4[2] = f4;
        int i3 = this.mContext.getResources().getConfiguration().orientation;
        if (i3 == 2 && this.mNaturalOrientation != 0) {
            float f5 = -f3;
            f3 = f;
            f = f5;
        } else if (i3 == 1 && this.mNaturalOrientation != 0) {
            f3 = -f;
            f = f3;
        }
        int rotation = Cocos2dxHelper.getActivity().getWindowManager().getDefaultDisplay().getRotation();
        if (rotation == 2 || rotation == 3) {
            f = -f;
            f3 = -f3;
        }
        Cocos2dxGLSurfaceView.queueAccelerometer(f, f3, f4, sensorEvent.timestamp);
    }

    public void setInterval(float f) {
        this.mSensorManager.registerListener(this, this.mAccelerometer, (int) (f * 1000000.0f));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i3) {
    }
}
