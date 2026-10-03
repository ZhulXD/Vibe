package com.hatkid.mkxpz.gamepad;

import S.u;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.hatkid.mkxpz.utils.DirectionUtils;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GamepadDPad extends GamepadButton {
    private static final int DEFAULT_COLOR = -1096636;
    private static final long MOVE_THROTTLE_MS = 50;
    private DirectionUtils.Direction angle;
    private Paint arrowPaint;
    private Paint basePaint;
    private Paint borderPaint;
    private int cachedOpacityPct;
    private int cachedThemeColor;
    private final RectF hBar;
    public Boolean isDiagonal;
    private long lastMoveEventTime;
    private GamepadButton.OnKeyDownListener mOnKeyDownListener;
    private GamepadButton.OnKeyUpListener mOnKeyUpListener;
    private final RectF vBar;

    /* JADX INFO: renamed from: com.hatkid.mkxpz.gamepad.GamepadDPad$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction;

        static {
            int[] iArr = new int[DirectionUtils.Direction.values().length];
            $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction = iArr;
            try {
                iArr[DirectionUtils.Direction.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[DirectionUtils.Direction.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[DirectionUtils.Direction.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[DirectionUtils.Direction.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[DirectionUtils.Direction.UP_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[DirectionUtils.Direction.UP_LEFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[DirectionUtils.Direction.DOWN_RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[DirectionUtils.Direction.DOWN_LEFT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public GamepadDPad(Context context) {
        super(context);
        this.angle = DirectionUtils.Direction.UNKNOWN;
        this.isDiagonal = Boolean.FALSE;
        this.lastMoveEventTime = 0L;
        this.hBar = new RectF();
        this.vBar = new RectF();
        this.mOnKeyDownListener = new u(9);
        this.mOnKeyUpListener = new u(10);
        initPaints();
    }

    private int adjustAlpha(int i3, int i4) {
        return Color.argb(i4, Color.red(i3), Color.green(i3), Color.blue(i3));
    }

    private void initPaints() {
        Paint paint = new Paint(1);
        this.basePaint = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.basePaint.setDither(true);
        Paint paint2 = new Paint(1);
        this.borderPaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(4.0f);
        this.borderPaint.setDither(true);
        Paint paint3 = new Paint(1);
        this.arrowPaint = paint3;
        paint3.setStyle(style);
        this.arrowPaint.setColor(-1);
        this.arrowPaint.setDither(true);
        setLayerType(2, null);
        setWillNotDraw(false);
        this.cachedThemeColor = loadButtonColor();
        this.cachedOpacityPct = loadButtonOpacity();
    }

    private int loadButtonColor() {
        byte b = 0;
        SharedPreferences sharedPreferences = getContext().getSharedPreferences("gamepad_settings", 0);
        if (sharedPreferences.contains("button_color_D-Pad")) {
            return sharedPreferences.getInt("button_color_D-Pad", DEFAULT_COLOR);
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
        return getContext().getSharedPreferences("gamepad_settings", 0).getInt("button_opacity_D-Pad", 60);
    }

    private void pressNewDirection(DirectionUtils.Direction direction) {
        switch (AnonymousClass1.$SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[direction.ordinal()]) {
            case 1:
                this.mOnKeyDownListener.onKeyDown(19);
                break;
            case 2:
                this.mOnKeyDownListener.onKeyDown(20);
                break;
            case 3:
                this.mOnKeyDownListener.onKeyDown(21);
                break;
            case 4:
                this.mOnKeyDownListener.onKeyDown(22);
                break;
            case 5:
                this.mOnKeyDownListener.onKeyDown(19);
                this.mOnKeyDownListener.onKeyDown(22);
                break;
            case 6:
                this.mOnKeyDownListener.onKeyDown(19);
                this.mOnKeyDownListener.onKeyDown(21);
                break;
            case 7:
                this.mOnKeyDownListener.onKeyDown(20);
                this.mOnKeyDownListener.onKeyDown(22);
                break;
            case 8:
                this.mOnKeyDownListener.onKeyDown(20);
                this.mOnKeyDownListener.onKeyDown(21);
                break;
        }
    }

    private void processDirectionChange(DirectionUtils.Direction direction) {
        releaseCurrentDirection();
        this.angle = direction;
        pressNewDirection(direction);
    }

    private void releaseCurrentDirection() {
        switch (AnonymousClass1.$SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction[this.angle.ordinal()]) {
            case 1:
                this.mOnKeyUpListener.onKeyUp(19);
                break;
            case 2:
                this.mOnKeyUpListener.onKeyUp(20);
                break;
            case 3:
                this.mOnKeyUpListener.onKeyUp(21);
                break;
            case 4:
                this.mOnKeyUpListener.onKeyUp(22);
                break;
            case 5:
                this.mOnKeyUpListener.onKeyUp(19);
                this.mOnKeyUpListener.onKeyUp(22);
                break;
            case 6:
                this.mOnKeyUpListener.onKeyUp(19);
                this.mOnKeyUpListener.onKeyUp(21);
                break;
            case 7:
                this.mOnKeyUpListener.onKeyUp(20);
                this.mOnKeyUpListener.onKeyUp(22);
                break;
            case 8:
                this.mOnKeyUpListener.onKeyUp(20);
                this.mOnKeyUpListener.onKeyUp(21);
                break;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float fMin = Math.min(getWidth(), getHeight());
        float f = 0.35f * fMin;
        float f3 = fMin * 0.5f;
        int i3 = this.cachedThemeColor;
        int i4 = (int) ((this.cachedOpacityPct / 100.0f) * 255.0f);
        int i5 = i4 / 3;
        int iMin = Math.min(i4 + 60, 255);
        this.basePaint.setColor(Color.argb(i5, Color.red(i3), Color.green(i3), Color.blue(i3)));
        this.borderPaint.setColor(adjustAlpha(i3, iMin));
        float f4 = f / 2.0f;
        this.hBar.set(width - f3, height - f4, width + f3, height + f4);
        canvas.drawRoundRect(this.hBar, 15.0f, 15.0f, this.basePaint);
        canvas.drawRoundRect(this.hBar, 15.0f, 15.0f, this.borderPaint);
        this.vBar.set(width - f4, height - f3, f4 + width, f3 + height);
        canvas.drawRoundRect(this.vBar, 15.0f, 15.0f, this.basePaint);
        canvas.drawRoundRect(this.vBar, 15.0f, 15.0f, this.borderPaint);
        float f5 = f * 0.4f;
        canvas.drawCircle(width, height, f5, this.basePaint);
        canvas.drawCircle(width, height, f5, this.borderPaint);
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadButton, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        switch (motionEvent.getAction()) {
            case 0:
            case 5:
                DirectionUtils.Direction angle = DirectionUtils.getAngle(width, motionEvent.getX(), height, motionEvent.getY(), this.isDiagonal.booleanValue());
                if (this.angle == angle) {
                    return true;
                }
                processDirectionChange(angle);
                return true;
            case 1:
            case 3:
            case 4:
            case 6:
                releaseCurrentDirection();
                this.angle = DirectionUtils.Direction.UNKNOWN;
                return true;
            case 2:
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.lastMoveEventTime < MOVE_THROTTLE_MS) {
                    return false;
                }
                this.lastMoveEventTime = jCurrentTimeMillis;
                DirectionUtils.Direction angle2 = DirectionUtils.getAngle(width, motionEvent.getX(), height, motionEvent.getY(), this.isDiagonal.booleanValue());
                if (this.angle == angle2) {
                    return true;
                }
                processDirectionChange(angle2);
                return true;
            default:
                return true;
        }
    }

    public void refreshThemeColor() {
        this.cachedThemeColor = loadButtonColor();
        this.cachedOpacityPct = loadButtonOpacity();
        invalidate();
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadButton
    public void setOnKeyDownListener(GamepadButton.OnKeyDownListener onKeyDownListener) {
        this.mOnKeyDownListener = onKeyDownListener;
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadButton
    public void setOnKeyUpListener(GamepadButton.OnKeyUpListener onKeyUpListener) {
        this.mOnKeyUpListener = onKeyUpListener;
    }

    public GamepadDPad(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.angle = DirectionUtils.Direction.UNKNOWN;
        this.isDiagonal = Boolean.FALSE;
        this.lastMoveEventTime = 0L;
        this.hBar = new RectF();
        this.vBar = new RectF();
        this.mOnKeyDownListener = new u(9);
        this.mOnKeyUpListener = new u(10);
        initPaints();
    }

    public GamepadDPad(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        this.angle = DirectionUtils.Direction.UNKNOWN;
        this.isDiagonal = Boolean.FALSE;
        this.lastMoveEventTime = 0L;
        this.hBar = new RectF();
        this.vBar = new RectF();
        this.mOnKeyDownListener = new u(9);
        this.mOnKeyUpListener = new u(10);
        initPaints();
    }

    public GamepadDPad(Context context, AttributeSet attributeSet, int i3, int i4) {
        super(context, attributeSet, i3, i4);
        this.angle = DirectionUtils.Direction.UNKNOWN;
        this.isDiagonal = Boolean.FALSE;
        this.lastMoveEventTime = 0L;
        this.hBar = new RectF();
        this.vBar = new RectF();
        this.mOnKeyDownListener = new u(9);
        this.mOnKeyUpListener = new u(10);
        initPaints();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(int i3) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$1(int i3) {
    }
}
