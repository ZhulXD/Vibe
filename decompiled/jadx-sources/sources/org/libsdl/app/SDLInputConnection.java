package org.libsdl.app;

import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class SDLInputConnection extends BaseInputConnection {
    protected String mCommittedText;
    protected EditText mEditText;

    public SDLInputConnection(View view, boolean z2) {
        super(view, z2);
        this.mCommittedText = "";
        this.mEditText = new EditText(SDL.getContext());
    }

    public static native void nativeCommitText(String str, int i3);

    public static native void nativeGenerateScancodeForUnichar(char c3);

    public static native void nativeSetComposingText(String str, int i3);

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i3) {
        if (!super.commitText(charSequence, i3)) {
            return false;
        }
        updateText();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i3, int i4) {
        if (!super.deleteSurroundingText(i3, i4)) {
            return false;
        }
        updateText();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public Editable getEditable() {
        return this.mEditText.getEditableText();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i3) {
        if (i3 != 6 && i3 != 2 && i3 != 3 && i3 != 4) {
            return super.performEditorAction(i3);
        }
        if (SDLActivity.onNativeSoftReturnKey()) {
            return true;
        }
        SDLActivity.onNativeKeyDown(66);
        SDLActivity.onNativeKeyUp(66);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 66) {
            return super.sendKeyEvent(keyEvent);
        }
        if (SDLActivity.onNativeSoftReturnKey()) {
            return true;
        }
        if (keyEvent.getAction() == 0) {
            SDLActivity.onNativeKeyDown(66);
        } else if (keyEvent.getAction() == 1) {
            SDLActivity.onNativeKeyUp(66);
        }
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i3) {
        if (!super.setComposingText(charSequence, i3)) {
            return false;
        }
        updateText();
        return true;
    }

    public void updateText() {
        int iCharCount;
        Editable editable = getEditable();
        if (editable == null) {
            return;
        }
        String string = editable.toString();
        int iMin = Math.min(string.length(), this.mCommittedText.length());
        int iCharCount2 = 0;
        while (iCharCount2 < iMin) {
            int iCodePointAt = this.mCommittedText.codePointAt(iCharCount2);
            if (iCodePointAt != string.codePointAt(iCharCount2)) {
                break;
            } else {
                iCharCount2 += Character.charCount(iCodePointAt);
            }
        }
        int iCharCount3 = iCharCount2;
        while (iCharCount3 < this.mCommittedText.length()) {
            int iCodePointAt2 = this.mCommittedText.codePointAt(iCharCount3);
            nativeGenerateScancodeForUnichar('\b');
            iCharCount3 += Character.charCount(iCodePointAt2);
        }
        if (iCharCount2 < string.length()) {
            String string2 = string.subSequence(iCharCount2, string.length()).toString();
            int i3 = 0;
            while (i3 < string2.length()) {
                int iCodePointAt3 = string2.codePointAt(i3);
                if (iCodePointAt3 != 10) {
                    if (iCodePointAt3 < 128) {
                        nativeGenerateScancodeForUnichar((char) iCodePointAt3);
                    }
                    iCharCount = Character.charCount(iCodePointAt3);
                } else {
                    if (SDLActivity.onNativeSoftReturnKey()) {
                        return;
                    }
                    SDLActivity.onNativeKeyDown(66);
                    SDLActivity.onNativeKeyUp(66);
                    iCharCount = Character.charCount(iCodePointAt3);
                }
                i3 += iCharCount;
            }
            nativeCommitText(string2, 0);
        }
        this.mCommittedText = string;
    }
}
