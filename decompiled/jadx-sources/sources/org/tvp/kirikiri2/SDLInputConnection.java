package org.tvp.kirikiri2;

import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class SDLInputConnection extends BaseInputConnection {
    public SDLInputConnection(View view, boolean z2) {
        super(view, z2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i3) {
        KR2Activity.nativeCommitText(charSequence.toString(), i3);
        return super.commitText(charSequence, i3);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i3, int i4) {
        if (i3 == 1 && i4 == 0) {
            return super.sendKeyEvent(new KeyEvent(0, 67)) && super.sendKeyEvent(new KeyEvent(1, 67));
        }
        return super.deleteSurroundingText(i3, i4);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            if (keyEvent.getAction() != 1) {
                return super.sendKeyEvent(keyEvent);
            }
            if (keyCode == 67) {
                KR2Activity.nativeKeyAction(keyCode, false);
            }
            return true;
        }
        if (keyEvent.isPrintingKey()) {
            commitText(String.valueOf((char) keyEvent.getUnicodeChar()), 1);
            KR2Activity.nativeCharInput(keyCode);
        } else if (keyCode == 67) {
            KR2Activity.nativeKeyAction(keyCode, true);
        }
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i3) {
        return super.setComposingText(charSequence, i3);
    }
}
