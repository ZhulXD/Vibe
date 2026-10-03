package com.hatkid.mkxpz.gamepad;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class DynamicGamepadButton extends View {
    private static final int DEFAULT_BUTTON_COLOR = -1096636;
    private final float borderWidth;
    private final String buttonName;
    private int cachedOpacityPct;
    private int cachedThemeColor;
    private final Context context;
    private final String displayText;
    private OnButtonEventListener eventListener;
    private final Paint fillPaint;
    private final Paint glowPaint;
    private boolean isPressed;
    private final int sdlKeycode;
    private final ButtonShape shape;
    private final Paint strokePaint;
    private final RectF tempRect;
    private final Paint textPaint;

    /* JADX INFO: renamed from: com.hatkid.mkxpz.gamepad.DynamicGamepadButton$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape;

        static {
            int[] iArr = new int[ButtonShape.values().length];
            $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape = iArr;
            try {
                iArr[ButtonShape.CIRCLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape[ButtonShape.SQUARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape[ButtonShape.RECT_HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape[ButtonShape.RECT_VERTICAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public enum ButtonShape {
        CIRCLE,
        SQUARE,
        RECT_HORIZONTAL,
        RECT_VERTICAL
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface OnButtonEventListener {
        void onButtonDown(int i3);

        void onButtonUp(int i3);
    }

    public DynamicGamepadButton(Context context, String str, String str2, int i3, ButtonShape buttonShape, float f) {
        super(context);
        this.isPressed = false;
        this.context = context;
        this.buttonName = str;
        this.displayText = str2;
        this.sdlKeycode = i3;
        this.shape = buttonShape;
        this.borderWidth = f;
        this.tempRect = new RectF();
        Paint paint = new Paint(1);
        this.fillPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setDither(true);
        paint.setFilterBitmap(true);
        Paint paint2 = new Paint(1);
        this.strokePaint = paint2;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint2.setStrokeWidth(f);
        paint2.setDither(true);
        Paint paint3 = new Paint(1);
        this.glowPaint = paint3;
        paint3.setStyle(style);
        paint3.setStrokeWidth(f * 2.0f);
        paint3.setDither(true);
        Paint paint4 = new Paint(1);
        this.textPaint = paint4;
        paint4.setColor(-1);
        paint4.setTextAlign(Paint.Align.CENTER);
        paint4.setTextSize(40.0f);
        paint4.setTypeface(Typeface.DEFAULT_BOLD);
        paint4.setSubpixelText(true);
        setLayerType(2, null);
        setWillNotDraw(false);
        this.cachedThemeColor = loadButtonColor();
        this.cachedOpacityPct = loadButtonOpacity();
        setupTouchListener();
    }

    private int adjustAlpha(int i3, int i4) {
        return Color.argb(i4, Color.red(i3), Color.green(i3), Color.blue(i3));
    }

    private void drawCircle(Canvas canvas, float f, float f3) {
        float fMin = (Math.min(getWidth(), getHeight()) / 2.0f) - 10.0f;
        canvas.drawCircle(f, f3, fMin, this.fillPaint);
        canvas.drawCircle(f, f3, fMin, this.strokePaint);
    }

    private void drawRectHorizontal(Canvas canvas, float f, float f3) {
        float height = (getHeight() / 2.0f) / 2.0f;
        this.tempRect.set(10.0f, f3 - height, getWidth() - 10.0f, f3 + height);
        canvas.drawRoundRect(this.tempRect, 20.0f, 20.0f, this.fillPaint);
        canvas.drawRoundRect(this.tempRect, 20.0f, 20.0f, this.strokePaint);
    }

    private void drawRectVertical(Canvas canvas, float f, float f3) {
        float width = (getWidth() / 2.0f) / 2.0f;
        this.tempRect.set(f - width, 10.0f, f + width, getHeight() - 10.0f);
        canvas.drawRoundRect(this.tempRect, 20.0f, 20.0f, this.fillPaint);
        canvas.drawRoundRect(this.tempRect, 20.0f, 20.0f, this.strokePaint);
    }

    private void drawSquare(Canvas canvas, float f, float f3) {
        float fMin = (Math.min(getWidth(), getHeight()) - 20.0f) / 2.0f;
        this.tempRect.set(f - fMin, f3 - fMin, f + fMin, f3 + fMin);
        canvas.drawRoundRect(this.tempRect, 15.0f, 15.0f, this.fillPaint);
        canvas.drawRoundRect(this.tempRect, 15.0f, 15.0f, this.strokePaint);
    }

    private void drawText(Canvas canvas, float f, float f3) {
        canvas.drawText(this.displayText, f, f3 + (((this.textPaint.descent() + (-this.textPaint.ascent())) / 2.0f) - this.textPaint.descent()), this.textPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setupTouchListener$0(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.isPressed = true;
            OnButtonEventListener onButtonEventListener = this.eventListener;
            if (onButtonEventListener != null) {
                onButtonEventListener.onButtonDown(this.sdlKeycode);
            }
            invalidate();
            return true;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        this.isPressed = false;
        OnButtonEventListener onButtonEventListener2 = this.eventListener;
        if (onButtonEventListener2 != null) {
            onButtonEventListener2.onButtonUp(this.sdlKeycode);
        }
        invalidate();
        return true;
    }

    private int loadButtonColor() {
        byte b = 0;
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("gamepad_settings", 0);
        if (sharedPreferences.contains("button_color_" + this.buttonName)) {
            return sharedPreferences.getInt("button_color_" + this.buttonName, DEFAULT_BUTTON_COLOR);
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
                return DEFAULT_BUTTON_COLOR;
        }
    }

    private int loadButtonOpacity() {
        return this.context.getSharedPreferences("gamepad_settings", 0).getInt("button_opacity_" + this.buttonName, 60);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setupTouchListener() {
        setOnTouchListener(new a(0, this));
    }

    public String getButtonName() {
        return this.buttonName;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        int i3 = this.cachedThemeColor;
        int i4 = (int) ((this.cachedOpacityPct / 100.0f) * 255.0f);
        int iMin = this.isPressed ? Math.min(i4, 230) : i4 / 3;
        int iMin2 = this.isPressed ? 255 : Math.min(i4 + 60, 255);
        this.fillPaint.setColor(Color.argb(iMin, Color.red(i3), Color.green(i3), Color.blue(i3)));
        this.strokePaint.setColor(adjustAlpha(i3, iMin2));
        int i5 = AnonymousClass1.$SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape[this.shape.ordinal()];
        if (i5 == 1) {
            drawCircle(canvas, width, height);
        } else if (i5 == 2) {
            drawSquare(canvas, width, height);
        } else if (i5 == 3) {
            drawRectHorizontal(canvas, width, height);
        } else if (i5 == 4) {
            drawRectVertical(canvas, width, height);
        }
        drawText(canvas, width, height);
    }

    public void refreshThemeColor() {
        this.cachedThemeColor = loadButtonColor();
        this.cachedOpacityPct = loadButtonOpacity();
        invalidate();
    }

    public void setOnButtonEventListener(OnButtonEventListener onButtonEventListener) {
        this.eventListener = onButtonEventListener;
    }
}
