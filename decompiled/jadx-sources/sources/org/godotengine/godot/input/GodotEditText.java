package org.godotengine.godot.input;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import java.lang.ref.WeakReference;
import java.util.Locale;
import kotlin.jvm.internal.IntCompanionObject;
import org.godotengine.godot.GodotRenderView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotEditText extends EditText {
    private static final int HANDLER_CLOSE_IME_KEYBOARD = 3;
    private static final int HANDLER_OPEN_IME_KEYBOARD = 2;
    private GodotTextInputWrapper mInputWrapper;
    private VirtualKeyboardType mKeyboardType;
    private int mMaxInputLength;
    private String mOriginText;
    private GodotRenderView mRenderView;
    private EditHandler sHandler;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class EditHandler extends Handler {
        private final WeakReference<GodotEditText> mEdit;

        public EditHandler(GodotEditText godotEditText) {
            this.mEdit = new WeakReference<>(godotEditText);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            GodotEditText godotEditText = this.mEdit.get();
            if (godotEditText != null) {
                godotEditText.handleMessage(message);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public enum VirtualKeyboardType {
        KEYBOARD_TYPE_DEFAULT,
        KEYBOARD_TYPE_MULTILINE,
        KEYBOARD_TYPE_NUMBER,
        KEYBOARD_TYPE_NUMBER_DECIMAL,
        KEYBOARD_TYPE_PHONE,
        KEYBOARD_TYPE_EMAIL_ADDRESS,
        KEYBOARD_TYPE_PASSWORD,
        KEYBOARD_TYPE_URL
    }

    public GodotEditText(Context context) {
        super(context);
        this.sHandler = new EditHandler(this);
        this.mMaxInputLength = IntCompanionObject.MAX_VALUE;
        this.mKeyboardType = VirtualKeyboardType.KEYBOARD_TYPE_DEFAULT;
        initView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message message) {
        int i3 = message.what;
        int i4 = 3;
        if (i3 != 2) {
            if (i3 != 3) {
                return;
            }
            GodotEditText godotEditText = (GodotEditText) message.obj;
            godotEditText.removeTextChangedListener(this.mInputWrapper);
            ((InputMethodManager) this.mRenderView.getView().getContext().getSystemService("input_method")).hideSoftInputFromWindow(godotEditText.getWindowToken(), 0);
            godotEditText.mRenderView.getView().requestFocus();
            return;
        }
        GodotEditText godotEditText2 = (GodotEditText) message.obj;
        String str = godotEditText2.mOriginText;
        if (godotEditText2.requestFocus()) {
            godotEditText2.removeTextChangedListener(godotEditText2.mInputWrapper);
            setMaxInputLength(godotEditText2);
            godotEditText2.setText("");
            godotEditText2.append(str);
            if (message.arg2 != -1) {
                godotEditText2.setSelection(Math.min(message.arg1, godotEditText2.length()), Math.min(message.arg2, godotEditText2.length()));
                godotEditText2.mInputWrapper.setSelection(true);
            } else {
                godotEditText2.mInputWrapper.setSelection(false);
            }
            String str2 = null;
            switch (godotEditText2.getKeyboardType().ordinal()) {
                case 1:
                    i4 = 131073;
                    break;
                case 2:
                    i4 = 2;
                    break;
                case 3:
                    i4 = 12290;
                    str2 = "0123456789,.- ";
                    break;
                case 4:
                    break;
                case 5:
                    i4 = 33;
                    break;
                case 6:
                    i4 = 129;
                    break;
                case 7:
                    i4 = 17;
                    break;
                default:
                    i4 = 1;
                    break;
            }
            godotEditText2.setInputType(i4);
            if (!TextUtils.isEmpty(str2)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    godotEditText2.setKeyListener(DigitsKeyListener.getInstance(Locale.getDefault(), true, true));
                } else {
                    godotEditText2.setKeyListener(DigitsKeyListener.getInstance(str2));
                }
            }
            godotEditText2.mInputWrapper.setOriginText(str);
            godotEditText2.addTextChangedListener(godotEditText2.mInputWrapper);
            ((InputMethodManager) this.mRenderView.getView().getContext().getSystemService("input_method")).showSoftInput(godotEditText2, 0);
        }
    }

    private boolean needHandlingInGodot(int i3, KeyEvent keyEvent) {
        return (i3 == 19 || i3 == 20 || i3 == 21 || i3 == 22) || i3 == 61 || KeyEvent.isModifierKey(i3) || (keyEvent.isAltPressed() || keyEvent.isCtrlPressed() || keyEvent.isSymPressed() || keyEvent.isFunctionPressed() || keyEvent.isMetaPressed());
    }

    private void setMaxInputLength(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.mMaxInputLength)});
    }

    public VirtualKeyboardType getKeyboardType() {
        return this.mKeyboardType;
    }

    public boolean hasHardwareKeyboard() {
        return this.mRenderView.getInputHandler().hasHardwareKeyboard();
    }

    public void hideKeyboard() {
        if (hasHardwareKeyboard()) {
            return;
        }
        Message message = new Message();
        message.what = 3;
        message.obj = this;
        this.sHandler.sendMessage(message);
    }

    public void initView() {
        setPadding(0, 0, 0, 0);
        setImeOptions(268435462);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i3, KeyEvent keyEvent) {
        if (i3 == 4) {
            clearFocus();
            this.mRenderView.getView().requestFocus();
            return this.mRenderView.getInputHandler().onKeyDown(i3, keyEvent);
        }
        if (hasHardwareKeyboard()) {
            return this.mRenderView.getInputHandler().onKeyDown(i3, keyEvent);
        }
        if (i3 == 67 && length() == 0) {
            this.mRenderView.getInputHandler().handleKeyEvent(67, 0, 0, true, false);
            return true;
        }
        if (needHandlingInGodot(i3, keyEvent) && this.mRenderView.getInputHandler().onKeyDown(i3, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i3, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i3, KeyEvent keyEvent) {
        if (hasHardwareKeyboard()) {
            return this.mRenderView.getInputHandler().onKeyUp(i3, keyEvent);
        }
        if (i3 == 4 && !hasFocus()) {
            return this.mRenderView.getInputHandler().onKeyUp(i3, keyEvent);
        }
        if (i3 == 67 && length() == 0) {
            this.mRenderView.getInputHandler().handleKeyEvent(67, 0, 0, false, false);
            return true;
        }
        if (needHandlingInGodot(i3, keyEvent) && this.mRenderView.getInputHandler().onKeyUp(i3, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i3, keyEvent);
    }

    public void setView(GodotRenderView godotRenderView) {
        this.mRenderView = godotRenderView;
        if (this.mInputWrapper == null) {
            this.mInputWrapper = new GodotTextInputWrapper(godotRenderView, this);
        }
        setOnEditorActionListener(this.mInputWrapper);
        godotRenderView.getView().requestFocus();
    }

    public void showKeyboard(String str, VirtualKeyboardType virtualKeyboardType, int i3, int i4, int i5) {
        if (hasHardwareKeyboard()) {
            return;
        }
        if (i3 <= 0) {
            i3 = IntCompanionObject.MAX_VALUE;
        }
        if (i4 == -1) {
            this.mOriginText = str;
            this.mMaxInputLength = i3;
        } else if (i5 == -1) {
            i4 = Math.min(str.length(), i4);
            this.mOriginText = str.substring(0, i4);
            this.mMaxInputLength = i3 - (str.length() - i4);
        } else {
            i5 = Math.min(str.length(), i5);
            this.mOriginText = str.substring(0, i5);
            this.mMaxInputLength = i3 - (str.length() - i5);
        }
        this.mKeyboardType = virtualKeyboardType;
        Message message = new Message();
        message.what = 2;
        message.obj = this;
        message.arg1 = i4;
        message.arg2 = i5;
        this.sHandler.sendMessage(message);
    }

    public GodotEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.sHandler = new EditHandler(this);
        this.mMaxInputLength = IntCompanionObject.MAX_VALUE;
        this.mKeyboardType = VirtualKeyboardType.KEYBOARD_TYPE_DEFAULT;
        initView();
    }

    public GodotEditText(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        this.sHandler = new EditHandler(this);
        this.mMaxInputLength = IntCompanionObject.MAX_VALUE;
        this.mKeyboardType = VirtualKeyboardType.KEYBOARD_TYPE_DEFAULT;
        initView();
    }
}
