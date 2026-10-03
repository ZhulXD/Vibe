package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Typeface;
import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.core.view.InputDeviceCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxEditBox extends EditText {
    public static final int kEndActionNext = 1;
    public static final int kEndActionReturn = 3;
    public static final int kEndActionUnknown = 0;
    private static final int kTextHorizontalAlignmentCenter = 1;
    private static final int kTextHorizontalAlignmentLeft = 0;
    private static final int kTextHorizontalAlignmentRight = 2;
    private static final int kTextVerticalAlignmentBottom = 2;
    private static final int kTextVerticalAlignmentCenter = 1;
    private static final int kTextVerticalAlignmentTop = 0;
    private Boolean changedTextProgrammatically;
    int endAction;
    private final int kEditBoxInputFlagInitialCapsAllCharacters;
    private final int kEditBoxInputFlagInitialCapsSentence;
    private final int kEditBoxInputFlagInitialCapsWord;
    private final int kEditBoxInputFlagLowercaseAllCharacters;
    private final int kEditBoxInputFlagPassword;
    private final int kEditBoxInputFlagSensitive;
    private final int kEditBoxInputModeAny;
    private final int kEditBoxInputModeDecimal;
    private final int kEditBoxInputModeEmailAddr;
    private final int kEditBoxInputModeNumeric;
    private final int kEditBoxInputModePhoneNumber;
    private final int kEditBoxInputModeSingleLine;
    private final int kEditBoxInputModeUrl;
    private final int kKeyboardReturnTypeDefault;
    private final int kKeyboardReturnTypeDone;
    private final int kKeyboardReturnTypeGo;
    private final int kKeyboardReturnTypeNext;
    private final int kKeyboardReturnTypeSearch;
    private final int kKeyboardReturnTypeSend;
    private int mInputFlagConstraints;
    private int mInputModeConstraints;
    private int mMaxLength;
    private float mScaleX;

    public Cocos2dxEditBox(Context context) {
        super(context);
        this.kEditBoxInputModeAny = 0;
        this.kEditBoxInputModeEmailAddr = 1;
        this.kEditBoxInputModeNumeric = 2;
        this.kEditBoxInputModePhoneNumber = 3;
        this.kEditBoxInputModeUrl = 4;
        this.kEditBoxInputModeDecimal = 5;
        this.kEditBoxInputModeSingleLine = 6;
        this.kEditBoxInputFlagPassword = 0;
        this.kEditBoxInputFlagSensitive = 1;
        this.kEditBoxInputFlagInitialCapsWord = 2;
        this.kEditBoxInputFlagInitialCapsSentence = 3;
        this.kEditBoxInputFlagInitialCapsAllCharacters = 4;
        this.kEditBoxInputFlagLowercaseAllCharacters = 5;
        this.kKeyboardReturnTypeDefault = 0;
        this.kKeyboardReturnTypeDone = 1;
        this.kKeyboardReturnTypeSend = 2;
        this.kKeyboardReturnTypeSearch = 3;
        this.kKeyboardReturnTypeGo = 4;
        this.kKeyboardReturnTypeNext = 5;
        this.changedTextProgrammatically = Boolean.FALSE;
        this.endAction = 0;
    }

    public Boolean getChangedTextProgrammatically() {
        return this.changedTextProgrammatically;
    }

    public float getOpenGLViewScaleX() {
        return this.mScaleX;
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i3, KeyEvent keyEvent) {
        if (i3 != 4) {
            return super.onKeyDown(i3, keyEvent);
        }
        ((Cocos2dxActivity) getContext()).getGLSurfaceView().requestFocus();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i3, KeyEvent keyEvent) {
        return super.onKeyPreIme(i3, keyEvent);
    }

    public void setChangedTextProgrammatically(Boolean bool) {
        this.changedTextProgrammatically = bool;
    }

    public void setEditBoxViewRect(int i3, int i4, int i5, int i6) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i3;
        layoutParams.topMargin = i4;
        layoutParams.width = i5;
        layoutParams.height = i6;
        layoutParams.gravity = 51;
        setLayoutParams(layoutParams);
    }

    public void setInputFlag(int i3) {
        if (i3 == 0) {
            this.mInputFlagConstraints = 129;
            setTypeface(Typeface.DEFAULT);
            setTransformationMethod(new PasswordTransformationMethod());
        } else if (i3 == 1) {
            this.mInputFlagConstraints = 524288;
        } else if (i3 == 2) {
            this.mInputFlagConstraints = 8192;
        } else if (i3 == 3) {
            this.mInputFlagConstraints = 16384;
        } else if (i3 == 4) {
            this.mInputFlagConstraints = 4096;
        } else if (i3 == 5) {
            this.mInputFlagConstraints = 1;
        }
        setInputType(this.mInputFlagConstraints | this.mInputModeConstraints);
    }

    public void setInputMode(int i3) {
        setTextHorizontalAlignment(0);
        setTextVerticalAlignment(1);
        switch (i3) {
            case 0:
                setTextVerticalAlignment(0);
                this.mInputModeConstraints = 131073;
                break;
            case 1:
                this.mInputModeConstraints = 33;
                break;
            case 2:
                this.mInputModeConstraints = InputDeviceCompat.SOURCE_TOUCHSCREEN;
                break;
            case 3:
                this.mInputModeConstraints = 3;
                break;
            case 4:
                this.mInputModeConstraints = 17;
                break;
            case 5:
                this.mInputModeConstraints = 12290;
                break;
            case 6:
                this.mInputModeConstraints = 1;
                break;
        }
        setInputType(this.mInputModeConstraints | this.mInputFlagConstraints);
    }

    public void setMaxLength(int i3) {
        this.mMaxLength = i3;
        setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.mMaxLength)});
    }

    public void setMultilineEnabled(boolean z2) {
        this.mInputModeConstraints |= 131072;
    }

    public void setOpenGLViewScaleX(float f) {
        this.mScaleX = f;
    }

    public void setReturnType(int i3) {
        if (i3 == 0) {
            setImeOptions(268435457);
            return;
        }
        if (i3 == 1) {
            setImeOptions(268435462);
            return;
        }
        if (i3 == 2) {
            setImeOptions(268435460);
            return;
        }
        if (i3 == 3) {
            setImeOptions(268435459);
            return;
        }
        if (i3 == 4) {
            setImeOptions(268435458);
        } else if (i3 != 5) {
            setImeOptions(268435457);
        } else {
            setImeOptions(268435461);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x000c  */
    public void setTextHorizontalAlignment(int i3) {
        int i4;
        int gravity = getGravity();
        if (i3 == 0) {
            i4 = (gravity & (-6)) | 3;
        } else if (i3 == 1) {
            i4 = (gravity & (-8)) | 1;
        } else if (i3 != 2) {
            i4 = (gravity & (-6)) | 3;
        } else {
            i4 = (gravity & (-4)) | 5;
        }
        setGravity(i4);
    }

    public void setTextVerticalAlignment(int i3) {
        int i4;
        int gravity = getGravity();
        int padding = Cocos2dxEditBoxHelper.getPadding(this.mScaleX);
        if (i3 == 0) {
            setPadding(padding, (padding * 3) / 4, 0, 0);
            i4 = (gravity & (-81)) | 48;
        } else if (i3 == 1 || i3 != 2) {
            setPadding(padding, 0, 0, padding / 2);
            i4 = (gravity & (-113)) | 16;
        } else {
            i4 = (gravity & (-49)) | 80;
        }
        setGravity(i4);
    }
}
