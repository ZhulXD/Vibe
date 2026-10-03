package H;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements TextWatcher {
    public final EditText b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public h f1052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1053d = true;

    public i(EditText editText) {
        this.b = editText;
    }

    public static void a(EditText editText, int i3) {
        int length;
        if (i3 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
            if (editableText == null) {
                length = 0;
            } else {
                jVarA.getClass();
                length = editableText.length();
            }
            jVarA.e(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) throws Throwable {
        EditText editText = this.b;
        if (editText.isInEditMode() || !this.f1053d || androidx.emoji2.text.j.f2876k == null || i4 > i5 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iB = androidx.emoji2.text.j.a().b();
        if (iB != 0) {
            if (iB == 1) {
                androidx.emoji2.text.j.a().e((Spannable) charSequence, i3, i5 + i3);
                return;
            } else if (iB != 3) {
                return;
            }
        }
        androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
        if (this.f1052c == null) {
            this.f1052c = new h(editText);
        }
        jVarA.f(this.f1052c);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
    }
}
