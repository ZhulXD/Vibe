package org.godotengine.godot.input;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import org.godotengine.godot.GodotRenderView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotTextInputWrapper implements TextWatcher, TextView.OnEditorActionListener {
    private static final String TAG = "GodotTextInputWrapper";
    private final GodotEditText mEdit;
    private boolean mHasSelection;
    private String mOriginText;
    private final GodotRenderView mRenderView;

    public GodotTextInputWrapper(GodotRenderView godotRenderView, GodotEditText godotEditText) {
        this.mRenderView = godotRenderView;
        this.mEdit = godotEditText;
    }

    private boolean isFullScreenEdit() {
        return ((InputMethodManager) this.mEdit.getContext().getSystemService("input_method")).isFullscreenMode();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        for (int i6 = 0; i6 < i4; i6++) {
            this.mRenderView.getInputHandler().handleKeyEvent(67, 0, 0, true, false);
            this.mRenderView.getInputHandler().handleKeyEvent(67, 0, 0, false, false);
            if (this.mHasSelection) {
                this.mHasSelection = false;
                return;
            }
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
        String characters;
        if (this.mEdit == textView && isFullScreenEdit() && keyEvent != null && (characters = keyEvent.getCharacters()) != null) {
            for (int i4 = 0; i4 < characters.length(); i4++) {
                int iCodePointAt = characters.codePointAt(i4);
                this.mRenderView.getInputHandler().handleKeyEvent(0, iCodePointAt, 0, true, false);
                this.mRenderView.getInputHandler().handleKeyEvent(0, iCodePointAt, 0, false, false);
            }
        }
        if (i3 != 6) {
            return false;
        }
        this.mRenderView.getInputHandler().handleKeyEvent(66, 0, 0, true, false);
        this.mRenderView.getInputHandler().handleKeyEvent(66, 0, 0, false, false);
        this.mRenderView.getView().requestFocus();
        return true;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        int[] iArr = new int[i5];
        for (int i6 = i3; i6 < i3 + i5; i6++) {
            iArr[i6 - i3] = charSequence.charAt(i6);
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = iArr[i7];
            if (i8 != 10 || this.mEdit.getKeyboardType() == GodotEditText.VirtualKeyboardType.KEYBOARD_TYPE_MULTILINE) {
                this.mRenderView.getInputHandler().handleKeyEvent(0, i8, 0, true, false);
                this.mRenderView.getInputHandler().handleKeyEvent(0, i8, 0, false, false);
            }
        }
    }

    public void setOriginText(String str) {
        this.mOriginText = str;
    }

    public void setSelection(boolean z2) {
        this.mHasSelection = z2;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }
}
