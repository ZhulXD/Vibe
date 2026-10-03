package com.hatkid.mkxpz.gamepad;

import C1.RunnableC0068g1;
import S.u;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import androidx.core.view.InputDeviceCompat;
import com.hatkid.mkxpz.utils.ViewUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Gamepad {
    private Context mContext;
    private GamepadDPad mDPad;
    private FrameLayout mGamepadLayout;
    private SharedPreferences mPrefs;
    private GamepadConfig mGamepadConfig = null;
    private boolean mInvisible = false;
    private final List<DynamicGamepadButton> mDynamicButtons = new ArrayList();
    private OnKeyDownListener mOnKeyDownListener = new u(5);
    private OnKeyUpListener mOnKeyUpListener = new u(6);

    /* JADX INFO: renamed from: com.hatkid.mkxpz.gamepad.Gamepad$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape;

        static {
            int[] iArr = new int[DynamicGamepadButton.ButtonShape.values().length];
            $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape = iArr;
            try {
                iArr[DynamicGamepadButton.ButtonShape.RECT_HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape[DynamicGamepadButton.ButtonShape.RECT_VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface OnKeyDownListener {
        void onKeyDown(int i3);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface OnKeyUpListener {
        void onKeyUp(int i3);
    }

    private void applyFirstRunDefaults() {
        if (this.mPrefs.contains("button_enabled_D-Pad")) {
            return;
        }
        this.mPrefs.edit().putBoolean("button_enabled_D-Pad", true).putBoolean("button_enabled_ENTER", true).putBoolean("button_enabled_ESC", true).apply();
    }

    private DynamicGamepadButton.ButtonShape convertShape(String str) {
        str.getClass();
        switch (str) {
            case "SQUARE":
                return DynamicGamepadButton.ButtonShape.SQUARE;
            case "RECT_HORIZONTAL":
                return DynamicGamepadButton.ButtonShape.RECT_HORIZONTAL;
            case "RECT_VERTICAL":
                return DynamicGamepadButton.ButtonShape.RECT_VERTICAL;
            default:
                return DynamicGamepadButton.ButtonShape.CIRCLE;
        }
    }

    private void createDPad() {
        this.mDPad = new GamepadDPad(this.mContext);
        float f = this.mPrefs.getFloat("button_pos_D-Pad_x", 0.15f);
        float f3 = this.mPrefs.getFloat("button_pos_D-Pad_y", 0.8f);
        int iIntValue = (int) ((this.mGamepadConfig.scale.intValue() * 220) / 100.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iIntValue, iIntValue);
        float width = f * this.mGamepadLayout.getWidth();
        float height = f3 * this.mGamepadLayout.getHeight();
        this.mDPad.setLayoutParams(layoutParams);
        float f4 = iIntValue / 2.0f;
        this.mDPad.setX(width - f4);
        this.mDPad.setY(height - f4);
        GamepadDPad gamepadDPad = this.mDPad;
        gamepadDPad.isDiagonal = this.mGamepadConfig.diagonalMovement;
        gamepadDPad.setOnKeyDownListener(new b(this, 2));
        this.mDPad.setOnKeyUpListener(new b(this, 3));
        this.mGamepadLayout.addView(this.mDPad);
    }

    private void createDynamicButton(String str) {
        ButtonConfig button = GamepadButtons.INSTANCE.getButton(str);
        if (button == null) {
            return;
        }
        String string = this.mPrefs.getString("button_shape_" + str, null);
        if (string == null) {
            string = button.getDefaultShape().name();
        }
        DynamicGamepadButton.ButtonShape buttonShapeConvertShape = convertShape(string);
        float f = this.mPrefs.getFloat(kotlin.collections.unsigned.a.o("button_custom_size_", str), button.getDefaultSize());
        float f3 = this.mPrefs.getFloat("button_border_width_" + str, 3.0f);
        int[] buttonSize = getButtonSize(buttonShapeConvertShape, f);
        DynamicGamepadButton dynamicGamepadButton = new DynamicGamepadButton(this.mContext, str, button.getDisplayText(), button.getSdlKeycode(), buttonShapeConvertShape, f3);
        dynamicGamepadButton.setOnButtonEventListener(new DynamicGamepadButton.OnButtonEventListener() { // from class: com.hatkid.mkxpz.gamepad.Gamepad.1
            @Override // com.hatkid.mkxpz.gamepad.DynamicGamepadButton.OnButtonEventListener
            public void onButtonDown(int i3) {
                Gamepad.this.mOnKeyDownListener.onKeyDown(i3);
            }

            @Override // com.hatkid.mkxpz.gamepad.DynamicGamepadButton.OnButtonEventListener
            public void onButtonUp(int i3) {
                Gamepad.this.mOnKeyUpListener.onKeyUp(i3);
            }
        });
        float f4 = this.mPrefs.getFloat(E.b.m("button_pos_", str, "_x"), button.getDefaultX());
        float f5 = this.mPrefs.getFloat(E.b.m("button_pos_", str, "_y"), button.getDefaultY());
        float width = f4 * this.mGamepadLayout.getWidth();
        float height = f5 * this.mGamepadLayout.getHeight();
        dynamicGamepadButton.setLayoutParams(new FrameLayout.LayoutParams(buttonSize[0], buttonSize[1]));
        dynamicGamepadButton.setX(width - (buttonSize[0] / 2.0f));
        dynamicGamepadButton.setY(height - (buttonSize[1] / 2.0f));
        this.mDynamicButtons.add(dynamicGamepadButton);
        this.mGamepadLayout.addView(dynamicGamepadButton);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createDynamicButtons() {
        if (this.mGamepadLayout.getWidth() == 0 || this.mGamepadLayout.getHeight() == 0) {
            return;
        }
        this.mGamepadLayout.removeAllViews();
        this.mDynamicButtons.clear();
        if (this.mPrefs.getBoolean("button_enabled_D-Pad", false)) {
            createDPad();
        }
        if (this.mPrefs.getBoolean("button_enabled_Joystick", false)) {
            createJoystick();
        }
        for (String str : getEnabledButtons()) {
            if (!str.equals("D-Pad") && !str.equals("Joystick")) {
                createDynamicButton(str);
            }
        }
        ViewUtils.resize(this.mGamepadLayout, this.mGamepadConfig.scale.intValue());
        ViewUtils.changeOpacity(this.mGamepadLayout, this.mGamepadConfig.opacity.intValue());
    }

    private void createJoystick() {
        GamepadJoystick gamepadJoystick = new GamepadJoystick(this.mContext);
        float f = this.mPrefs.getFloat("button_pos_Joystick_x", 0.15f);
        float f3 = this.mPrefs.getFloat("button_pos_Joystick_y", 0.8f);
        int iIntValue = (int) ((this.mGamepadConfig.scale.intValue() * 220) / 100.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iIntValue, iIntValue);
        float width = f * this.mGamepadLayout.getWidth();
        float height = f3 * this.mGamepadLayout.getHeight();
        gamepadJoystick.setLayoutParams(layoutParams);
        float f4 = iIntValue / 2.0f;
        gamepadJoystick.setX(width - f4);
        gamepadJoystick.setY(height - f4);
        gamepadJoystick.isDiagonal = Boolean.TRUE;
        gamepadJoystick.setOnKeyDownListener(new b(this, 0));
        gamepadJoystick.setOnKeyUpListener(new b(this, 1));
        this.mGamepadLayout.addView(gamepadJoystick);
    }

    private int[] getButtonSize(DynamicGamepadButton.ButtonShape buttonShape, float f) {
        int i3 = AnonymousClass2.$SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape[buttonShape.ordinal()];
        if (i3 == 1) {
            return new int[]{(int) (210 * f), (int) (140 * f)};
        }
        if (i3 == 2) {
            return new int[]{(int) (140 * f), (int) (210 * f)};
        }
        int i4 = (int) (140 * f);
        return new int[]{i4, i4};
    }

    private List<String> getEnabledButtons() {
        ArrayList arrayList = new ArrayList();
        for (ButtonConfig buttonConfig : GamepadButtons.INSTANCE.getALL_BUTTONS()) {
            if (this.mPrefs.getBoolean("button_enabled_" + buttonConfig.getName(), false)) {
                arrayList.add(buttonConfig.getName());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createDPad$2(int i3) {
        this.mOnKeyDownListener.onKeyDown(i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createDPad$3(int i3) {
        this.mOnKeyUpListener.onKeyUp(i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createJoystick$4(int i3) {
        this.mOnKeyDownListener.onKeyDown(i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createJoystick$5(int i3) {
        this.mOnKeyUpListener.onKeyUp(i3);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void attachTo(Context context, ViewGroup viewGroup) {
        this.mContext = context;
        this.mPrefs = context.getSharedPreferences("gamepad_settings", 0);
        FrameLayout frameLayout = new FrameLayout(context);
        this.mGamepadLayout = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mGamepadLayout.setBackgroundColor(0);
        if (this.mInvisible) {
            this.mGamepadLayout.setAlpha(0.0f);
        }
        viewGroup.addView(this.mGamepadLayout);
        applyFirstRunDefaults();
        this.mGamepadLayout.post(new RunnableC0068g1(11, this));
    }

    public void hideView() {
        if (this.mGamepadLayout == null) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setFillAfter(true);
        this.mGamepadLayout.startAnimation(alphaAnimation);
    }

    public void init(GamepadConfig gamepadConfig, boolean z2) {
        this.mGamepadConfig = gamepadConfig;
        this.mInvisible = z2;
    }

    public boolean processDPadEvent(MotionEvent motionEvent) {
        Integer num;
        InputDevice device = motionEvent.getDevice();
        if (device == null || (device.getSources() & InputDeviceCompat.SOURCE_DPAD) == 0) {
            return false;
        }
        float axisValue = motionEvent.getAxisValue(15);
        float axisValue2 = motionEvent.getAxisValue(16);
        if (Float.compare(axisValue2, -1.0f) == 0) {
            num = 19;
        } else if (Float.compare(axisValue2, 1.0f) == 0) {
            num = 20;
        } else if (Float.compare(axisValue, -1.0f) == 0) {
            num = 21;
        } else {
            num = Float.compare(axisValue, 1.0f) == 0 ? 22 : null;
        }
        if (num == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mOnKeyDownListener.onKeyDown(num.intValue());
            return true;
        }
        if (action != 1) {
            return true;
        }
        this.mOnKeyUpListener.onKeyUp(num.intValue());
        return true;
    }

    public boolean processGamepadEvent(KeyEvent keyEvent) {
        InputDevice device = keyEvent.getDevice();
        if (device == null) {
            return false;
        }
        int sources = device.getSources();
        if ((sources & InputDeviceCompat.SOURCE_GAMEPAD) == 0 && (sources & InputDeviceCompat.SOURCE_DPAD) == 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        if (action == 0) {
            this.mOnKeyDownListener.onKeyDown(keyCode);
            return true;
        }
        if (action != 1) {
            return true;
        }
        this.mOnKeyUpListener.onKeyUp(keyCode);
        return true;
    }

    public void reload() {
        Context context;
        if (this.mGamepadLayout == null || (context = this.mContext) == null) {
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("gamepad_settings", 4);
        this.mPrefs = sharedPreferences;
        this.mGamepadConfig.opacity = Integer.valueOf(sharedPreferences.getInt("opacity", 30));
        this.mGamepadConfig.scale = Integer.valueOf(this.mPrefs.getInt("scale", 100));
        this.mGamepadConfig.diagonalMovement = Boolean.valueOf(this.mPrefs.getBoolean("diagonal_movement", false));
        this.mGamepadLayout.post(new RunnableC0068g1(11, this));
    }

    public void reloadConfig() {
        SharedPreferences sharedPreferences;
        if (this.mGamepadLayout == null || (sharedPreferences = this.mPrefs) == null) {
            return;
        }
        this.mGamepadConfig.opacity = Integer.valueOf(sharedPreferences.getInt("opacity", 30));
        this.mGamepadConfig.scale = Integer.valueOf(this.mPrefs.getInt("scale", 100));
        this.mGamepadConfig.diagonalMovement = Boolean.valueOf(this.mPrefs.getBoolean("diagonal_movement", false));
        ViewUtils.resize(this.mGamepadLayout, this.mGamepadConfig.scale.intValue());
        ViewUtils.changeOpacity(this.mGamepadLayout, this.mGamepadConfig.opacity.intValue());
    }

    public void setOnKeyDownListener(OnKeyDownListener onKeyDownListener) {
        this.mOnKeyDownListener = onKeyDownListener;
    }

    public void setOnKeyUpListener(OnKeyUpListener onKeyUpListener) {
        this.mOnKeyUpListener = onKeyUpListener;
    }

    public void showView() {
        FrameLayout frameLayout = this.mGamepadLayout;
        if (frameLayout == null) {
            return;
        }
        if (frameLayout.getAlpha() == 0.0f) {
            this.mGamepadLayout.setAlpha(1.0f);
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(250L);
        alphaAnimation.setFillAfter(true);
        this.mGamepadLayout.startAnimation(alphaAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(int i3) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$1(int i3) {
    }
}
