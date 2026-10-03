package p010d1;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.core.view.ViewCompat;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x implements TextWatcher {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditText f3977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f3978d;

    public x(TextInputLayout textInputLayout, EditText editText) {
        this.f3978d = textInputLayout;
        this.f3977c = editText;
        this.b = editText.getLineCount();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f3978d;
        textInputLayout.u(!textInputLayout.f3560B0, false);
        if (textInputLayout.f3600l) {
            textInputLayout.n(editable);
        }
        if (textInputLayout.f3613t) {
            textInputLayout.v(editable);
        }
        EditText editText = this.f3977c;
        int lineCount = editText.getLineCount();
        int i3 = this.b;
        if (lineCount != i3) {
            if (lineCount < i3) {
                int minimumHeight = ViewCompat.getMinimumHeight(editText);
                int i4 = textInputLayout.f3616u0;
                if (minimumHeight != i4) {
                    editText.setMinimumHeight(i4);
                }
            }
            this.b = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
    }
}
