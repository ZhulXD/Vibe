package com.hatkid.mkxpz.gamepad;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GamepadJoystick extends GamepadDPad {
    private static final int DEFAULT_COLOR = -1096636;
    private static final long INVALIDATE_THROTTLE_MS = 16;
    private Paint basePaint;
    private Paint borderPaint;
    private int cachedOpacityPct;
    private int cachedThemeColor;
    private boolean isActive;
    private float joystickRadius;
    private float joystickX;
    private float joystickY;
    private Paint knobBorderPaint;
    private Paint knobPaint;
    private float knobRadius;
    private long lastInvalidateTime;

    public GamepadJoystick(Context context) {
        super(context);
        this.joystickX = 0.0f;
        this.joystickY = 0.0f;
        this.joystickRadius = 0.0f;
        this.knobRadius = 0.0f;
        this.isActive = false;
        this.lastInvalidateTime = 0L;
        init();
    }

    private int adjustAlpha(int i3, int i4) {
        return Color.argb(i4, Color.red(i3), Color.green(i3), Color.blue(i3));
    }

    private void handleJoystickMove(float f, float f3, float f4, float f5) {
        float f6 = f - f4;
        float f7 = f3 - f5;
        float fSqrt = (float) Math.sqrt((f7 * f7) + (f6 * f6));
        float f8 = this.joystickRadius - this.knobRadius;
        if (fSqrt <= f8) {
            this.joystickX = f;
            this.joystickY = f3;
        } else {
            double dAtan2 = (float) Math.atan2(f7, f6);
            this.joystickX = (((float) Math.cos(dAtan2)) * f8) + f4;
            this.joystickY = (f8 * ((float) Math.sin(dAtan2))) + f5;
        }
    }

    private void init() {
        Paint paint = new Paint(1);
        this.basePaint = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.basePaint.setDither(true);
        Paint paint2 = new Paint(1);
        this.knobPaint = paint2;
        paint2.setStyle(style);
        this.knobPaint.setColor(-1);
        this.knobPaint.setDither(true);
        Paint paint3 = new Paint(1);
        this.borderPaint = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        this.borderPaint.setStrokeWidth(4.0f);
        this.borderPaint.setColor(Color.argb(150, 200, 200, 200));
        this.borderPaint.setDither(true);
        Paint paint4 = new Paint(1);
        this.knobBorderPaint = paint4;
        paint4.setStyle(style2);
        this.knobBorderPaint.setStrokeWidth(3.0f);
        this.knobBorderPaint.setDither(true);
        setLayerType(2, null);
        setWillNotDraw(false);
        this.cachedThemeColor = loadButtonColor();
        this.cachedOpacityPct = loadButtonOpacity();
    }

    private int loadButtonColor() {
        byte b = 0;
        SharedPreferences sharedPreferences = getContext().getSharedPreferences("gamepad_settings", 0);
        if (sharedPreferences.contains("button_color_Joystick")) {
            return sharedPreferences.getInt("button_color_Joystick", DEFAULT_COLOR);
        }
        String string = sharedPreferences.getString("button_theme", "default");
        string.getClass();
        switch (string.hashCode()) {
            case -1098803285:
                if (!string.equals("gradient_purple")) {
                    b = -1;
                }
                break;
            case -1076826535:
                b = !string.equals("glass_dark") ? (byte) -1 : (byte) 1;
                break;
            case -1015772304:
                b = !string.equals("retro_red") ? (byte) -1 : (byte) 2;
                break;
            case -1013032315:
                b = !string.equals("gradient_sunset") ? (byte) -1 : (byte) 3;
                break;
            case -467958950:
                b = !string.equals("neon_green") ? (byte) -1 : (byte) 4;
                break;
            case 517271343:
                b = !string.equals("gradient_ocean") ? (byte) -1 : (byte) 5;
                break;
            case 985731731:
                b = !string.equals("glass_light") ? (byte) -1 : (byte) 6;
                break;
            case 1647318307:
                b = !string.equals("neon_blue") ? (byte) -1 : (byte) 7;
                break;
            case 1647732287:
                b = !string.equals("neon_pink") ? (byte) -1 : (byte) 8;
                break;
            case 1658613339:
                b = !string.equals("cyberpunk") ? (byte) -1 : (byte) 9;
                break;
            case 1667608885:
                b = !string.equals("retro_yellow") ? (byte) -1 : (byte) 10;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return Color.parseColor("#C77DFF");
            case 1:
                return Color.parseColor("#404040");
            case 2:
                return Color.parseColor("#E63946");
            case 3:
                return Color.parseColor("#FF6B35");
            case 4:
                return Color.parseColor("#39FF14");
            case 5:
                return Color.parseColor("#00A8CC");
            case 6:
                return Color.parseColor("#FFFFFF");
            case 7:
                return Color.parseColor("#00D4FF");
            case 8:
                return Color.parseColor("#FF1493");
            case 9:
                return Color.parseColor("#00FFF0");
            case 10:
                return Color.parseColor("#FFD60A");
            default:
                return DEFAULT_COLOR;
        }
    }

    private int loadButtonOpacity() {
        return getContext().getSharedPreferences("gamepad_settings", 0).getInt("button_opacity_Joystick", 60);
    }

    private void throttledInvalidate() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastInvalidateTime >= INVALIDATE_THROTTLE_MS) {
            invalidate();
            this.lastInvalidateTime = jCurrentTimeMillis;
        }
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadDPad, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        int i3 = this.cachedThemeColor;
        int i4 = (int) ((this.cachedOpacityPct / 100.0f) * 255.0f);
        int i5 = this.isActive ? i4 / 2 : i4 / 4;
        int iMin = Math.min(i4 + 60, 255);
        this.basePaint.setColor(Color.argb(i5, Color.red(i3), Color.green(i3), Color.blue(i3)));
        canvas.drawCircle(width, height, this.joystickRadius, this.basePaint);
        this.borderPaint.setColor(adjustAlpha(i3, iMin));
        canvas.drawCircle(width, height, this.joystickRadius, this.borderPaint);
        if (!this.isActive) {
            this.knobPaint.setColor(Color.argb(i4 / 2, Color.red(i3), Color.green(i3), Color.blue(i3)));
            canvas.drawCircle(width, height, this.knobRadius, this.knobPaint);
        } else {
            this.knobPaint.setColor(adjustAlpha(i3, Math.min(i4 + 40, 255)));
            canvas.drawCircle(this.joystickX, this.joystickY, this.knobRadius, this.knobPaint);
            this.knobBorderPaint.setColor(adjustAlpha(i3, i4));
            canvas.drawCircle(this.joystickX, this.joystickY, this.knobRadius, this.knobBorderPaint);
        }
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadButton, android.view.View
    public void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        float fMin = (Math.min(i3, i4) / 2.0f) - 10.0f;
        this.joystickRadius = fMin;
        this.knobRadius = fMin / 4.0f;
        this.joystickX = i3 / 2.0f;
        this.joystickY = i4 / 2.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
    
        if (r3 != 3) goto L19;
     */
    @Override // com.hatkid.mkxpz.gamepad.GamepadDPad, com.hatkid.mkxpz.gamepad.GamepadButton, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            r11 = this;
            float r0 = r12.getX()
            float r1 = r12.getY()
            int r2 = r11.getWidth()
            float r2 = (float) r2
            r3 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r3
            int r4 = r11.getHeight()
            float r4 = (float) r4
            float r4 = r4 / r3
            float r3 = r0 - r2
            double r5 = (double) r3
            r7 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r5 = java.lang.Math.pow(r5, r7)
            float r3 = r1 - r4
            double r9 = (double) r3
            double r7 = java.lang.Math.pow(r9, r7)
            double r7 = r7 + r5
            double r5 = java.lang.Math.sqrt(r7)
            float r3 = (float) r5
            boolean r5 = r11.isActive
            r6 = 0
            if (r5 != 0) goto L3b
            float r5 = r11.joystickRadius
            r7 = 1112014848(0x42480000, float:50.0)
            float r5 = r5 + r7
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 <= 0) goto L3b
            return r6
        L3b:
            int r3 = r12.getAction()
            r5 = 1
            if (r3 == 0) goto L67
            if (r3 == r5) goto L5a
            r7 = 2
            if (r3 == r7) goto L4b
            r0 = 3
            if (r3 == r0) goto L5a
            goto L59
        L4b:
            boolean r3 = r11.isActive
            if (r3 == 0) goto L59
            r11.handleJoystickMove(r0, r1, r2, r4)
            r11.throttledInvalidate()
            super.onTouchEvent(r12)
            return r5
        L59:
            return r6
        L5a:
            r11.isActive = r6
            r11.joystickX = r2
            r11.joystickY = r4
            r11.invalidate()
            super.onTouchEvent(r12)
            return r5
        L67:
            r11.isActive = r5
            r11.handleJoystickMove(r0, r1, r2, r4)
            r11.throttledInvalidate()
            super.onTouchEvent(r12)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hatkid.mkxpz.gamepad.GamepadJoystick.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadDPad
    public void refreshThemeColor() {
        this.cachedThemeColor = loadButtonColor();
        this.cachedOpacityPct = loadButtonOpacity();
        invalidate();
    }

    public GamepadJoystick(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.joystickX = 0.0f;
        this.joystickY = 0.0f;
        this.joystickRadius = 0.0f;
        this.knobRadius = 0.0f;
        this.isActive = false;
        this.lastInvalidateTime = 0L;
        init();
    }

    public GamepadJoystick(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        this.joystickX = 0.0f;
        this.joystickY = 0.0f;
        this.joystickRadius = 0.0f;
        this.knobRadius = 0.0f;
        this.isActive = false;
        this.lastInvalidateTime = 0L;
        init();
    }

    public GamepadJoystick(Context context, AttributeSet attributeSet, int i3, int i4) {
        super(context, attributeSet, i3, i4);
        this.joystickX = 0.0f;
        this.joystickY = 0.0f;
        this.joystickRadius = 0.0f;
        this.knobRadius = 0.0f;
        this.isActive = false;
        this.lastInvalidateTime = 0L;
        init();
    }
}
