package org.libsdl.app;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class DummyEdit extends View implements View.OnKeyListener {
    InputConnection ic;

    public DummyEdit(Context context) {
        super(context);
        setFocusableInTouchMode(true);
        setFocusable(true);
        setOnKeyListener(this);
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return true;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        SDLInputConnection sDLInputConnection = new SDLInputConnection(this, true);
        this.ic = sDLInputConnection;
        editorInfo.inputType = 131073;
        editorInfo.imeOptions = 301989894;
        return sDLInputConnection;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i3, KeyEvent keyEvent) {
        return SDLActivity.handleKeyEvent(view, i3, keyEvent, this.ic);
    }

    @Override // android.view.View
    public boolean onKeyPreIme(int i3, KeyEvent keyEvent) {
        DummyEdit dummyEdit;
        if (keyEvent.getAction() == 1 && i3 == 4 && (dummyEdit = SDLActivity.mTextEdit) != null && dummyEdit.getVisibility() == 0) {
            SDLActivity.onNativeKeyboardFocusLost();
        }
        return super.onKeyPreIme(i3, keyEvent);
    }
}
