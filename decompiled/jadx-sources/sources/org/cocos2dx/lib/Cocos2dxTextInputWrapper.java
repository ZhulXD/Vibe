package org.cocos2dx.lib;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxTextInputWrapper implements TextWatcher, TextView.OnEditorActionListener {
    private static final String TAG = "Cocos2dxTextInputWrapper";
    private final Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
    private String mOriginText;
    private String mText;

    public Cocos2dxTextInputWrapper(Cocos2dxGLSurfaceView cocos2dxGLSurfaceView) {
        this.mCocos2dxGLSurfaceView = cocos2dxGLSurfaceView;
    }

    private boolean isFullScreenEdit() {
        return ((InputMethodManager) this.mCocos2dxGLSurfaceView.getCocos2dxEditText().getContext().getSystemService("input_method")).isFullscreenMode();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (isFullScreenEdit()) {
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < this.mText.length() && i4 < editable.length() && this.mText.charAt(i3) == editable.charAt(i4)) {
            i3++;
            i4++;
        }
        while (i3 < this.mText.length()) {
            this.mCocos2dxGLSurfaceView.deleteBackward();
            i3++;
        }
        if (editable.length() - i4 > 0) {
            this.mCocos2dxGLSurfaceView.insertText(editable.subSequence(i4, editable.length()).toString());
        }
        this.mText = editable.toString();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        this.mText = charSequence.toString();
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
        if (this.mCocos2dxGLSurfaceView.getCocos2dxEditText() == textView && isFullScreenEdit()) {
            String str = this.mOriginText;
            if (str != null) {
                for (int length = str.length(); length > 0; length--) {
                    this.mCocos2dxGLSurfaceView.deleteBackward();
                }
            }
            String string = textView.getText().toString();
            if (string != null) {
                if (string.compareTo("") == 0) {
                    string = "\n";
                }
                if ('\n' != string.charAt(string.length() - 1)) {
                    string = string.concat("\n");
                }
            }
            this.mCocos2dxGLSurfaceView.insertText(string);
        }
        if (i3 != 6) {
            return false;
        }
        this.mCocos2dxGLSurfaceView.requestFocus();
        return false;
    }

    public void setOriginText(String str) {
        this.mOriginText = str;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
    }
}
